--- Easy Insurances

--- The optional parameters of AbsolutePriceChange.
--- @shape OptionalParametersOf_AbsolutePriceChange
--- @field amount number | number[] | nil Minimum absolute price change before the insurance agrees.
--- @field targetPrice number | number[] | nil The target price of the trade. Default is the current buy or sell price.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Compares the average entry price to current price, absolute value-based.
--- @param amount number | number[] Optional - Minimum absolute price change before the insurance agrees. Suggestions: Input
--- @param targetPrice number | number[] Optional - The target price of the trade. Default is the current buy or sell price. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if the minimum price change percentage is reached. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(amount: number | number[]): boolean
--- @overload fun(amount: number | number[], targetPrice: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_AbsolutePriceChange): boolean
function AbsolutePriceChange(amount, targetPrice, positionId) end

--- The optional parameters of NeverEnterWithALoss.
--- @shape OptionalParametersOf_NeverEnterWithALoss
--- @field acceptedLoss number | number[] | nil The accepted loss in percentage. Default is 0. This also affects user-defined targetPrice.
--- @field targetPrice number | number[] | nil The target price of the trade. Can be used when placing orders beforehand in unmanaged trading.

--- Blocks enter trade when targetPrice is above the last sell order. Only works on spot and when there is no position open.
--- @param acceptedLoss number | number[] Optional - The accepted loss in percentage. Default is 0. This also affects user-defined targetPrice. Suggestions: Input
--- @param targetPrice number | number[] Optional - The target price of the trade. Can be used when placing orders beforehand in unmanaged trading. Suggestions: Input
--- @return boolean Returns true if the trade is allowed. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(acceptedLoss: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_NeverEnterWithALoss): boolean
function NeverEnterWithALoss(acceptedLoss, targetPrice) end

--- The optional parameters of NeverExitWithLoss.
--- @shape OptionalParametersOf_NeverExitWithLoss
--- @field acceptedLoss number | number[] | nil The accepted loss in percentage. Default is 0. This also affects user-defined targetPrice.
--- @field targetPrice number | number[] | nil The target price of the trade. Can be used when placing orders beforehand in unmanaged trading.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Compares the average enter price to the targetPrice or current price.
--- @param acceptedLoss number | number[] Optional - The accepted loss in percentage. Default is 0. This also affects user-defined targetPrice. Suggestions: Input
--- @param targetPrice number | number[] Optional - The target price of the trade. Can be used when placing orders beforehand in unmanaged trading. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if the trade is allowed. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(acceptedLoss: number | number[]): boolean
--- @overload fun(acceptedLoss: number | number[], targetPrice: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_NeverExitWithLoss): boolean
function NeverExitWithLoss(acceptedLoss, targetPrice, positionId) end

--- The optional parameters of OrderOncePerBar.
--- @shape OptionalParametersOf_OrderOncePerBar
--- @field interval number | number[] | nil Interval of the bar in minutes.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Only allows a order to occur once per bar. Signals produced during a ordered bar are blocked.
--- @param interval number | number[] Optional - Interval of the bar in minutes. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true when new bar opens or no orders occurred during a bar. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(interval: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_OrderOncePerBar): boolean
function OrderOncePerBar(interval, positionId) end

--- The optional parameters of OvercomeDoubleFeeCosts.
--- @shape OptionalParametersOf_OvercomeDoubleFeeCosts
--- @field targetPrice number | number[] | nil The target price of the trade. Default is the current buy or sell price.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Calculates the target profit and makes sure the fee costs are double-covered.
--- @param targetPrice number | number[] Optional - The target price of the trade. Default is the current buy or sell price. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if the trade profit is enough to cover double the fees. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(targetPrice: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_OvercomeDoubleFeeCosts): boolean
function OvercomeDoubleFeeCosts(targetPrice, positionId) end

--- The optional parameters of OvercomeFeeCosts.
--- @shape OptionalParametersOf_OvercomeFeeCosts
--- @field targetPrice number | number[] | nil The target price of the trade. Default is the current buy or sell price.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Calculates the target profit and makes sure the fee costs are covered.
--- @param targetPrice number | number[] Optional - The target price of the trade. Default is the current buy or sell price. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if the trade profit is enough to cover the fees. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(targetPrice: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_OvercomeFeeCosts): boolean
function OvercomeFeeCosts(targetPrice, positionId) end

--- The optional parameters of PercentagePriceChange.
--- @shape OptionalParametersOf_PercentagePriceChange
--- @field percentage number | number[] | nil Minimum percentage change before the insurance agrees.
--- @field targetPrice number | number[] | nil The target price of the trade. Default is the current buy or sell price.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Compares the average enter price to current price, percentage-based.
--- @param percentage number | number[] Optional - Minimum percentage change before the insurance agrees. Suggestions: Input
--- @param targetPrice number | number[] Optional - The target price of the trade. Default is the current buy or sell price. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if the minimum price change percentage is reached. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], targetPrice: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_PercentagePriceChange): boolean
function PercentagePriceChange(percentage, targetPrice, positionId) end

--- The optional parameters of StopLossCooldown.
--- @shape OptionalParametersOf_StopLossCooldown
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Blocks any signal until a certain number of minutes have passed since the last exit trade executed by a safety.
--- @param minutes number | number[] Number of minutes to wait after the last order. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true when the last trade is a certain number of minutes ago. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(minutes: number | number[]): boolean
--- @overload fun(minutes: number | number[], optionalParameters: OptionalParametersOf_StopLossCooldown): boolean
function StopLossCooldown(minutes, positionId) end

--- The optional parameters of TradeOncePerBar.
--- @shape OptionalParametersOf_TradeOncePerBar
--- @field interval number | number[] | nil Interval of the bar in minutes.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Only allows a trade to occur once per bar. Signals produced during a traded bar are blocked.
--- @param interval number | number[] Optional - Interval of the bar in minutes. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true when new bar opens or no trade occurred during a bar. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(interval: number | number[]): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_TradeOncePerBar): boolean
function TradeOncePerBar(interval, positionId) end

--- The optional parameters of TradeOnlySideways.
--- @shape OptionalParametersOf_TradeOnlySideways
--- @field threshold number | number[] | nil Sideways movement threshold.
--- @field interval number | number[] | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.

--- Checks the current market condition for sideways movement.
--- @param threshold number | number[] Optional - Sideways movement threshold. Suggestions: Input
--- @param interval number | number[] Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return boolean Returns true if the trade is allowed. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(threshold: number | number[]): boolean
--- @overload fun(threshold: number | number[], interval: number | number[]): boolean
--- @overload fun(threshold: number | number[], interval: number | number[], fullCandles: boolean): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_TradeOnlySideways): boolean
function TradeOnlySideways(threshold, interval, fullCandles, market) end

--- The optional parameters of TradeOnlyTrending.
--- @shape OptionalParametersOf_TradeOnlyTrending
--- @field threshold number | number[] | nil Trend strength threshold.
--- @field interval number | number[] | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.

--- Checks the current market condition for a trend.
--- @param threshold number | number[] Optional - Trend strength threshold. Suggestions: Input
--- @param interval number | number[] Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return boolean Returns true if the trade is allowed. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(): boolean
--- @overload fun(threshold: number | number[]): boolean
--- @overload fun(threshold: number | number[], interval: number | number[]): boolean
--- @overload fun(threshold: number | number[], interval: number | number[], fullCandles: boolean): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_TradeOnlyTrending): boolean
function TradeOnlyTrending(threshold, interval, fullCandles, market) end

--- The optional parameters of WaitAfterOrder.
--- @shape OptionalParametersOf_WaitAfterOrder
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Blocks any signal until a certain number of minutes have passed since the last placed order. This includes orders executed in an update cycle
--- @param timeout number | number[] Number of minutes to wait after the last order. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true when the last placed order is a certain number of minutes ago. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(timeout: number | number[]): boolean
--- @overload fun(timeout: number | number[], optionalParameters: OptionalParametersOf_WaitAfterOrder): boolean
function WaitAfterOrder(timeout, positionId) end

--- The optional parameters of WaitAfterTrade.
--- @shape OptionalParametersOf_WaitAfterTrade
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Blocks any signal until a certain number of minutes have passed since the last trade.
--- @param timeout number | number[] Number of minutes to wait after the last trade. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true when the last trade is a certain number of minutes ago. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder, InsuranceContainer
--- @overload fun(timeout: number | number[]): boolean
--- @overload fun(timeout: number | number[], optionalParameters: OptionalParametersOf_WaitAfterTrade): boolean
function WaitAfterTrade(timeout, positionId) end

