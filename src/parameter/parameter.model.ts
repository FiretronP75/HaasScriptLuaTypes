import { HaasDataType }    from '../haas/haas-data-type';
import { haasDataTypeMap } from '../haas/haas-data-type-map';
import { ParameterRaw }    from './parameter.raw';

export class ParameterModel {

  public static mapAll(rawList?: ParameterRaw[]): ParameterModel[] {
    if (!rawList) return [];

    return rawList.map(ParameterModel.mapOne);
  }

  public static mapOne(raw?: ParameterRaw): ParameterModel {
    return new ParameterModel(raw);
  }

  public readonly description: string;
  public readonly groupIdList: number[];
  public readonly isRequired: boolean;
  public readonly name: string;
  public readonly type: HaasDataType;
  public readonly typeName: string;

  constructor(raw?: ParameterRaw) {

    if (raw === undefined) {
      this.description = '';
      this.groupIdList = [];
      this.isRequired  = false;
      this.name        = '';
      this.type        = 0;
      this.typeName    = '';
      return;
    }

    this.description = raw.Description;
    this.groupIdList = raw.Suggestion;
    this.isRequired  = raw.IsRequired;
    this.name        = this.cleanName(raw.Name);
    this.type        = raw.Type;
    this.typeName    = haasDataTypeMap.get(raw.Type) as string;
  }

  protected cleanName(name: string): string {
    let replaceValue;
    let searchValue;
    let cleanedName = name;

    searchValue  = 'color/options';
    replaceValue = 'colorOrOptions';
    cleanedName  = cleanedName.replace(searchValue, replaceValue);

    searchValue  = 'end';
    replaceValue = 'endValue';
    cleanedName  = cleanedName.replace(searchValue, replaceValue);

    searchValue  = / +/g;
    replaceValue = '_';
    cleanedName  = cleanedName.replace(searchValue, replaceValue);

    searchValue  = '[]';
    replaceValue = '';
    cleanedName  = cleanedName.replace(searchValue, replaceValue);

    return cleanedName;
  }

}
