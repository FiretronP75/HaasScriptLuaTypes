import { CommandRaw } from './command.raw';

export interface CommandWrapperRaw {

  Data: CommandRaw[];
  Error: string;
  Success: boolean;

}
