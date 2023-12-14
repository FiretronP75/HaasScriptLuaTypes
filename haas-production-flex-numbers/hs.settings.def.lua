--- Settings

--- The optional parameters of DeactivateBot.
--- @shape OptionalParametersOf_DeactivateBot
--- @field reason string | nil Reason for deactivation.
--- @field cancelOpenOrders boolean | nil If set, all open orders of the bot are being canceled.

--- Deactivates the bot. Once the bot is deactivated, it can only manually activate again.
--- @param reason string Optional - Reason for deactivation. Suggestions: Input, Load
--- @param cancelOpenOrders boolean Optional - If set, all open orders of the bot are being canceled. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return void
--- @overload fun(): void
--- @overload fun(reason: string): void
--- @overload fun(optionalParameters: OptionalParametersOf_DeactivateBot): void
function DeactivateBot(reason, cancelOpenOrders) end

--- Disables IndicatorContainer log messages.
--- @return void
function DisableIndicatorContainerLogs() end

--- The optional parameters of EnableHighSpeedUpdates.
--- @shape OptionalParametersOf_EnableHighSpeedUpdates
--- @field updateOnFilledOrders boolean | nil Executes an update right after an order has finished (canceled or filled).

--- Enables high-speed script execution.
--- @param updateOnFilledOrders boolean Optional - Executes an update right after an order has finished (canceled or filled).
--- @return void
--- @overload fun(): void
--- @overload fun(optionalParameters: OptionalParametersOf_EnableHighSpeedUpdates): void
function EnableHighSpeedUpdates(updateOnFilledOrders) end

--- Enables order persistence for managed trading.
--- @return void
function EnableOrderPersistence() end

--- The optional parameters of Finalize.
--- @shape OptionalParametersOf_Finalize
--- @field callback any | nil The function to executed when a candle closes.

--- Only executes on the last update cycle of a backtest. Saving time in the overall backtest length. Can be used in combination with plot manipulation (eg. PlotDoubleColor()) or CustomReport()
--- @param callback any Optional - The function to executed when a candle closes.
--- @return boolean Returns true when executed. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_Finalize): boolean
function Finalize(callback) end

--- Gets the current HaasScript version as a number.
--- @return number | number[] Returns the version number. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function GetHaasScriptVersion() end

--- The optional parameters of GetLeverage.
--- @shape OptionalParametersOf_GetLeverage
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the set leverage for current or specified market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number | number[] Returns the leverage value or -1 if request failed. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(market: string): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetLeverage): number | number[]
function GetLeverage(market, accountId) end

--- The optional parameters of GetMarginMode.
--- @shape OptionalParametersOf_GetMarginMode
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the current margin mode for current or specified market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return Enum Returns the margin mode enum. Output Suggestions: Equals
--- @overload fun(): Enum
--- @overload fun(market: string): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_GetMarginMode): Enum
function GetMarginMode(market, accountId) end

--- The optional parameters of GetMaxLeverage.
--- @shape OptionalParametersOf_GetMaxLeverage
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the maximum leverage for current or specified market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the maximum leverage value or -1 if request failed. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetMaxLeverage): number | number[]
function GetMaxLeverage(market) end

--- Returns the current main order type.
--- @return Enum Returns the order type enum. Output Suggestions: Equals
function GetOrderType() end

--- The optional parameters of GetPositionMode.
--- @shape OptionalParametersOf_GetPositionMode
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the current position mode for current or specified market.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return Enum Returns the position mode enum. Output Suggestions: Equals
--- @overload fun(): Enum
--- @overload fun(accountId: string): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionMode): Enum
function GetPositionMode(accountId, market) end

--- Hides the 2 order settings fields.
--- @return void
function HideOrderSettings() end

--- Hides the 2 trade amount settings fields.
--- @return void
function HideTradeAmountSettings() end

--- Used in combination with Pause- & ResumeBot(). The value can also be updated manually though the UI.
--- @return boolean Returns true if the pause flag is set. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsBotPaused() end

--- Returns true if running the enterprise version. Otherwise false.
--- @return boolean Returns a boolean. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsEnterpriseVersion() end

--- The optional parameters of IsMarginModeSupported.
--- @shape OptionalParametersOf_IsMarginModeSupported
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Checks if the specified margin mode is supported on current or specified market.
--- @param marginMode Enum Request margin mode. CrossMarginMode or IsolatedMarginMode. Suggestions: CrossMarginMode, IsolatedMarginMode
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return boolean Returns true if supported, otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(marginMode: Enum): boolean
--- @overload fun(marginMode: Enum, optionalParameters: OptionalParametersOf_IsMarginModeSupported): boolean
function IsMarginModeSupported(marginMode, accountId) end

--- The optional parameters of IsPositionModeSupported.
--- @shape OptionalParametersOf_IsPositionModeSupported
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Checks if specified position mode is supported on current or specified market.
--- @param positionMode Enum Request position mode. OneWayPositionMode or HedgePositionMode. Suggestions: OneWayPositionMode, HedgePositionMode
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return boolean Returns true if supported, otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(positionMode: Enum): boolean
--- @overload fun(positionMode: Enum, optionalParameters: OptionalParametersOf_IsPositionModeSupported): boolean
function IsPositionModeSupported(positionMode, accountId) end

--- Executes and saves or loads a value depending on the timestamp and interval. This command can be used to speed up backtest calculations which are depending on interval based data. For examples indicator calculation with closed candles.
--- @param interval number | number[] The interval on which the execution is based. If set on 0, the main interval is used.
--- @param callback any The function to executed when a candle closes.
--- @return any Returns the saved value or result of the callback.
function OptimizedForInterval(interval, callback) end

--- Enables the paused flag. Use in combination with IsBotPaused() to read the value. Can be used to temporary block certain actions like increasing position without stopping the whole bot. Bots will continue to update and are allowed to place/cancel orders.
--- @return void
function PauseBot() end

--- Disables the pause flag. Use in combination with IsBotPaused() to read the value
--- @return void
function ResumeBot() end

--- The optional parameters of SetLeverage.
--- @shape OptionalParametersOf_SetLeverage
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Sets the leverage ratio for current or specified market.
--- @param leverage number | number[] The amount of leverage to set. Suggestions: Input
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return boolean Returns true if successfully set value, otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(leverage: number | number[]): boolean
--- @overload fun(leverage: number | number[], market: string): boolean
--- @overload fun(leverage: number | number[], optionalParameters: OptionalParametersOf_SetLeverage): boolean
function SetLeverage(leverage, market, accountId) end

--- The optional parameters of SetMarginMode.
--- @shape OptionalParametersOf_SetMarginMode
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Sets the margin mode for current or specific market. It is NOT possible to change margin mode while having an open position.
--- @param marginMode Enum Request margin mode. CrossMarginMode or IsolatedMarginMode. Suggestions: IsolatedMarginMode, CrossMarginMode
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return boolean Returns true if successfully set, otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(marginMode: Enum): boolean
--- @overload fun(marginMode: Enum, market: string): boolean
--- @overload fun(marginMode: Enum, optionalParameters: OptionalParametersOf_SetMarginMode): boolean
function SetMarginMode(marginMode, market, accountId) end

--- Overwrites the order type with the given type. This can be used to execute different order types on managed trading.
--- @param type Enum Order type enum. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @return void
function SetOrderType(type) end

--- The optional parameters of SetPositionMode.
--- @shape OptionalParametersOf_SetPositionMode
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Sets the position mode for current or specified market. It is NOT possible to change position mode while having an open position.
--- @param positionMode Enum Request position mode. OneWayPositionMode or HedgePositionMode. Suggestions: OneWayPositionMode, HedgePositionMode
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return boolean Returns true if successfully set, otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(positionMode: Enum): boolean
--- @overload fun(positionMode: Enum, accountId: string): boolean
--- @overload fun(positionMode: Enum, optionalParameters: OptionalParametersOf_SetPositionMode): boolean
function SetPositionMode(positionMode, accountId, market) end

