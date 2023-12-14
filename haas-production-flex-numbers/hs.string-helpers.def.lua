--- String Helpers

--- Creates an unique identifier.
--- @return string Returns the unique identifier as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
function NewGuid() end

--- Converts the value to a specific type.
--- @param value any The something.
--- @param type Enum The parameter type enum. Suggestions: NumberType, ListNumberType, BooleanType, StringType
--- @return any Returns the converted value or nil if parsing fails.
function Parse(value, type) end

--- The optional parameters of ParseCsv.
--- @shape OptionalParametersOf_ParseCsv
--- @field hasHeaders boolean | nil Whether or not data contains headers (default: false)
--- @field columnDelimiter string | nil Delimiter for columns (default: ';')
--- @field rowDelimiter string | nil Delimiter for rows (default: '\n')

--- Parses CSV data string and returns it as an object. URLs are also supported.
--- @param csv string The CSV data string or URL to download CSV data from. Suggestions: Input, Load
--- @param hasHeaders boolean Optional - Whether or not data contains headers (default: false). Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param columnDelimiter string Optional - Delimiter for columns (default: ';'). Suggestions: Input, Load
--- @param rowDelimiter string Optional - Delimiter for rows (default: '\n'). Suggestions: Input, Load
--- @return any Object containing the parsed information.
--- @overload fun(csv: string): any
--- @overload fun(csv: string, hasHeaders: boolean): any
--- @overload fun(csv: string, hasHeaders: boolean, columnDelimiter: string): any
--- @overload fun(csv: string, optionalParameters: OptionalParametersOf_ParseCsv): any
function ParseCsv(csv, hasHeaders, columnDelimiter, rowDelimiter) end

--- Parses JSON data string and returns it as an object. URLs are also supported.
--- @param json string The JSON data string or URL to download JSON data from. Suggestions: Input, Load
--- @return any Object containing the parsed information.
function ParseJson(json) end

--- The optional parameters of StringContains.
--- @shape OptionalParametersOf_StringContains
--- @field ignoreCase boolean | nil Ignoring the case of the scripts being compared.

--- Returns a value indicating whether a specified substring occurs within this string.
--- @param value string The main string. Suggestions: Input, Load
--- @param searchValue string The substring to search. Suggestions: Input, Load
--- @param ignoreCase boolean Optional - Ignoring the case of the scripts being compared. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return boolean Returns true if the specified substring occurs within this string. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(value: string, searchValue: string): boolean
--- @overload fun(value: string, searchValue: string, optionalParameters: OptionalParametersOf_StringContains): boolean
function StringContains(value, searchValue, ignoreCase) end

--- Splits a string into substrings that are based on the characters in an array.
--- @param value string The main string. Suggestions: Input, Load
--- @param delimiter string The delimiter value. Suggestions: Input, Load
--- @return any[] Returns an array of strings.
function StringExplode(value, delimiter) end

--- Split a string on '&' and '='.
--- @param value string The main string. Suggestions: Input, Load
--- @return any[] Returns an key-value based table.
function StringFromQuery(value) end

--- The optional parameters of StringIndexOf.
--- @shape OptionalParametersOf_StringIndexOf
--- @field ignoreCase boolean | nil Ignoring the case of the scripts being compared.

--- Gets the zero-based index of the first occurrence of the specified string in the current.
--- @param value string The main string. Suggestions: Input, Load
--- @param searchValue string The search value. Suggestions: Input, Load
--- @param ignoreCase boolean Optional - Ignoring the case of the scripts being compared. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return number | number[] Returns a zero-based index of the first occurrence of the specified string. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(value: string, searchValue: string): number | number[]
--- @overload fun(value: string, searchValue: string, optionalParameters: OptionalParametersOf_StringIndexOf): number | number[]
function StringIndexOf(value, searchValue, ignoreCase) end

--- The optional parameters of StringJoin.
--- @shape OptionalParametersOf_StringJoin
--- @field separator string | nil The string to use as a separator.

--- Concatenates 2 string with an optional separator.
--- @param value1 any The first part of the string. Suggestions: Load
--- @param value2 any The second part of the string. Suggestions: Load
--- @param separator string Optional - The string to use as a separator. Suggestions: Input, Load
--- @return string Returns the concatenated string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(value1: any, value2: any): string
--- @overload fun(value1: any, value2: any, optionalParameters: OptionalParametersOf_StringJoin): string
function StringJoin(value1, value2, separator) end

--- Splits a string into substrings that are based on the characters in an array.
--- @param value string The main string. Suggestions: Input, Load
--- @param delimiter string The delimiter value. Suggestions: Input, Load
--- @return any[] Returns an array of strings.
function StringSplit(value, delimiter) end

--- Retrieves a substring from this instance. The substring starts at a specified character position and has a specified length.
--- @param value string The main string. Suggestions: Input, Load
--- @param start number | number[] Start index, zero based. Suggestions: Input
--- @param length number | number[] The length of the substring. Suggestions: Input
--- @return string Substring of the main value. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
function SubString(value, start, length) end

