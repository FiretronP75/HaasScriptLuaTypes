--- Profit Information

--- The optional parameters of GetBotProfit.
--- @shape OptionalParametersOf_GetBotProfit
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.
--- @field includeUnrealized boolean | nil Set on true to include the unrealized profits. By default false.

--- Total realized profits on a specific market. Unrealized profits are included when 'includeUnrealized' is set on true.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param includeUnrealized boolean Optional - Set on true to include the unrealized profits. By default false.
--- @return number Return total realized profit. On spot/margin the result will be in the quote currency. For leverage its in the underlying currency. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(market: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetBotProfit): number
function GetBotProfit(market, includeUnrealized) end

--- The optional parameters of GetBotROI.
--- @shape OptionalParametersOf_GetBotROI
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the return on investment. The ROI is calculated by dividing the total realized profits by the average position size.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Return the ROI percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetBotROI): number
function GetBotROI(market) end

--- The optional parameters of GetCurrentProfit.
--- @shape OptionalParametersOf_GetCurrentProfit
--- @field direction Enum | nil Bot position enum. PositionLong, PositionShort or NoPosition.
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets unrealized plus realized profits of the current open position. Optional parameters fall back to main bot settings. The accountId parameter can take a positionId as well.
--- @param direction Enum Optional - Bot position enum. PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the total profit. On spot/margin the result will be in the quote currency. For leverage its in the underlying currency. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(direction: Enum): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetCurrentProfit): number
function GetCurrentProfit(direction, market) end

--- The optional parameters of GetCurrentROI.
--- @shape OptionalParametersOf_GetCurrentROI
--- @field direction Enum | nil Bot position enum. PositionLong, PositionShort or NoPosition.
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the return on investment percentage based on the total cost/margin used of the open positions. Optional parameters fall back to main bot settings. The accountId parameter can take a positionId as well.
--- @param direction Enum Optional - Bot position enum. PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the ROI percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(direction: Enum): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetCurrentROI): number
function GetCurrentROI(direction, market) end

--- The object returned by GetTradingReport.
--- @class ResultOf_GetTradingReport
--- @field maxDrawDownPrc number Max. DrawDown in percentages. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field maxDrawDown number Max. DrawDown in underlying asset. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field sharpeRatio number Sharpe Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field sortinoRatio number Sortino Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field winPercentage number Win percentage. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitRatio number Profit Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitFactor number Profit Factor. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field cpcIndex number CPC Index. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field tailRatio number Tail Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field commonSenseRatio number Common Sense Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field outlierWinRatio number Outlier Win Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field outlierLossRatio number Outlier Loss Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitMarginRatio number Profit Margin Ratio (Gain / Total Used Margin). Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field biggestWin number Biggest Winner. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field biggestLoss number Biggest Loser. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field highestPointInProfit number Highest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field lowestPointInProfit number Lowest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field totalMarginUsed number Total Margin Used. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field averageMargin number Average Margin used per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field averageProfit number Average Profit per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field closedPositions number Closed Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitablePositions number Profitable Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field losingPositions number Losing Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field executedOrders number Executed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field completedOrders number Completed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [1] number Max. DrawDown in percentages. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [2] number Max. DrawDown in underlying asset. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [3] number Sharpe Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [4] number Sortino Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [5] number Win percentage. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [6] number Profit Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [7] number Profit Factor. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [8] number CPC Index. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [9] number Tail Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [10] number Common Sense Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [11] number Outlier Win Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [12] number Outlier Loss Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [13] number Profit Margin Ratio (Gain / Total Used Margin). Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [14] number Biggest Winner. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [15] number Biggest Loser. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [16] number Highest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [17] number Lowest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [18] number Total Margin Used. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [19] number Average Margin used per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [20] number Average Profit per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [21] number Closed Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [22] number Profitable Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [23] number Losing Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [24] number Executed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [25] number Completed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot

--- The optional parameters of GetTradingReport.
--- @shape OptionalParametersOf_GetTradingReport
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the trading report container with many useful values to help properly evaluate a strategy or a trading system.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return ResultOf_GetTradingReport The trading report container.
--- @overload fun(): ResultOf_GetTradingReport
--- @overload fun(optionalParameters: OptionalParametersOf_GetTradingReport): ResultOf_GetTradingReport
function GetTradingReport(market) end

--- The optional parameters of SetBotRoiBaseValue.
--- @shape OptionalParametersOf_SetBotRoiBaseValue
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Sets a custom base value used in the ROI calculation (realized profits / baseValue * 100).
--- @param baseValue number The base value for the ROI calculation. Suggestions: Input
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return void
--- @overload fun(baseValue: number): void
--- @overload fun(baseValue: number, optionalParameters: OptionalParametersOf_SetBotRoiBaseValue): void
function SetBotRoiBaseValue(baseValue, market) end

