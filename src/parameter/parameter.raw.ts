import { HaasDataType } from '../haas/haas-data-type';

export interface ParameterRaw {

  AllowNull: boolean;
  Description: string;
  Index: number;
  IsField: boolean;
  IsHidden: boolean;
  IsRequired: boolean;
  Name: string;
  ScriptType?: string | null;
  Suggestion: number[];
  Type: HaasDataType;

}
