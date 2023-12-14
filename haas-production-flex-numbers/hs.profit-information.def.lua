--- Profit Information

--- The optional parameters of GetBotProfit.
--- @shape OptionalParametersOf_GetBotProfit
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.
--- @field includeUnrealized boolean | nil Set on true to include the unrealized profits. By default false.

--- Total realized profits on a specific market. Unrealized profits are included when 'includeUnrealized' is set on true.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param includeUnrealized boolean Optional - Set on true to include the unrealized profits. By default false.
--- @return number | number[] Return total realized profit. On spot/margin the result will be in the quote currency. For leverage its in the underlying currency. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(market: string): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetBotProfit): number | number[]
function GetBotProfit(market, includeUnrealized) end

--- The optional parameters of GetBotROI.
--- @shape OptionalParametersOf_GetBotROI
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the return on investment. The ROI is calculated by dividing the total realized profits by the average position size.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number | number[] Return the ROI percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetBotROI): number | number[]
function GetBotROI(market) end

--- The optional parameters of GetCurrentProfit.
--- @shape OptionalParametersOf_GetCurrentProfit
--- @field direction Enum | nil Bot position enum. PositionLong, PositionShort or NoPosition.
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets unrealized plus realized profits of the current open position. Optional parameters fall back to main bot settings. The accountId parameter can take a positionId as well.
--- @param direction Enum Optional - Bot position enum. PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number | number[] Returns the total profit. On spot/margin the result will be in the quote currency. For leverage its in the underlying currency. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(direction: Enum): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetCurrentProfit): number | number[]
function GetCurrentProfit(direction, market) end

--- The optional parameters of GetCurrentROI.
--- @shape OptionalParametersOf_GetCurrentROI
--- @field direction Enum | nil Bot position enum. PositionLong, PositionShort or NoPosition.
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the return on investment percentage based on the total cost/margin used of the open positions. Optional parameters fall back to main bot settings. The accountId parameter can take a positionId as well.
--- @param direction Enum Optional - Bot position enum. PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number | number[] Returns the ROI percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(direction: Enum): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetCurrentROI): number | number[]
function GetCurrentROI(direction, market) end

--- The object returned by GetTradingReport.
--- @class ResultOf_GetTradingReport
--- @field maxDrawDownPrc number | number[] Max. DrawDown in percentages. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field maxDrawDown number | number[] Max. DrawDown in underlying asset. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field sharpeRatio number | number[] Sharpe Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field sortinoRatio number | number[] Sortino Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field winPercentage number | number[] Win percentage. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitRatio number | number[] Profit Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitFactor number | number[] Profit Factor. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field cpcIndex number | number[] CPC Index. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field tailRatio number | number[] Tail Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field commonSenseRatio number | number[] Common Sense Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field outlierWinRatio number | number[] Outlier Win Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field outlierLossRatio number | number[] Outlier Loss Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitMarginRatio number | number[] Profit Margin Ratio (Gain / Total Used Margin). Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field biggestWin number | number[] Biggest Winner. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field biggestLoss number | number[] Biggest Loser. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field highestPointInProfit number | number[] Highest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field lowestPointInProfit number | number[] Lowest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field totalMarginUsed number | number[] Total Margin Used. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field averageMargin number | number[] Average Margin used per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field averageProfit number | number[] Average Profit per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field closedPositions number | number[] Closed Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field profitablePositions number | number[] Profitable Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field losingPositions number | number[] Losing Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field executedOrders number | number[] Executed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field completedOrders number | number[] Completed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [1] number | number[] Max. DrawDown in percentages. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [2] number | number[] Max. DrawDown in underlying asset. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [3] number | number[] Sharpe Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [4] number | number[] Sortino Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [5] number | number[] Win percentage. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [6] number | number[] Profit Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [7] number | number[] Profit Factor. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [8] number | number[] CPC Index. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [9] number | number[] Tail Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [10] number | number[] Common Sense Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [11] number | number[] Outlier Win Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [12] number | number[] Outlier Loss Ratio. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [13] number | number[] Profit Margin Ratio (Gain / Total Used Margin). Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [14] number | number[] Biggest Winner. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [15] number | number[] Biggest Loser. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [16] number | number[] Highest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [17] number | number[] Lowest Point in total PNL. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [18] number | number[] Total Margin Used. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [19] number | number[] Average Margin used per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [20] number | number[] Average Profit per position. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [21] number | number[] Closed Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [22] number | number[] Profitable Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [23] number | number[] Losing Positions count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [24] number | number[] Executed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot
--- @field [25] number | number[] Completed Orders count. Suggestions: IsBiggerThan, IsSmallerThan, Log, Plot

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
--- @param baseValue number | number[] The base value for the ROI calculation. Suggestions: Input
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return void
--- @overload fun(baseValue: number | number[]): void
--- @overload fun(baseValue: number | number[], optionalParameters: OptionalParametersOf_SetBotRoiBaseValue): void
function SetBotRoiBaseValue(baseValue, market) end

