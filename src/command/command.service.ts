import { SavedResponseService } from '../saved-response/saved-response.service';
import { CommandModel }         from './command.model';
import { CommandRaw }           from './command.raw';

export class CommandService {

  public commandList: CommandModel[] = [];

  protected readonly groupIdToNameListMap = new Map<number, string[]>();
  protected readonly savedResponsePath: string;

  constructor(savedResponsePath: string) {

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

    this.handleSuccess(this.extractCommands(SavedResponseService.read(this.savedResponsePath)), startTime);
  }

  /** Accepts the whole GET_COMMANDS response or the bare list of commands. */
  protected extractCommands(saved: any): CommandRaw[] {

    if (saved?.Success === false) {
      throw SavedResponseService.failedResponseMessage(this.savedResponsePath);
    }

    const commandRawList = saved?.Data ?? saved;

    if (!this.isCommandRawList(commandRawList)) {
      throw `The file "${this.savedResponsePath}" is not the GET_COMMANDS response. Check that you saved the right response in the right file, then try again.`;
    }

    return commandRawList;
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
