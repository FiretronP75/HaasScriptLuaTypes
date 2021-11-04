import axios, { AxiosResponse }    from 'axios';
import { DocumentService }         from '../document/document.service';
import { commandProductionSample } from './command-production.sample';
import { commandStagingSample }    from './command-staging.sample';
import { CommandWrapperRaw }       from './command-wrapper.raw';
import { CommandModel }            from './command.model';

export class CommandService {

  protected static readonly PRODUCTION_API_URL: string = 'https://api.haasbot.com/HaasScriptAPI.php?channel=GET_COMMANDS';
  protected static readonly STAGING_API_URL: string    = 'https://api.haasstage.com/HaasScriptAPI.php?channel=GET_COMMANDS';

  public commandList: CommandModel[] = [];

  protected readonly documentService: DocumentService;
  protected readonly groupIdToNameListMap = new Map<number, string[]>();
  protected readonly interfaceKey: string;
  protected readonly isProduction: boolean;
  protected readonly userId: string;

  constructor(documentService: DocumentService, isProduction: boolean, interfaceKey: string, userId: string) {

    this.documentService = documentService;
    this.interfaceKey    = interfaceKey;
    this.isProduction    = isProduction;
    this.userId          = userId;
  }

  public getNameListForGroupIdList(groupIdList: number[]): string[] {
    let nameList: string[] = [];

    groupIdList.forEach(
      (groupId: number) => {
        nameList = nameList.concat(this.getNameListForGroupId(groupId));
      },
    );

    return nameList;
  }

  public async loadCommands(): Promise<void> {

    const startTime = new Date();

    const url: string = this.isProduction
      ? CommandService.PRODUCTION_API_URL
      : CommandService.STAGING_API_URL;

    const data: object = {
      interfacekey: this.interfaceKey,
      userid      : this.userId,
    };

    console.log('Loading command list from', url);

    try {
      const response: AxiosResponse<CommandWrapperRaw> = await axios.post<CommandWrapperRaw>(url, data);

      if (response.data.Success) {
        this.handleSuccess(response.data, startTime);
      } else {
        this.handleFailure(response.data.Error, startTime);
      }

    } catch (error) {

      this.handleFailure(error, startTime);
    }
  }

  protected getNameListForGroupId(groupId: number): string[] {

    const nameList: string[] | undefined = this.groupIdToNameListMap.get(groupId);

    return nameList === undefined
      ? []
      : nameList;
  }

  protected handleFailure(error: any, startTime): void {
    console.error('Command API Error:', error);
    console.warn('Using previously saved command data.');

    const commandSample = this.isProduction
      ? commandProductionSample
      : commandStagingSample;

    this.handleSuccess(
      {
        Data   : commandSample,
        Error  : '',
        Success: true,
      },
      startTime,
    );
  }

  protected handleSuccess(data: CommandWrapperRaw, startTime: Date): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    console.log(`Command list loaded. (${duration.toLocaleString()} ms)`);

    this.documentService.setCommandSample(data.Data, this.isProduction);
    this.commandList = CommandModel.mapAll(data.Data);
    this.setGroups();
  }

  protected setGroups(): void {

    this.commandList.forEach(
      (commandItem: CommandModel) => {
        if (this.groupIdToNameListMap.has(commandItem.group)) {
          this.groupIdToNameListMap.get(commandItem.group)!.push(commandItem.name);
        } else {
          this.groupIdToNameListMap.set(commandItem.group, [commandItem.name]);
        }
      },
    );
  }

}
