--- Position Prices

--- The optional parameters of AverageEnterPrice.
--- @shape OptionalParametersOf_AverageEnterPrice
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field includeClosed boolean | nil True for total position amount (default), false for only open amount.

--- Gets the average enter price.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param includeClosed boolean Optional - True for total position amount (default), false for only open amount. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return number | number[] Returns the average enter price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(positionId: string): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_AverageEnterPrice): number | number[]
function AverageEnterPrice(positionId, includeClosed) end

--- The optional parameters of AverageExitPrice.
--- @shape OptionalParametersOf_AverageExitPrice
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Gets the average exit price.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return number | number[] Returns the average exit price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_AverageExitPrice): number | number[]
function AverageExitPrice(positionId) end

--- Gets the last used exit long price.
--- @return number | number[] Returns the last used exit long price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function LastExitLongPrice() end

--- Gets the last used exit short or long price.
--- @return number | number[] Returns the last used exit short or long price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function LastExitPositionPrice() end

--- Gets the last used exit short price.
--- @return number | number[] Returns the last used exit short price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function LastExitShortPrice() end

--- Gets the last enter long price.
--- @return number | number[] Returns the last enter long price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function LastLongPrice() end

--- The optional parameters of LastLongProfit.
--- @shape OptionalParametersOf_LastLongProfit
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Gets the profit of the last long exit or sell trade.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return number | number[] Returns the profit. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_LastLongProfit): number | number[]
function LastLongProfit(positionId) end

--- Gets the last enter short price.
--- @return number | number[] Returns the last enter short price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function LastShortPrice() end

--- The optional parameters of LastShortProfit.
--- @shape OptionalParametersOf_LastShortProfit
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Gets the profit of the last short exit or buy trade.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return number | number[] Returns the profit. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_LastShortProfit): number | number[]
function LastShortProfit(positionId) end

