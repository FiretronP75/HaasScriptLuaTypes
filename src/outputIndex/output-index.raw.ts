import { HaasDataType } from '../haas/haas-data-type';

export interface OutputIndexRaw {

  AllowNull: boolean;
  Description: string;
  Index: number;
  IsField: boolean;
  IsHidden: boolean;
  IsRequired: boolean;
  Name: string;
  Suggestion: number[];
  Type: HaasDataType;

}
