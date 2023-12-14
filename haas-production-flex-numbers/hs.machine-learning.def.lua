--- MAchine Learning

--- Looks to a numberic array and tells if the last value is abnormal
--- @param dataset number[] Dataset. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param multiplier number | number[] Multiplier to control the sensitivity (1-3). Suggestions: Input
--- @return boolean. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsAbnormal(dataset, multiplier) end

--- Looks to the crypto trading news and returns the sentiment of it
--- @return number | number[]. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function NewsSentiment() end

--- Reads the given data and tries to give a forecast
--- @param dataset number[] Dataset. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param L number | number[] Length of the window on the series for building the trajectory matrix (L). Suggestions: Input
--- @param N number | number[] Length of series that is kept in buffer for modeling (N). Suggestions: Input
--- @param forecastCount number | number[] Amount of future data points. Suggestions: Input
--- @return number[]. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function SimpleForecastBySsa(dataset, L, N, forecastCount) end

