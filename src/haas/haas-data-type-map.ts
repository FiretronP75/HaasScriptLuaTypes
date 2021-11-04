import { HaasDataType } from './haas-data-type';

export const haasDataTypeMap = new Map<number, string>(
  [
    [HaasDataType.String, 'string'],
    [HaasDataType.Number, 'number'],
    [HaasDataType.Enum, 'Enum'],
    [HaasDataType.Boolean, 'boolean'],
    [HaasDataType.Dynamic, 'any'],
    [HaasDataType.NumberOrTable, 'number | table'],
    [HaasDataType.ListNumbers, 'number[]'],
    [HaasDataType.ListDynamic, 'any[]'],
    [HaasDataType.Function, 'function'],
    [HaasDataType.Void, 'void'],
    [HaasDataType.Connector, 'any'], // (not used)
    [HaasDataType.DynamicParams, 'any'], // (vararg)
    [HaasDataType.EnumParams, 'Enum[]'],
    [HaasDataType.BooleanParams, 'boolean[]'],
    [HaasDataType.StringParams, 'string[]'], // (not used)
    [HaasDataType.NumberParams, 'number[]'], // (not used)
    [HaasDataType.ListNumberParams, 'number[][]'], // (not used)
    [HaasDataType.NumberOrTableParams, 'number[] | table'],
  ],
);
