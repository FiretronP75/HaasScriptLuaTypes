import { SavedResponseChannel } from '../saved-response/saved-response-channel';
import { SavedResponseService } from '../saved-response/saved-response.service';
import { CommandModel }         from './command.model';
import { CommandRaw }           from './command.raw';

export class CommandService {

  public commandList: CommandModel[] = [];

  protected readonly groupIdToNameListMap = new Map<number, string[]>();
  protected readonly savedResponseService: SavedResponseService;

  constructor(savedResponseService: SavedResponseService) {

    this.savedResponseService = savedResponseService;
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

    console.log('Loading command list');

    this.handleSuccess(this.extractCommands(this.savedResponseService.getData(SavedResponseChannel.Command)), startTime);
  }

  protected extractCommands(data: any): CommandRaw[] {

    if (!this.isCommandRawList(data)) {
      throw this.savedResponseService.unexpectedDataMessage(SavedResponseChannel.Command);
    }

    return data;
  }

  protected getNameListForGroupId(groupId: number): string[] {

    const nameList: string[] | undefined = this.groupIdToNameListMap.get(groupId);

    return nameList === undefined
      ? []
      : nameList;
  }

  protected isCommandRawList(candidate: any): candidate is CommandRaw[] {

    return Array.isArray(candidate)
      && candidate.length > 0
      && candidate.every((item: any) => typeof item?.CommandName === 'string');
  }

  protected handleSuccess(commandRawList: CommandRaw[], startTime: Date): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    console.log(`Command list loaded. (${duration.toLocaleString()} ms)`);

    this.commandList = CommandModel.mapAll(commandRawList);
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
