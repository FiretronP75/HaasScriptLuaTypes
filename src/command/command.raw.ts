import { HaasCommandCategory } from '../haas/haas-command-category';
import { HaasCommandGroup }    from '../haas/haas-command-group';
import { HaasCommandType }     from '../haas/haas-command-type';
import { HaasDataType }        from '../haas/haas-data-type';
import { OutputIndexRaw }      from '../outputIndex/output-index.raw';
import { ParameterRaw }        from '../parameter/parameter.raw';

export interface CommandRaw {

  Category: HaasCommandCategory;
  ChangeTypes: null[];
  Command: HaasCommandGroup;
  CommandName: string;
  CommandType: HaasCommandType;
  Description: string;
  IsConstant: boolean;
  IsPrimary: boolean;
  IsValid?: boolean;
  OutputHidden: boolean;
  OutputIndex: OutputIndexRaw[];
  OutputSuggestions: number[] | null;
  OutputType: HaasDataType;
  Parameters: ParameterRaw[];
  RequiresCall: boolean;
  Resizable: boolean;
  ReturnDescription: string | null;
  ScriptId?: string;

}
