import { DocumentService }         from '../document/document.service';
import { SavedResponseService }    from '../saved-response/saved-response.service';
import { CommandWrapperRaw }       from './command-wrapper.raw';
import { CommandModel }            from './command.model';
import { CommandRaw }              from './command.raw';
import { commandProductionSample } from './sample/command-production.sample';
import { commandStagingSample }    from './sample/command-staging.sample';

export class CommandService {

  public commandList: CommandModel[] = [];

  protected readonly documentService: DocumentService;
  protected readonly groupIdToNameListMap = new Map<number, string[]>();
  protected readonly isProduction: boolean;
  protected readonly savedResponsePath: string;

  constructor(documentService: DocumentService, isProduction: boolean, savedResponsePath: string) {

    this.documentService   = documentService;
    this.isProduction      = isProduction;
    this.savedResponsePath = savedResponsePath;
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

  public loadCommands(): void {

    const startTime = new Date();

    console.log('Loading command list from', this.savedResponsePath);

    try {
      const saved = SavedResponseService.read<CommandWrapperRaw | CommandRaw[]>(this.savedResponsePath);

      if (Array.isArray(saved)) {
        this.handleSuccess({Data: saved, Error: '', Success: true}, startTime);
      } else if (saved.Success) {
        this.handleSuccess(saved, startTime);
      } else {
        this.handleFailure(saved.Error, startTime);
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
    console.error('Saved command response error:', error);
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
        if (this.groupIdToNameListMap.has(commandItem.type)) {
          this.groupIdToNameListMap.get(commandItem.type)!.push(commandItem.name);
        } else {
          this.groupIdToNameListMap.set(commandItem.type, [commandItem.name]);
        }
      },
    );
  }

}
