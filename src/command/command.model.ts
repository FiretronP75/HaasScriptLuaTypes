import { HaasCommandCategory } from '../haas/haas-command-category';
import { HaasCommandGroup }    from '../haas/haas-command-group';
import { HaasCommandType }     from '../haas/haas-command-type';
import { HaasDataType }        from '../haas/haas-data-type';
import { haasDataTypeMap }     from '../haas/haas-data-type-map';
import { OutputIndexModel }    from '../outputIndex/output-index.model';
import { ParameterModel }      from '../parameter/parameter.model';
import { CommandRaw }          from './command.raw';

export class CommandModel {

  public static mapAll(rawList?: CommandRaw[]): CommandModel[] {
    if (!rawList) return [];

    return rawList.map(CommandModel.mapOne);
  }

  public static mapOne(raw?: CommandRaw): CommandModel {
    return new CommandModel(raw);
  }

  public readonly category: HaasCommandCategory;
  public readonly description: string;
  public readonly group: HaasCommandGroup;
  public readonly isEnumeration: boolean;
  public readonly isValid: boolean;
  public readonly name: string;
  public readonly optionalParameterList: ParameterModel[];
  public readonly optionalParameterObjectName: string;
  public readonly outputDescription: string;
  public readonly outputIndexList: OutputIndexModel[];
  public readonly outputGroupIdList: number[];
  public readonly outputType: HaasDataType;
  public readonly outputTypeName: string;
  public readonly parameterList: ParameterModel[];
  public readonly requiredParameterList: ParameterModel[];
  public readonly type: HaasCommandType;

  constructor(raw?: CommandRaw) {

    if (raw === undefined) {
      this.category                    = 0;
      this.description                 = '';
      this.group                       = 0;
      this.isEnumeration               = false;
      this.isValid                     = false;
      this.name                        = '';
      this.optionalParameterList       = [];
      this.optionalParameterObjectName = '';
      this.outputDescription           = '';
      this.outputIndexList             = [];
      this.outputGroupIdList           = [];
      this.outputType                  = 0;
      this.outputTypeName              = '';
      this.parameterList               = [];
      this.requiredParameterList       = [];
      this.type                        = 0;
      return;
    }

    this.category                    = raw.Category;
    this.description                 = raw.Description;
    this.group                       = raw.Command;
    this.isEnumeration               = raw.IsConstant;
    this.isValid                     =
      raw.IsValid === undefined
        ? true
        : raw.IsValid;
    this.name                        = raw.CommandName;
    this.optionalParameterObjectName = this.getOptionalParameterObjectName(this.name);
    this.outputDescription           = raw.ReturnDescription || '';
    this.outputIndexList             = OutputIndexModel.mapAll(raw.OutputIndex);
    this.outputGroupIdList           = raw.OutputSuggestions || [];
    this.outputType                  = raw.OutputType;
    this.outputTypeName              = this.getOutputTypeName(this.name, this.outputIndexList.length, this.outputType);
    this.parameterList               = ParameterModel.mapAll(raw.Parameters);
    this.optionalParameterList       = this.parameterList.filter(this.filterOptional);
    this.requiredParameterList       = this.parameterList.filter(this.filterRequired);
    this.type                        = raw.CommandType;
  }

  protected getOptionalParameterObjectName(name: string): string {
    return `OptionalParametersOf_${name}`;
  }

  protected getOutputTypeName(name: string, outputIndexListLength: number, outputType: number): string {
    return outputIndexListLength > 0
      ? `ResultOf_${name}`
      : haasDataTypeMap.get(outputType) as string;
  }

  protected filterOptional(parameterItem: ParameterModel): boolean {
    return !parameterItem.isRequired && parameterItem.type !== HaasDataType.DynamicParams;
  }

  protected filterRequired(parameterItem: ParameterModel): boolean {
    return parameterItem.isRequired;
  }

}
