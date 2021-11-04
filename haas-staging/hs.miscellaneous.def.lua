--- Miscellaneous

--- The optional parameters of CustomReport.
--- @shape OptionalParametersOf_CustomReport
--- @field group string | nil The name of the report. By default its 'Custom Report'.
--- @field displayValue boolean | nil When set on true, this value will be visible on the bot list in the UI.'.

--- Creates an item in the bots custom reports.
--- @param key string The name of the item.
--- @param value any The value of the item.
--- @param group string Optional - The name of the report. By default its 'Custom Report'.
--- @param displayValue boolean Optional - When set on true, this value will be visible on the bot list in the UI.'.
--- @return void
--- @overload fun(key: string, value: any): void
--- @overload fun(key: string, value: any, group: string): void
--- @overload fun(key: string, value: any, optionalParameters: OptionalParametersOf_CustomReport): void
function CustomReport(key, value, group, displayValue) end

--- Gets a command by name.
--- @param name string The name of the command.
--- @return any Returns the command.
function GetCommand(name) end

--- Gets the data type of the input.
--- @param value any The input value.
--- @return Enum Returns the data type. Output Suggestions: Equals
function GetType(value) end

--- The optional parameters of HNC.
--- @shape OptionalParametersOf_HNC
--- @field size number | nil The size of the array. Default 0.
--- @field value number | nil The default value when size is set. Default is 0.

--- HNC is an array on which match can be applied directly. This is not position with the lua code `{}`.
--- @param size number Optional - The size of the array. Default 0.
--- @param value number Optional - The default value when size is set. Default is 0.
--- @return number[] Returns an array with or without values. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(size: number): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HNC): number[]
function HNC(size, value) end

