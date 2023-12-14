import { HaasCommandCategory }      from '../haas/haas-command-category';
import { HaasCommandParameterType } from '../haas/haas-command-parameter-type';
import { HaasCommandSyntaxType }    from '../haas/haas-command-syntax-type';
import { HaasCommandType }          from '../haas/haas-command-type';
import { OutputIndexRaw }           from '../outputIndex/output-index.raw';
import { ParameterRaw }             from '../parameter/parameter.raw';

export interface CommandRaw {

  Category: HaasCommandCategory;
  ChangeTypes: null[];
  Command: HaasCommandType;
  CommandName: string;
  CommandType: HaasCommandSyntaxType;
  Description: string;
  IsConstant: boolean;
  IsPrimary: boolean;
  IsValid?: boolean;
  OutputHidden: boolean;
  OutputIndex: OutputIndexRaw[];
  OutputSuggestions: number[] | null;
  OutputType: HaasCommandParameterType;
  Parameters: ParameterRaw[];
  RequiresCall: boolean;
  Resizable: boolean;
  ReturnDescription: string | null;
  ScriptId?: string;

}
