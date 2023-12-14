import { HaasCommandParameterType } from '../haas/haas-command-parameter-type';

export interface OutputIndexRaw {

  AllowNull: boolean;
  Description: string;
  Index: number;
  IsField: boolean;
  IsHidden: boolean;
  IsRequired: boolean;
  Name: string;
  ScriptType?: string | null;
  Suggestion: number[];
  Type: HaasCommandParameterType;

}
