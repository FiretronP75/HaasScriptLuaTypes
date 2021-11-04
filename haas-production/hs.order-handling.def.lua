--- Order Handling

--- The optional parameters of CancelAllOrders.
--- @shape OptionalParametersOf_CancelAllOrders
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Cancels all open orders.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return void
--- @overload fun(): void
--- @overload fun(optionalParameters: OptionalParametersOf_CancelAllOrders): void
function CancelAllOrders(positionId) end

--- Sends out a cancel order for the given order identifier.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return void
function CancelOrder(orderId) end

--- The optional parameters of IsAnyOrderFinished.
--- @shape OptionalParametersOf_IsAnyOrderFinished
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Checks if there are any open orders completed/cancelled.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if there are any open orders completed/cancelled. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_IsAnyOrderFinished): boolean
function IsAnyOrderFinished(positionId) end

--- The optional parameters of IsAnyOrderOpen.
--- @shape OptionalParametersOf_IsAnyOrderOpen
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Checks if there are any open orders.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if there are any open orders. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_IsAnyOrderOpen): boolean
function IsAnyOrderOpen(positionId) end

--- Checks if the given order is filled.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return boolean Returns true if the given order is filled. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsOrderFilled(orderId) end

--- Checks if the given order is still open.
--- @param orderId string Unique order identifier provided by the PlaceOrder commands. Suggestions: Load
--- @return boolean Returns true if the given order is still open. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsOrderOpen(orderId) end

