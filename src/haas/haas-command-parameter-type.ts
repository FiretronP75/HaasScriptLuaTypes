export enum HaasCommandParameterType {

  String              = 0,
  Number              = 1,
  Enum                = 2,
  Boolean             = 3,

  Dynamic             = 4,

  NumberOrTable       = 6,

  ListNumbers         = 7,
  ListDynamic         = 8,

  Function            = 9,
  Void                = 10,

  // Used by blocks.
  Connector           = 11,

  DynamicParams       = 100,
  EnumParams          = 101,
  BooleanParams       = 102,
  StringParams        = 103,
  NumberParams        = 104,
  ListNumberParams    = 105,
  NumberOrTableParams = 106,

}
