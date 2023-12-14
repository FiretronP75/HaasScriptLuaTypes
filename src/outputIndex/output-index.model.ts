import { HaasCommandParameterType } from '../haas/haas-command-parameter-type';
import { HaasDataTypeMapper }       from '../haas/haas-data-type-mapper';
import { OutputIndexRaw }           from './output-index.raw';

export class OutputIndexModel {

  public static mapAll(rawList?: OutputIndexRaw[]): OutputIndexModel[] {
    if (!rawList) return [];

    return rawList.map(OutputIndexModel.mapOne);
  }

  public static mapOne(raw?: OutputIndexRaw): OutputIndexModel {
    return new OutputIndexModel(raw);
  }

  public readonly description: string;
  public readonly groupIdList: number[];
  public readonly isRequired: boolean;
  public readonly name: string;
  public readonly type: HaasCommandParameterType;
  public readonly typeName: string;

  constructor(raw?: OutputIndexRaw) {

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
    this.name        = raw.Name;
    this.type        = raw.Type;
    this.typeName    = HaasDataTypeMapper.map.get(raw.Type) as string;
  }

}
