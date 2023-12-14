--- Order Information

--- The optional parameters of GetAllFilledOrders.
--- @shape OptionalParametersOf_GetAllFilledOrders
--- @field positionId string | nil Optional unique identifier. When set only orders related to that position are returned.

--- A collection of (partially) filled orders executed by the bot. Maximum size is 50 orders.
--- @param positionId string Optional - Optional unique identifier. When set only orders related to that position are returned. Suggestions: Load
--- @return any Returns a list of OrderContainer() objects. Sorted descending on close timestamp.
--- @overload fun(): any
--- @overload fun(optionalParameters: OptionalParametersOf_GetAllFilledOrders): any
function GetAllFilledOrders(positionId) end

--- The optional parameters of GetAllOpenOrders.
--- @shape OptionalParametersOf_GetAllOpenOrders
--- @field positionId string | nil Optional unique identifier. When set only orders related to that position are returned.

--- A collection of open orders executed by the bot.
--- @param positionId string Optional - Optional unique identifier. When set only orders related to that position are returned. Suggestions: Load
--- @return any Returns a list of OrderContainer() objects.
--- @overload fun(): any
--- @overload fun(optionalParameters: OptionalParametersOf_GetAllOpenOrders): any
function GetAllOpenOrders(positionId) end

--- The reason for the order failure.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return string Returns a string with the reason for the order failure. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
function GetFailedOrderMessage(orderId) end

--- Calculates the cancelled amount if the order is completed/cancelled.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return number | number[] Returns the cancelled amount if the order is completed/cancelled. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function GetOrderCancelledAmount(orderId) end

--- The optional parameters of GetOrderFilledAmount.
--- @shape OptionalParametersOf_GetOrderFilledAmount
--- @field afterFees boolean | nil If true, the fee cost are subtracted from the total amount if they are paid in the base currency.

--- Calculates the amount filled for a specific order.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @param afterFees boolean Optional - If true, the fee cost are subtracted from the total amount if they are paid in the base currency.
--- @return number | number[] Returns the amount filled for a specific order. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(orderId: string): number | number[]
--- @overload fun(orderId: string, optionalParameters: OptionalParametersOf_GetOrderFilledAmount): number | number[]
function GetOrderFilledAmount(orderId, afterFees) end

--- The optional parameters of GetOrderOpenTime.
--- @shape OptionalParametersOf_GetOrderOpenTime
--- @field inSeconds boolean | nil If set on true, the timespan will be in seconds.

--- Calculates how long an order is or has been open in minutes.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @param inSeconds boolean Optional - If set on true, the timespan will be in seconds.
--- @return number | number[] Returns the time the order is or has been open for in minutes. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(orderId: string): number | number[]
--- @overload fun(orderId: string, optionalParameters: OptionalParametersOf_GetOrderOpenTime): number | number[]
function GetOrderOpenTime(orderId, inSeconds) end

--- Calculates the realized profits of the order.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return number | number[] Returns gross profits of the order. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function GetOrderProfit(orderId) end

--- The object returned by OrderContainer.
--- @class ResultOf_OrderContainer
--- @field price number | number[] The price on which the order is filled or executed. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field executedAmount number | number[] The executed amount. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field filledAmount number | number[] The filled amount. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field isOpen boolean If true, the order is open. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isFilled boolean If true, the order is filled 100%. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isCancelled boolean If true, the order is cancelled but might be filled partially. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field feeCosts number | number[] The total fee costs. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field feeCurrency number | number[] The currency of the fee costs. Suggestions: CreateMarket
--- @field openTime number | number[] The time the order is or has been open for in minutes. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field positionId string The position identifier related to the order. Suggestions: PlaceExitPositionOrder, PositionContainer, GetPositionAmount, GetPositionProfit, GetPositionDirection, GetPositionEnterPrice, GetPositionMarket, GetPositionROI
--- @field orderId string The unique order identifier. Suggestions: CancelOrder
--- @field isEnterOrder boolean If true, the order is an enter order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isExitOrder boolean If true, the order is an exit order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field triggerPrice number | number[] The trigger-price of a conditional order. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field isBuyOrder boolean If true, the order is a buy order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isSellOrder boolean If true, the order is a sell order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [1] number | number[] The price on which the order is filled or executed. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [2] number | number[] The executed amount. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [3] number | number[] The filled amount. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [4] boolean If true, the order is open. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [5] boolean If true, the order is filled 100%. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [6] boolean If true, the order is cancelled but might be filled partially. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [7] number | number[] The total fee costs. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [8] number | number[] The currency of the fee costs. Suggestions: CreateMarket
--- @field [9] number | number[] The time the order is or has been open for in minutes. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [10] string The position identifier related to the order. Suggestions: PlaceExitPositionOrder, PositionContainer, GetPositionAmount, GetPositionProfit, GetPositionDirection, GetPositionEnterPrice, GetPositionMarket, GetPositionROI
--- @field [11] string The unique order identifier. Suggestions: CancelOrder
--- @field [12] boolean If true, the order is an enter order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [13] boolean If true, the order is an exit order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [14] number | number[] The trigger-price of a conditional order. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [15] boolean If true, the order is a buy order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [16] boolean If true, the order is a sell order. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder

--- Gets all the information from an specific order.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return ResultOf_OrderContainer Returns an array with order information.
function OrderContainer(orderId) end

