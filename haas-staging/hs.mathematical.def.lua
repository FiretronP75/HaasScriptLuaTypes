--- Mathematical

--- Calculates an absolute/positive number.
--- @param input number | table Source value.
--- @return number | table Returns an absolute/positive number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Abs(input) end

--- Calculates the angle whose cosine is the specified number.
--- @param input number | table A number representing a cosine, that must be greater than or equal to -1, but less than or equal to 1.
--- @return number | table Returns the angle whose cosine is the specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Acos(input) end

--- The optional parameters of Add.
--- @shape OptionalParametersOf_Add
--- @field input2 number | table | nil Source value(s) 2.

--- Adds numbers/tables and returns the result number/table.
--- @param input1 number | table Source value(s) 1. Suggestions: Input
--- @param input2 number | table Optional - Source value(s) 2. Suggestions: Input
--- @return number | table Returns the total sum of a single value is provide, adds the 2 values if there are 2 provided. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input1: number | table): number | table
--- @overload fun(input1: number | table, optionalParameters: OptionalParametersOf_Add): number | table
function Add(input1, input2) end

--- Add a percentage to the value.
--- @param value number | table The main value.
--- @param percentage number The percentage to add. Suggestions: Input
--- @return number[] Returns the value with the added percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function AddPerc(value, percentage) end

--- Add a percentage to the value.
--- @param value number | table The main value.
--- @param percentage number The percentage to add. Suggestions: Input
--- @return number[] Returns the value with the added percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function AddPercentage(value, percentage) end

--- Calculates the angle whose sine is the specified number.
--- @param input number | table Source value(s).
--- @return number | table Returns the angle whose sine is the specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Asin(input) end

--- Calculates the angle whose tangent is the specified number.
--- @param input number | table A number representing a tangent.
--- @return number | table Returns the angle whose tangent is the specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Atan(input) end

--- Calculates the angle whose tangent is the quotient of two specified numbers.
--- @param input1 number | table The y coordinate of a point.
--- @param input2 number | table The x coordinate of a point.
--- @return number | table Returns the angle whose tangent is the quotient of two specified numbers. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Atan2(input1, input2) end

--- The optional parameters of Average.
--- @shape OptionalParametersOf_Average
--- @field input2 number | table | nil Source value(s) 2.

--- Calculates the average value of the array, two numbers or averages between 2 arrays.
--- @param input1 number | table Source value(s) 1.
--- @param input2 number | table Optional - Source value(s) 2.
--- @return number | table Returns the average value of the array, two numbers or averages between 2 arrays. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input1: number | table): number | table
--- @overload fun(input1: number | table, optionalParameters: OptionalParametersOf_Average): number | table
function Average(input1, input2) end

--- The optional parameters of Average2.
--- @shape OptionalParametersOf_Average2
--- @field period number | nil Period length.

--- Calculates the average value of the array for a certain period.
--- @param input number[] Source values.
--- @param period number Optional - Period length.
--- @return number | table Returns the average value of the array for a certain period. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input: number[]): number | table
--- @overload fun(input: number[], optionalParameters: OptionalParametersOf_Average2): number | table
function Average2(input, period) end

--- Calculates the smallest integral value greater than or equal to the specified number.
--- @param input number | table Source value(s).
--- @return number | table Returns the smallest integral value greater than or equal to the specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Ceil(input) end

--- Calculates the absolute price changes between the values.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the new-old change of the values in an array. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Change(prices) end

--- Calculates the number or table of numbers clamped between the specified minimum and maximum.
--- @param input number | table Source value(s).
--- @param min number Minimum value.
--- @param max number Maximum value.
--- @return number | table Returns number or table of numbers clamped between the specified minimum and maximum. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Clamp(input, min, max) end

--- Calculates the average values of every 2 values in an array. When the input is [10, 20, 30, 40] the result will be [15, 35].
--- @param input number[] Source data.
--- @return number[] Returns the compressed array. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Compress(input) end

--- Calculates the cosine of the specified angle.
--- @param input number | table Source value(s).
--- @return number | table Returns the cosine of the specified angle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Cos(input) end

--- Calculates the hyperbolic cosine of the specified angle.
--- @param input number | table Source value(s).
--- @return number | table Returns the hyperbolic cosine of the specified angle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Cosh(input) end

--- The optional parameters of Delta.
--- @shape OptionalParametersOf_Delta
--- @field input2 number | table | nil Source value(s) 2.

--- Calculates the percentage between input1 and input2 or the percentage change between the values of input1.
--- @param input1 number | table Source value(s) 1.
--- @param input2 number | table Optional - Source value(s) 2.
--- @return number | table Returns the percentage between input1 and input2. When for example input1 is 5 and input2 is 6, 20 is returned. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input1: number | table): number | table
--- @overload fun(input1: number | table, optionalParameters: OptionalParametersOf_Delta): number | table
function Delta(input1, input2) end

--- Divides input1 with input2. If one of the parameters is a single value, the other is divided by this.
--- @param input1 number | table Source value(s) 1. Suggestions: Input
--- @param input2 number | table Source value(s) 2. Suggestions: Input
--- @return number | table Returns the divided numbers/tables. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Div(input1, input2) end

--- Enumeration, returns 1 Satoshi (=Epsilon).
--- @class Epsilon : Enum
Epsilon = {}

--- Calculates 'e' raised to the specified power.
--- @param input number | table Source value(s).
--- @return number | table Returns 'e' raised to the specified power. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Exp(input) end

--- Filters out all values above a specific value.
--- @param input number | table Source data.
--- @param threshold number The maximum threshold value.
--- @return number[] Returns the filtered input. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function FilterAbove(input, threshold) end

--- Filters out all values below a specific value.
--- @param input number | table Source data.
--- @param threshold number The old value.
--- @return number[] Returns the filtered input. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function FilterBelow(input, threshold) end

--- Calculates the largest integral value less than or equal to the specified number.
--- @param input number | table Source value(s).
--- @return number | table Returns the largest integral value less than or equal to the specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Floor(input) end

--- The optional parameters of GetHigh.
--- @shape OptionalParametersOf_GetHigh
--- @field offset number | nil Number of records to skip.

--- Gets the highest value.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param depth number Number of records to include. Suggestions: Input
--- @param offset number Optional - Number of records to skip. Suggestions: Input
--- @return number Returns the highest value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(prices: number[], depth: number): number
--- @overload fun(prices: number[], depth: number, optionalParameters: OptionalParametersOf_GetHigh): number
function GetHigh(prices, depth, offset) end

--- Gets the highest values within lookback period.
--- @param array number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param depth number Number of records to include. Suggestions: Input
--- @return number[] Returns the highest values within lookback period. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function GetHighs(array, depth) end

--- The optional parameters of GetLow.
--- @shape OptionalParametersOf_GetLow
--- @field offset number | nil Number of records to skip.

--- Gets the lowest value.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param depth number Number of records to include. Suggestions: Input
--- @param offset number Optional - Number of records to skip. Suggestions: Input
--- @return number Returns the lowest value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(prices: number[], depth: number): number
--- @overload fun(prices: number[], depth: number, optionalParameters: OptionalParametersOf_GetLow): number
function GetLow(prices, depth, offset) end

--- Gets the lowest values within lookback period.
--- @param array number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param depth number Number of records to include. Suggestions: Input
--- @return number[] Returns the lowest values within lookback period. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function GetLows(array, depth) end

--- The optional parameters of Ln.
--- @shape OptionalParametersOf_Ln
--- @field input2 number | table | nil Source value(s) 2.

--- Calculates the logarithm of a specified number.
--- @param input1 number | table Source value(s) 1.
--- @param input2 number | table Optional - Source value(s) 2.
--- @return number | table Returns the logarithm of a specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input1: number | table): number | table
--- @overload fun(input1: number | table, optionalParameters: OptionalParametersOf_Ln): number | table
function Ln(input1, input2) end

--- Calculates the base 10 logarithm of a specified number.
--- @param input number | table Source value(s).
--- @return number | table Returns the base 10 logarithm of a specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Log10(input) end

--- Returns the maximum value. If the input is a single array, it returns the biggest number in that array (single value). If inputs are both numbers, it returns the biggest number (single value). If inputs are array and number, it returns the biggest number (array[1] vs number, single value). If inputs are both arrays, it returns an array of the biggest numbers per cell (array, length determined by the shorter array).
--- @param values number[] | table Source value(s).
--- @return number | table Returns the biggest number or an array of biggest numbers per cell. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Max(values) end

--- Returns the minimum value. If the input is a single array, it returns the minimum in that array (single value). If inputs are both numbers, it returns the smallest number (single value). If inputs are array and number, it returns the smallest number (single value). If inputs are both arrays, it returns an array of the smallest numbers per cell (array, length determined by shortest array)
--- @param values number[] | table Source value(s).
--- @return number | table Returns the smallest number or an array of smallest numbers per cell. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Min(values) end

--- Multiplies input1 with input2. If one of the parameters is a single value, the other is multiplied by this.
--- @param input1 number | table Source value(s) 1. Suggestions: Input
--- @param input2 number | table Source value(s) 2. Suggestions: Input
--- @return number | table Returns the multiplied numbers/tables. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Mul(input1, input2) end

--- Multiplies input1 with input2. If one of the parameters is a single value, the other is multiplied by this.
--- @param input1 number | table Source value(s) 1. Suggestions: Input
--- @param input2 number | table Source value(s) 2. Suggestions: Input
--- @return number | table Returns the multiplied numbers/tables. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Mult(input1, input2) end

--- Enumeration, returns the maximum number.
--- @class NumberMax : Enum
NumberMax = {}

--- Enumeration, returns the minimum number.
--- @class NumberMin : Enum
NumberMin = {}

--- The optional parameters of PercentageChange.
--- @shape OptionalParametersOf_PercentageChange
--- @field input2 number | table | nil Source value(s) 2.

--- Calculates the percentage between input1 and input2 or the percentage change between the values of input1.
--- @param input1 number | table Source value(s) 1.
--- @param input2 number | table Optional - Source value(s) 2.
--- @return number | table Returns the percentage between input1 and input2. When for example input1 is 5 and input2 is 6, 20 is returned. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input1: number | table): number | table
--- @overload fun(input1: number | table, optionalParameters: OptionalParametersOf_PercentageChange): number | table
function PercentageChange(input1, input2) end

--- Enumeration, returns the number of PI.
--- @class PI : Enum
PI = {}

--- Calculates a specified number/table raised to the specified power number/table.
--- @param input1 number | table First source value(s). Suggestions: Input
--- @param input2 number | table Second source value(s). Suggestions: Input
--- @return number | table Returns a specified number/table raised to the specified power number/table. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Pow(input1, input2) end

--- The optional parameters of Random.
--- @shape OptionalParametersOf_Random
--- @field min number | nil Minimum value. Default is 0.
--- @field max number | nil Minimum value. Default is 1.

--- Creates a random number.
--- @param min number Optional - Minimum value. Default is 0. Suggestions: Input
--- @param max number Optional - Minimum value. Default is 1. Suggestions: Input
--- @return number Returns a random number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(min: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_Random): number
function Random(min, max) end

--- Replaces any value above a specific value with another value.
--- @param input number | table Source data.
--- @param threshold number Values above this threshold will be replaced.
--- @param newValue number The new value.
--- @return number[] Returns the input with replaced values. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function ReplaceAbove(input, threshold, newValue) end

--- Replaces any value below a specific value with another value.
--- @param input number | table Source data.
--- @param threshold number Values below this threshold will be replaced.
--- @param newValue number The new value.
--- @return number[] Returns the input with replaced values. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function ReplaceBelow(input, threshold, newValue) end

--- Rounds a value (or values if table) to the nearest integer or to the specified number of fractional digits.
--- @param input number | table Source value(s).
--- @param digits number Number of digits after decimal point. Suggestions: Input
--- @return number | table Returns the rounded number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Round(input, digits) end

--- Enumeration, returns 1 Satoshi (=Epsilon).
--- @class Satoshi : Enum
Satoshi = {}

--- Calculates the Standard Deviation from the data series.
--- @param input number[] Source value(s). Suggestions: ClosePrices, Prices
--- @return number Returns the Standard Deviation. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Sd(input) end

--- Calculates an integer that indicates the sign of a number.
--- @param input number | table Source value(s).
--- @return number | table Returns an integer that indicates the sign of a number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Sign(input) end

--- Calculates the sine of the specified angle.
--- @param input number | table Source value(s).
--- @return number | table Returns the sine of the specified angle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Sin(input) end

--- Calculates the hyperbolic sine of the specified angle.
--- @param input number | table Source value(s).
--- @return number | table Returns the hyperbolic sine of the specified angle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Sinh(input) end

--- Calculates the square root of a specified number.
--- @param input number | table Source value(s).
--- @return number | table Returns the square root of a specified number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Sqrt(input) end

--- Subtracts numbers/tables and returns the result number/table.
--- @param input1 number | table Source value(s) 1. Suggestions: Input
--- @param input2 number | table Source value(s) 2. Suggestions: Input
--- @return number | table Calculates the subtracted numbers/tables. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Sub(input1, input2) end

--- Subtracts a percentage to the value.
--- @param value number | table The main value.
--- @param percentage number The percentage to subtract. Suggestions: Input
--- @return number[] Returns the value with the subtracted percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function SubPerc(value, percentage) end

--- Subtracts a percentage to the value.
--- @param value number | table The main value.
--- @param percentage number The percentage to subtract. Suggestions: Input
--- @return number[] Returns the value with the subtracted percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function SubPercentage(value, percentage) end

--- The optional parameters of Sum.
--- @shape OptionalParametersOf_Sum
--- @field input2 number | table | nil Source value(s) 2.

--- Adds numbers/tables and returns the result number/table.
--- @param input1 number | table Source value(s) 1. Suggestions: Input
--- @param input2 number | table Optional - Source value(s) 2. Suggestions: Input
--- @return number | table Returns the total sum of a single value is provide, adds the 2 values if there are 2 provided. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input1: number | table): number | table
--- @overload fun(input1: number | table, optionalParameters: OptionalParametersOf_Sum): number | table
function Sum(input1, input2) end

--- Calculates the tangent of the specified angle.
--- @param input number | table Source value(s).
--- @return number | table Returns the tangent of the specified angle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Tan(input) end

--- Calculates the hyperbolic tangent of the specified angle.
--- @param input number | table Source value(s).
--- @return number | table Returns the hyperbolic tangent of the specified angle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Tanh(input) end

--- Truncates a value (or values if table) to the nearest integer or to the specified number of fractional digits.
--- @param input number | table Source value(s).
--- @param digits number Number of digits after decimal point. Suggestions: Input
--- @return number | table Returns the truncated number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Truncate(input, digits) end

