import { GenerationWarningService } from '../generation-warning/generation-warning.service';
import { HaasCommandParameterType } from './haas-command-parameter-type';

export class HaasDataTypeMapper {

  protected static readonly FALLBACK_TYPE_NAME = 'any';

  public static isFlexNumbers: boolean = true;

  protected static get map(): Map<number, string> {
    return HaasDataTypeMapper.isFlexNumbers
      ? HaasDataTypeMapper.haasDataTypeFlexNumbersMap
      : HaasDataTypeMapper.haasDataTypeNotFlexNumbersMap;
  }

  public static getTypeName(type: number, commandName: string): string {

    const typeName = HaasDataTypeMapper.map.get(type);

    if (typeName !== undefined) return typeName;

    GenerationWarningService.add(
      `"${commandName}" uses a data type this script does not recognize (number ${type}), so it was treated as "${HaasDataTypeMapper.FALLBACK_TYPE_NAME}". The other definitions were created normally.`,
    );

    return HaasDataTypeMapper.FALLBACK_TYPE_NAME;
  }

  protected static readonly haasDataTypeFlexNumbersMap = new Map<number, string>(
    [
      [HaasCommandParameterType.String, 'string'],
      [HaasCommandParameterType.Number, 'number | number[]'],
      [HaasCommandParameterType.Enum, 'Enum'],
      [HaasCommandParameterType.Boolean, 'boolean'],
      [HaasCommandParameterType.Dynamic, 'any'],
      [HaasCommandParameterType.NumberOrTable, 'number | number[] | table'],
      [HaasCommandParameterType.ListNumbers, 'number[]'],
      [HaasCommandParameterType.ListDynamic, 'any[]'],
      [HaasCommandParameterType.Function, 'function'],
      [HaasCommandParameterType.Void, 'void'],
      [HaasCommandParameterType.Connector, 'any'], // (not used)
      [HaasCommandParameterType.DynamicParams, 'any'], // (vararg)
      [HaasCommandParameterType.EnumParams, 'Enum[]'],
      [HaasCommandParameterType.BooleanParams, 'boolean[]'],
      [HaasCommandParameterType.StringParams, 'string[]'], // (not used)
      [HaasCommandParameterType.NumberParams, 'number[]'], // (not used)
      [HaasCommandParameterType.ListNumberParams, 'number[][]'], // (not used)
      [HaasCommandParameterType.NumberOrTableParams, 'number[] | table'],
    ],
  );

  protected static readonly haasDataTypeNotFlexNumbersMap = new Map<number, string>(
    [
      [HaasCommandParameterType.String, 'string'],
      [HaasCommandParameterType.Number, 'number'],
      [HaasCommandParameterType.Enum, 'Enum'],
      [HaasCommandParameterType.Boolean, 'boolean'],
      [HaasCommandParameterType.Dynamic, 'any'],
      [HaasCommandParameterType.NumberOrTable, 'number | table'],
      [HaasCommandParameterType.ListNumbers, 'number[]'],
      [HaasCommandParameterType.ListDynamic, 'any[]'],
      [HaasCommandParameterType.Function, 'function'],
      [HaasCommandParameterType.Void, 'void'],
      [HaasCommandParameterType.Connector, 'any'], // (not used)
      [HaasCommandParameterType.DynamicParams, 'any'], // (vararg)
      [HaasCommandParameterType.EnumParams, 'Enum[]'],
      [HaasCommandParameterType.BooleanParams, 'boolean[]'],
      [HaasCommandParameterType.StringParams, 'string[]'], // (not used)
      [HaasCommandParameterType.NumberParams, 'number[]'], // (not used)
      [HaasCommandParameterType.ListNumberParams, 'number[][]'], // (not used)
      [HaasCommandParameterType.NumberOrTableParams, 'number[] | table'],
    ],
  );

}
