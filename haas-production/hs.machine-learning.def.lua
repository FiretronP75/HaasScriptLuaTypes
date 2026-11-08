--- Machine Learning

--- Uses hindsight to tell if it is the best moment to go long or short. Not available in the cloud version.
--- @param period number Hindsight view period length. Suggestions: Input
--- @return Enum Returns a trading signal. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function HindSightSignal(period) end

--- Looks at a numeric array and checks whether its newest (first) value lies within multiplier standard deviations of the average. Not available in the cloud version.
--- @param dataset number[] The dataset to check. The first value is the newest one. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param multiplier number Multiplier to control the sensitivity (1-3). Suggestions: Input
--- @return boolean True when the newest value is inside that band (normal), false when it is outside it (abnormal). Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsAbnormal(dataset, multiplier) end

--- Reads the given data and tries to give a forecast.
--- @param dataset number[] The dataset to forecast. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param L number Length of the window on the series for building the trajectory matrix (L). Suggestions: Input
--- @param N number Length of series that is kept in buffer for modeling (N). Suggestions: Input
--- @param forecastCount number Amount of future data points. Suggestions: Input
--- @return number[] The forecasted values. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function SimpleForecastBySsa(dataset, L, N, forecastCount) end

