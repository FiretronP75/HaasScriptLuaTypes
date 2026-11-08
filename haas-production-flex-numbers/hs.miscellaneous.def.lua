--- Miscellaneous

--- The optional parameters of CustomReport.
--- @shape OptionalParametersOf_CustomReport
--- @field group string | nil The report group name. Defaults to 'Custom Report'. Use 'Override' to override a standard bot report field (e.g. CustomReport("RealizedProfit", myValue, "Override")).
--- @field displayValue boolean | nil When set to true, this value will be visible on the bot list in the UI.

--- Creates an item in the bot's custom reports. Use group="Override" to override standard bot report fields (e.g. RealizedProfit, UnrealizedProfit) for both live bots and backtest results.
--- @param key string The name of the item.
--- @param value any The value of the item. May be nil; in the Override group nil clears the override.
--- @param group string Optional - The report group name. Defaults to 'Custom Report'. Use 'Override' to override a standard bot report field (e.g. CustomReport("RealizedProfit", myValue, "Override")).
--- @param displayValue boolean Optional - When set to true, this value will be visible on the bot list in the UI.
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
--- @field size number | number[] | nil The size of the array. Default 0.
--- @field value number | number[] | nil The default value when size is set. Decimals are kept as written. Default is 0.

--- HNC is an array on which match can be applied directly. This is not position with the lua code `{}`.
--- @param size number | number[] Optional - The size of the array. Default 0.
--- @param value number | number[] Optional - The default value when size is set. Decimals are kept as written. Default is 0.
--- @return number[] Returns an array with or without values. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(size: number | number[]): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HNC): number[]
function HNC(size, value) end

