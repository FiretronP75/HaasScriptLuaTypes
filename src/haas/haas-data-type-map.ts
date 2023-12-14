import { HaasCommandParameterType } from './haas-command-parameter-type';

export const haasDataTypeMap = new Map<number, string>(
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
