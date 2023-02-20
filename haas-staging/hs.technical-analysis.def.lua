--- Technical Analysis

--- The object returned by ABANDS.
--- @class ResultOf_ABANDS
--- @field upper number[] Upper bands of the ABands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field middle number[] Middle bands of the ABands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field lower number[] Lower bands of the ABands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] Upper bands of the ABands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Middle bands of the ABands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Lower bands of the ABands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- Acceleration Bands (ABANDS) created by Price Headley.
---                             Plots bands around a simple moving average as the midpoint and the upper and lower
---                             bands are of equal distance from this midpoint.
---                             Look for breakouts outside these bands, while also using the shorter time frames
---                             to define likely support and resistance levels at the lower and upper Acceleration Bands. This indicator is usually plotted on the price chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return ResultOf_ABANDS Returns an array with 3 results arrays. Upper on index 1, middle on index 2 and lower on index 3. Output Suggestions: ArrayGet, ArrayIndex, PlotBBandsChart
function ABANDS(high, low, close, period) end

--- Accumulation/Distribution Line (AD) Developed by Marc Chaikin, the Accumulation Distribution
--- Line is a volume-based indicator designed to measure the cumulative flow of money into and out of a security. Chaikin
--- originally referred to the indicator as the Cumulative Money Flow Line. As with cumulative indicators, the Accumulation
--- Distribution Line is a running total of each period's Money Flow Volume. First, a multiplier is calculated based on the
--- relationship of the close to the high-low range. Second, the Money Flow Multiplier is multiplied by the period's volume
--- to come up with a Money Flow Volume. A running total of the Money Flow Volume forms the Accumulation Distribution Line. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param volume number[] Market volume array. Suggestions: GetVolume
--- @return number[] Returns the AD result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function AD(high, low, close, volume) end

--- Developed by Marc Chaikin, the Chaikin Oscillator (ADOSC) measures the momentum of the
--- Accumulation Distribution Line using the MACD formula. (This makes it an indicator of an indicator.)
--- The Chaikin Oscillator is the difference between the 3-day and 10-day EMAs of the Accumulation Distribution
--- Line. Like other momentum indicators, this indicator is designed to anticipate directional changes in the
--- Accumulation Distribution Line by measuring the momentum behind the movements.
--- A momentum change is the first step to a trend change. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param volume number[] Market volume array. Suggestions: GetVolume
--- @param fastPeriod number Fast period length. Suggestions: Input
--- @param slowPeriod number Slow period length. Suggestions: Input
--- @return number[] Returns the ADOSC result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ADOSC(high, low, close, volume, fastPeriod, slowPeriod) end

--- The Average Directional Index (ADX) depicts a presence or absence of a trend.
--- ADX advices on the strength of the dominant forces that move market prices here and now.
--- In other words, ADX advices on trend tendencies: whether the trend is going to continue
--- and strengthen or it is about to lose its positions. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ADX result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ADX(high, low, close, period) end

--- Average Directional Movement Index Rating (ADXR) is a smoothed version
--- of ADX indicator and is used as a rating of the Directional Movement while smoothing out ADX values.
--- If to compare ADXR to ADX, the smoother ADXR doesn't depend much on fast short-term market turns and
--- reversals, which allows to minimize trading risks when relying on ADXR in the long term. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ADXR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ADXR(high, low, close, period) end

--- The Awesome Oscillator (AO) shows the difference in between the 5 SMA and 34 SMA.
--- If to be precise, 5 SMA of mid-prices is subtracted from 34 SMA of mid-prices which allows to see the market momentum. This indicator is usually plotted to its own chart.
--- @param hl2prices number[] Middle prices array ([High + Low] / 2). Suggestions: HLPrices
--- @param shortLength number Shorter period length. Suggestions: Input
--- @param longLength number Longer period length. Suggestions: Input
--- @return number[] Returns the AO result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function AO(hl2prices, shortLength, longLength) end

--- The optional parameters of APO.
--- @shape OptionalParametersOf_APO
--- @field maType Enum | nil MA type used in the calculation.

--- The Absolute Price Oscillator (APO) displays the difference between two
--- exponential moving averages of an asset's price and is expressed as an absolute value. This indicator is usually plotted to its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastPeriod number Faster period length. Suggestions: Input
--- @param slowPeriod number Slower period length. Suggestions: Input
--- @param maType Enum Optional - MA type used in the calculation. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return number[] Returns the APO result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(prices: number[], fastPeriod: number, slowPeriod: number): number[]
--- @overload fun(prices: number[], fastPeriod: number, slowPeriod: number, optionalParameters: OptionalParametersOf_APO): number[]
function APO(prices, fastPeriod, slowPeriod, maType) end

--- The object returned by AROON.
--- @class ResultOf_AROON
--- @field aroonDn number[] Aroon Down. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field aroonUp number[] Aroon Up. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] Aroon Down. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Aroon Up. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- Aroon indicator is a young one, developed by Tushar Chande in 1995.
--- Aroon was created to measure the strength of a trend and potentials for its continuation as well
--- as the quality and type of the trend: up-trend, down-trend or sideways moving market. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return ResultOf_AROON Returns an array with 2 results arrays. Aroon down on index 1 & Aroon up on index 2. Output Suggestions: ArrayGet, ArrayIndex
function AROON(high, low, period) end

--- Aroon oscillator is based on Aroon Indicator. Aroon Oscillator is
--- a trend-following indicator that illustrates the strength of a current trend and its potentials to last. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the AROONOSC result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function AROONOSC(high, low, period) end

--- The Average True Range (ATR), developed by Wilder, gives traders a feel of what the historical volatility
--- was in order to prepare for trading in the actual market.
--- Currency pairs that get lower ATR readings suggest lower market volatility, while currency pairs with higher
--- ATR indicator readings require appropriate trading adjustments according to higher volatility. 
--- Wilder used the Moving average to smooth out the ATR indicator readings, so that ATR looks the way we know it. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ATR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ATR(high, low, close, period) end

--- The Average Deviation (AVGDEV) is simply an averaged version of the Standard Deviation (STDDEV). This indicator is usually plotted to its own chart.
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the AVGDEV result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function AVGDEV(close, period) end

--- The Average Price (AVGPRICE) is the price between open, high, low and close (aka OHLC/4). This indicator is usually plotted on the price chart.
--- @param open number[] Open prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the AVGPRICE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function AVGPRICE(open, high, low, close) end

--- The object returned by BBANDS.
--- @class ResultOf_BBANDS
--- @field upper number[] Upper band of the BBands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field middle number[] Middle band of the BBands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field lower number[] Lower band of the BBands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] Upper band of the BBands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Middle band of the BBands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Lower band of the BBands. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The optional parameters of BBANDS.
--- @shape OptionalParametersOf_BBANDS
--- @field maType Enum | nil MA type used in the calculation.

--- The Bollinger Band (BBANDS) study created
---                             by John Bollinger plots upper and lower envelope bands around the
---                             price of the instrument. The width of the bands is based on the
---                             standard deviation of the closing prices from a moving average of
---                             price. This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param devUp number Standard deviation above the middle bands. Suggestions: Input
--- @param devDn number Standard deviation below the middle bands. Suggestions: Input
--- @param maType Enum Optional - MA type used in the calculation. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return ResultOf_BBANDS Returns an array with 3 results arrays. Upper on index 1, middle on index 2 and lower on index 3. Output Suggestions: ArrayGet, ArrayIndex, PlotBBandsChart
--- @overload fun(prices: number[], period: number, devUp: number, devDn: number): ResultOf_BBANDS
--- @overload fun(prices: number[], period: number, devUp: number, devDn: number, optionalParameters: OptionalParametersOf_BBANDS): ResultOf_BBANDS
function BBANDS(prices, period, devUp, devDn, maType) end

--- The Beta (BETA) value can measure he volatility of a coin in relation to that of the market.
--- For stock investors the beta value[1] of a portfolio is an important measure of risk, a value above 1 means the
--- investment is more volatile than the market, a value lower than 1 is less volatile.
--- It can be helpful to do a beta analysis for your portfolio to see how returns match up against the beta and
--- spot real winners (low beta, high returns). Since most altcoins are still sold and bought using Bitcoin (BTC),
--- its price could be used as the [Market's source data] (2nd input parameter), which results BTC a beta of 1. This indicator is usually plotted to its own chart.
--- @param prices1 number[] Asset's source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param prices2 number[] Market's source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Lookback period length. Suggestions: Input
--- @return number[] Returns the BETA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function BETA(prices1, prices2, period) end

--- The Balance of Power (BOP) indicator measures the market
--- strength of buyers against sellers by assessing the ability of each side to drive prices to an extreme level.
--- The resulting values can be smoothed by a moving average. This indicator is usually plotted to its own chart.
--- @param open number[] Open prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the BOP result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function BOP(open, high, low, close) end

--- The Commodity Channel Index (CCI) compares the current price to an
--- average price over a period of time. The indicator fluctuates above or below zero,
--- moving into positive or negative territory. CCI is relatively high when prices are
--- far above their average, but is relatively low when prices are far below their average.
--- In this manner, CCI can be used to identify overbought and oversold levels, or to confirm trends. This indicator is usually plotted to its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the CCI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function CCI(high, low, close, period) end

--- The optional parameters of CDL.
--- @shape OptionalParametersOf_CDL
--- @field penetration number | nil Penetration threshold.

--- Candlestick pattern finder.
--- @param open number[] Open prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param type Enum The Candle Pattern (CDL) type. Suggestions: InputCdlTypes, TwoCrowsType, ThreeBlackCrowsType, ThreeInsideType, ThreeLineStrikeType, ThreeOutsideType, ThreeStarsInSouthType, ThreeWhiteSoldiersType, AdvanceBlockType, BeltHoldType, BreakawayType, ClosingMarubozuType, ConcealBabysWallType, CounterAttackType, DojiType, DojiStarType, DragonflyDojiType, EngulfingType, GapSideSideWhiteType, GravestoneDojiType, HammerType, HangingManType, HaramiType, HaramiCrossType, HignWaveType, HikkakeType, HikkakeModType, HomingPigeonType, IdenticalThreeCrowsType, InNeckType, InvertedHammerType, KickingType, KickingByLengthType, LadderBottomType, LongLeggedDojiType, LongLineType, MarubozuType, MatchingLowType, OnNeckType, PiercingType, RickshawManType, RiseFallThreeMethodsType, SeparatingLinesType, ShootingStarType, ShortLineType, SpinningTopType, StalledPatternType, StickSandwichType, TakuriType, TasukiGapType, ThrustingType, TristarType, UniqueThreeRiverType, UpsideGapTwoCrowsType, XSideGapThreeMethodsType, AbandonedBabyType, DarkCloudCoverType, MatHoldType, MorningDojiStarType, MorningStarType, EveningDojiStarType, EveningStarType
--- @param penetration number Optional - Penetration threshold. Suggestions: Input
--- @return number[] Returns a value. 0 is not found. Above 0 is long pattern found. Below 0 is short pattern found. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(open: number[], high: number[], low: number[], close: number[], type: Enum): number[]
--- @overload fun(open: number[], high: number[], low: number[], close: number[], type: Enum, optionalParameters: OptionalParametersOf_CDL): number[]
function CDL(open, high, low, close, type, penetration) end

--- The optional parameters of ChandelierExitLong.
--- @shape OptionalParametersOf_ChandelierExitLong
--- @field depth number | nil Depth length. Default is 20.
--- @field multiplier number | nil ATR multiplier. Default is 3.

--- Calculates the chandelier exit long price.
--- @param high number[] High prices array. Suggestions: HighPrices
--- @param close number[] Close prices array. Suggestions: LowPrices
--- @param low number[] Low prices array. Suggestions: ClosePrices, Prices
--- @param depth number Optional - Depth length. Default is 20. Suggestions: Input
--- @param multiplier number Optional - ATR multiplier. Default is 3. Suggestions: Input
--- @return number Returns the target price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(high: number[], close: number[], low: number[]): number
--- @overload fun(high: number[], close: number[], low: number[], depth: number): number
--- @overload fun(high: number[], close: number[], low: number[], optionalParameters: OptionalParametersOf_ChandelierExitLong): number
function ChandelierExitLong(high, close, low, depth, multiplier) end

--- The optional parameters of ChandelierExitShort.
--- @shape OptionalParametersOf_ChandelierExitShort
--- @field depth number | nil Depth length. Default is 20.
--- @field multiplier number | nil ATR multiplier. Default is 3.

--- Calculates the chandelier exit short price.
--- @param high number[] High prices array. Suggestions: HighPrices
--- @param close number[] Close prices array. Suggestions: LowPrices
--- @param low number[] Low prices array. Suggestions: ClosePrices, Prices
--- @param depth number Optional - Depth length. Default is 20. Suggestions: Input
--- @param multiplier number Optional - ATR multiplier. Default is 3. Suggestions: Input
--- @return number Returns the target price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(high: number[], close: number[], low: number[]): number
--- @overload fun(high: number[], close: number[], low: number[], depth: number): number
--- @overload fun(high: number[], close: number[], low: number[], optionalParameters: OptionalParametersOf_ChandelierExitShort): number
function ChandelierExitShort(high, close, low, depth, multiplier) end

--- The Choppiness Index, designed by E.W. Dreiss, is an indicator which is directionless. This means it doesn't show the market direction,
---                             rather reflects whether the market is choppy (trades sideways) or smooth (trending). The general way of interpreting
---                             this index is that higher values mean the market is choppy, while lower values equal directional movement.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the CHOP result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, IsBiggerThan, IsSmallerThan, Plot
function CHOP(high, low, close, period) end

--- The Chande Momentum Oscillator (CMO) indicates overbought
--- conditions when it reaches the 50 level and oversold conditions when it reaches −50.
--- You can also look for signals based on the CMO crossing above and below a signal line
--- composed of a 9-period moving average of the 20 period CMO. This indicator measures the trend strength. This indicator is usually plotted to its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the CMO result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function CMO(prices, period) end

--- The Coppock Curve (COPPOCK) is a smoothed momentum oscillator developed by Edwin “Sedge” Coppock.
--- It can help you isolate buying opportunities and exit points. Even though it was originally designed for long-term analysis,
--- it can be used on intraday, daily or weekly charts and the settings can be adjusted to suit one's style.
--- The main signals are generated with crosses above and below the zero line. This indicator is usually plotted to its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param roc1 number Period length of first ROC. Suggestions: Input
--- @param roc2 number Period length of second ROC. Suggestions: Input
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the COPPOCK result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function COPPOCK(prices, roc1, roc2, period) end

--- The Correlation (CORREL) is a statistical measure that reflects the correlation between two assets. 
--- In other words, this statistic tells us how closely one security is related to the other. 
--- Coefficient is above zero when both securities move in the same direction (up or down) and below zero when the two securities move in opposite directions. 
--- This indicator can also help traders diversify by identifying assets with a low or negative correlation to the market. This indicator is usually plotted to its own chart.
--- @param source1 number[] First source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param source2 number[] Second source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the CORREL result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function CORREL(source1, source2, period) end

--- The Connor's RSI (CRSI) is a momentum oscillator created by Larry Connors.
--- Three components combine to form this momentum oscillator; The RSI, UpDown Length, and Rate-of-Change.
--- Connors RSI outputs a value between 0 and 100, which is then used to identify short-term overbought
--- and oversold conditions, or to confirm trends. This indicator is usually plotted to its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param rsiPeriod number RSI period length. Suggestions: Input
--- @param udPeriod number UD period length. Suggestions: Input
--- @param length number Period length. Suggestions: Input
--- @return number[] Returns the CRSI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function CRSI(prices, rsiPeriod, udPeriod, length) end

--- The Double Exponential Moving Average (DEMA) was developed by Patrick Mulloy.
--- It is used for smoothing price series and attempts to offer a smoothed average with less
--- lag than a straight exponential moving average (EMA). This indicator is usually plotted directly on a price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the DEMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function DEMA(prices, period) end

--- The object returned by DONCHIAN.
--- @class ResultOf_DONCHIAN
--- @field upper number[] Upper band of the channel. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field middle number[] Middle band of the channel. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field lower number[] Lower band of the channel. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] Upper band of the channel. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Middle band of the channel. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Lower band of the channel. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Donchian Channel (DONCHIAN), developed by Richard Donchian.
--- Donchian Channel is formed by taking the highest high and the lowest low of the last n periods.
--- The area between the high and the low is the channel for the period chosen. This indicator is usually plotted on the price chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return ResultOf_DONCHIAN Returns an array with 3 results arrays. Upper on index 1, middle on index 2 and lower on index 3. Output Suggestions: ArrayGet, ArrayIndex, PlotBBandsChart
function DONCHIAN(high, low, period) end

--- The Detrended Price Oscillator (DPO) is an indicator
--- in technical analysis that attempts to eliminate the long-term trends in prices
--- by using a displaced moving average so it does not react to the most current price action.
--- This allows the indicator to show intermediate overbought and oversold levels effectively.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param shortLength number Shorter period length. Suggestions: Input
--- @param longLength number Longer period length. Suggestions: Input
--- @return number[] Returns the DPO result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function DPO(prices, shortLength, longLength) end

--- The Directional Movement Index (DX) is indicator in technical
--- analysis which is based on two other Welles Wilder's indicators: negative directional
--- indicator (-DI) and positive directional indicator (+DI). It was designed to evaluate
--- the strength of a trend and to define a period of sideways trading. This indicator is usually
--- plotted on its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the DX result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function DX(high, low, close, period) end

--- The Exponential Moving Average (EMA) is a weighted moving average
--- (WMA) that gives more weighting, or importance, to recent price data than the simple moving average (SMA) does.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the EMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function EMA(prices, period) end

--- The object returned by FastRSI.
--- @class ResultOf_FastRSI
--- @field rsi number[] Normal RSI result.
--- @field fastRsi number[] Fast RSI result.
--- @field [1] number[] Normal RSI result.
--- @field [2] number[] Fast RSI result.

--- The FastRSI is a custom implementation from Haasonline. It uses a custom RSI and EMA calculation.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param signal number Signal length. Suggestions: Input
--- @return ResultOf_FastRSI Returns the FastRSI result. Output Suggestions: GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function FastRSI(prices, period, signal) end

--- Hilbert Transform - The Dominant Cycle Period (HT_DCPERIOD).
--- The Hilbert Transform is a technique used to generate inphase and quadrature components
--- of a de-trended real-valued "analytic-like" signal (such as a Price Series) in order
--- to analyze variations of the instantaneous phase and amplitude. HTPeriod (or MESA Instantaneous Period)
--- returns the period of the Dominant Cycle of the analytic signal as generated by the Hilbert Transform.
--- The Dominant Cycle can be thought of as being the "most likely" period (in the range of 10 to 40)
--- of a sine function of the Price Series.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the HT_DCPERIOD result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function HT_DCPERIOD(prices) end

--- Hilbert Transform - The Dominant Cycle Phase (HT_DCPHASE)
--- The Hilbert Transform is a technique used to generate inphase and quadrature components
--- of a de-trended real-valued "analytic-like" signal (such as a Price Series) in order
--- to analyze variations of the instantaneous phase and amplitude. HTDCPhase returns the
--- Hilbert Transform Phase of the Dominant Cycle. The Dominant Cycle Phase lies in the
--- range of 0 to 360 degrees.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the HT_DCPHASE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function HT_DCPHASE(prices) end

--- The object returned by HT_PHASOR.
--- @class ResultOf_HT_PHASOR
--- @field inPhaseOut number[] In-Phase component. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field quadratureOut number[] Quadrature component. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] In-Phase component. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Quadrature component. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- Hilbert Transform - The Phasor Components (HT_PHASOR)
--- The Hilbert Transform is a technique used to generate inphase and quadrature components
--- of a de-trended real-valued "analytic-like" signal (such as a Price Series) in order
--- to analyze variations of the instantaneous phase and amplitude.
--- In-Phase is the Hilbert Transform generated In-Phase component of the input Price Series.
--- Quadrature is the Hilbert Transform generated Quadrature component of the input Price Series.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return ResultOf_HT_PHASOR Returns the HT_PHASOR result. Output Suggestions: ArrayGet, ArrayIndex
function HT_PHASOR(prices) end

--- The object returned by HT_SINE.
--- @class ResultOf_HT_SINE
--- @field sine number[] Sine of the DC Phase. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field leadSine number[] Lead Sine of the DC Phase advanced by 45 degrees. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] Sine of the DC Phase. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Lead Sine of the DC Phase advanced by 45 degrees. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- Hilbert Transform - The SineWave (HT_SINE)
--- The Hilbert Transform is a technique used to generate inphase and quadrature components
--- of a de-trended real-valued "analytic-like" signal (such as a Price Series) in order
--- to analyze variations of the instantaneous phase and amplitude. HTDCPhase returns the
--- Hilbert Transform Phase of the Dominant Cycle. The Dominant Cycle Phase lies in the
--- range of 0 to 360 degrees.
--- The Hilbert Transform Sine is just the sine of the DC Phase. 
--- The Hilbert Transform Lead Sine is just the sine of the DC Phase advanced by 45 degrees.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return ResultOf_HT_SINE Returns the HT_SINE result. Output Suggestions: ArrayGet, ArrayIndex
function HT_SINE(prices) end

--- Hilbert Transform - The Trend Line (HT_TRENDLINE)
--- The Hilbert Transform is a technique used to generate inphase and quadrature components
--- of a de-trended real-valued "analytic-like" signal (such as a Price Series) in order
--- to analyze variations of the instantaneous phase and amplitude. HTTrendline (or MESA Instantaneous Trendline)
--- returns the Price Series value after the Dominant Cycle of the analytic signal as generated by the Hilbert
--- Transform has been removed. The Dominant Cycle can be thought of as being the "most likely" period
--- (in the range of 10 to 40) of a sine function of the Price Series.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the HT_TRENDLINE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function HT_TRENDLINE(prices) end

--- Hilbert Transform - The Trend Mode (HT_TRENDMODE).
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the HT_TRENDMODE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function HT_TRENDMODE(prices) end

--- The object returned by ICHIMOKU.
--- @class ResultOf_ICHIMOKU
--- @field conversion number[] The conversion line of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field base number[] The base line of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field spanA number[] The leading span  of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field spanB number[] The leading span B of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] The conversion line of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] The base line of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] The leading span  of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [4] number[] The leading span B of the Ichimoku. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Ichimoku Clouds (ICHIMOKU) also known as Ichimoku Kinko Hyo, developed by journalist Goichi Hosoda,
--- is a versatile indicator that defines support and resistance, identifies trend direction, gauges momentum and provides trading signals.
--- Ichimoku Kinko Hyo translates into “one look equilibrium chart”. With one look, chartists
--- can identify the trend and look for potential signals within that trend. Even though the
--- Ichimoku Cloud may seem complicated when viewed on the price chart, it's actually a rather
--- straightforward indicator; the concepts are easy to understand and the signals are well-defined.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param tenkansen number Period length for Tenkan-sen. Suggestions: Input
--- @param kijunsen number Period length for Kijun-sen. Suggestions: Input
--- @param senkouspanb number Period length for Senkou Span B. Suggestions: Input
--- @return ResultOf_ICHIMOKU Returns the ICHIMOKU result. Output Suggestions: ArrayGet, ArrayIndex
function ICHIMOKU(prices, tenkansen, kijunsen, senkouspanb) end

--- The Intraday Momentum Index (IMI), developed by Tushar Chande,
--- combines aspects of candlestick analysis with the relative strength index (RSI). The intraday
--- indicator was designed to provide investors with a way to find optimal days to buy and sell.
--- @param open number[] Open prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the IMI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function IMI(open, close, period) end

--- The optional parameters of KAMA.
--- @shape OptionalParametersOf_KAMA
--- @field fastest number | nil Fastest smoothing period length.
--- @field slowest number | nil Slowest smoothing period length.

--- The Kaufman's Adaptive Moving Average (KAMA), developed by Perry Kaufman,
--- is an intelligent moving average. The powerful trend-following indicator is based on the
--- Exponential Moving Average (EMA) and is responsive to both trend and volatility.
--- Like all moving averages, the KAMA can be used to visualize the trend. This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param fastest number Optional - Fastest smoothing period length. Suggestions: Input
--- @param slowest number Optional - Slowest smoothing period length. Suggestions: Input
--- @return number[] Returns the KAMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(prices: number[], period: number): number[]
--- @overload fun(prices: number[], period: number, fastest: number): number[]
--- @overload fun(prices: number[], period: number, optionalParameters: OptionalParametersOf_KAMA): number[]
function KAMA(prices, period, fastest, slowest) end

--- The optional parameters of KAMA2.
--- @shape OptionalParametersOf_KAMA2
--- @field fastest number | nil Fastest smoothing period length.
--- @field slowest number | nil Slowest smoothing period length.

--- The Kaufman's Adaptive Moving Average (KAMA2), developed by Perry Kaufman,
--- is an intelligent moving average. The powerful trend-following indicator is based on the
--- Exponential Moving Average (EMA) and is responsive to both trend and volatility.
--- Like all moving averages, the KAMA can be used to visualize the trend. This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param fastest number Optional - Fastest smoothing period length. Suggestions: Input
--- @param slowest number Optional - Slowest smoothing period length. Suggestions: Input
--- @return number[] Returns the KAMA2 result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(prices: number[], period: number): number[]
--- @overload fun(prices: number[], period: number, fastest: number): number[]
--- @overload fun(prices: number[], period: number, optionalParameters: OptionalParametersOf_KAMA2): number[]
function KAMA2(prices, period, fastest, slowest) end

--- The object returned by KELTNER.
--- @class ResultOf_KELTNER
--- @field upper number[] Upper bands of the KELTNER. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field middle number[] Middle bands of the KELTNER. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field lower number[] Lower bands of the KELTNER. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] Upper bands of the KELTNER. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Middle bands of the KELTNER. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Lower bands of the KELTNER. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The optional parameters of KELTNER.
--- @shape OptionalParametersOf_KELTNER
--- @field atrPeriod number | nil ATR period length.
--- @field multiplier number | nil ATR multiplier.

--- The Keltner Channel (KELTNER), originally developed by Chester Keltner, extended by Linda Bradford Raschke,
--- uses a volatility-based envelopes set above and below an exponential moving average.
--- This indicator is similar to Bollinger Bands, which use the standard deviation (STDDEV)
--- to set the bands. Instead of using the standard deviation, Keltner Channels use
--- the Average True Range (ATR) to set channel width. The channels are typically
--- set 2x ATR values above and below the EMA. The exponential
--- moving average dictates direction and the Average True Range sets channel width.
--- Keltner Channels are a trend following indicator used to identify reversals with
--- channel breakouts and channel direction. Channels can also be used to identify
--- overbought and oversold levels when the market is ranging. This indicator is usually plotted on the price chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param emaPeriod number EMA period length. Suggestions: Input
--- @param atrPeriod number Optional - ATR period length. Suggestions: Input
--- @param multiplier number Optional - ATR multiplier. Suggestions: Input
--- @return ResultOf_KELTNER Returns the KELTNER result. Output Suggestions: ArrayGet, ArrayIndex, PlotBBandsChart
--- @overload fun(high: number[], low: number[], close: number[], emaPeriod: number): ResultOf_KELTNER
--- @overload fun(high: number[], low: number[], close: number[], emaPeriod: number, atrPeriod: number): ResultOf_KELTNER
--- @overload fun(high: number[], low: number[], close: number[], emaPeriod: number, optionalParameters: OptionalParametersOf_KELTNER): ResultOf_KELTNER
function KELTNER(high, low, close, emaPeriod, atrPeriod, multiplier) end

--- Kairi method (KRI) is similar to Momentum according to its application mode.
--- The oscillator fluctuates around 0 but the fluctuation range is wider. KRI can be used for any time frame.
--- It is one of the simplest oscillators. When creating the indicator, deviation of a price from its simple
--- moving average is calculated and the result is shown in percentage of the average.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the KRI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function KRI(prices, period) end

--- The object returned by KST.
--- @class ResultOf_KST
--- @field kst number[] KST result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field signal number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] KST result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- Know Sure Thing (KST), developed by Martin Pring, is a momentum oscillator based on the smoothed
--- Rate-of-Change (ROC) for four different periods. In short, KST measures price momentum for four different price cycles, combining
--- them into a single momentum oscillator. Like any other unbound momentum oscillator, chartists can use KST to look for divergences, signal
--- line crossovers, and centerline crossovers. Pring frequently applied trend lines to KST. Although trend line signals do not occur
--- often, Pring notes that such breaks reinforce signal line crossovers. This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param rocPeriod1 number 1st ROC period length. Suggestions: Input
--- @param rocSmaPeriod1 number 1st SMA-of-ROC period length. Suggestions: Input
--- @param rocPeriod2 number 2nd ROC period length. Suggestions: Input
--- @param rocSmaPeriod2 number 2nd SMA-of-ROC period length. Suggestions: Input
--- @param rocPeriod3 number 3rd ROC period length. Suggestions: Input
--- @param rocSmaPeriod3 number 3rd SMA-of-ROC period length. Suggestions: Input
--- @param rocPeriod4 number 4th ROC period length. Suggestions: Input
--- @param rocSmaPeriod4 number 4th SMA-of-ROC period length. Suggestions: Input
--- @param signalPeriod number Signal period length. Suggestions: Input
--- @return ResultOf_KST Returns the KST result. Output Suggestions: ArrayGet, ArrayIndex
function KST(prices, rocPeriod1, rocSmaPeriod1, rocPeriod2, rocSmaPeriod2, rocPeriod3, rocSmaPeriod3, rocPeriod4, rocSmaPeriod4, signalPeriod) end

--- The optional parameters of LINEARREG.
--- @shape OptionalParametersOf_LINEARREG
--- @field type Enum | nil The type of the Linear Regression.

--- The Linear Regression (LINEARREG)
--- is a trend following indicator that plots a dynamic version of the linear
--- regression indicator. The concept is to track the trend not using basic
--- averages or weighted averages – as in the case of moving averages – but
--- rather by taking the "best fit" line to match the data.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param type Enum Optional - The type of the Linear Regression. Suggestions: LR_Angle, LR_Default, LR_Intercept, LR_Slope
--- @return number[] Returns the LINEARREG result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(prices: number[], period: number): number[]
--- @overload fun(prices: number[], period: number, optionalParameters: OptionalParametersOf_LINEARREG): number[]
function LINEARREG(prices, period, type) end

--- The Moving Averages (MA) combines multiple Moving Averages
--- in one command. Works well together with the InputMaTypes() command. Supported types are:
--- 'sma', 'ema', 'dema', 'tema', 'trima', 't3', 'mama', 'kama' and 'wma'.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param maType Enum The type of Moving Average. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return number[] Returns the MA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function MA(prices, period, maType) end

--- The object returned by MACD.
--- @class ResultOf_MACD
--- @field macd number[] MACD result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field signal number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field hist number[] Histogram result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] MACD result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Histogram result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Moving Average Convergence Divergence (MACD), developed by ,
--- is a trend-following momentum indicator that shows the relationship between two moving averages of an asset's price.
--- The MACD is calculated by subtracting the longer-period Exponential Moving Average (EMA) from the shorter-period EMA.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastPeriod number Fast period length. Suggestions: Input
--- @param slowPeriod number Slow period length. Suggestions: Input
--- @param signalPeriod number Signal period length. Suggestions: Input
--- @return ResultOf_MACD Returns the MACD result. Output Suggestions: ArrayGet, ArrayIndex
function MACD(prices, fastPeriod, slowPeriod, signalPeriod) end

--- The object returned by MACDEXT.
--- @class ResultOf_MACDEXT
--- @field macd number[] MACD result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field signal number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field hist number[] Histogram result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] MACD result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Histogram result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Moving Average Convergence Divergence [Extended] (MACDEXT) is
--- the same as MACD, but provides more parameters to fiddle with.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastPeriod number Fast period length. Suggestions: Input
--- @param fastType Enum Fast MA type. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @param slowPeriod number Slow period length. Suggestions: Input
--- @param slowType Enum Slow MA type. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @param signalPeriod number Signal period length. Suggestions: Input
--- @param signalType Enum Signal MA type. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return ResultOf_MACDEXT Returns the MACDEXT result. Output Suggestions: ArrayGet, ArrayIndex
function MACDEXT(prices, fastPeriod, fastType, slowPeriod, slowType, signalPeriod, signalType) end

--- The object returned by MACDFIX.
--- @class ResultOf_MACDFIX
--- @field macd number[] MACD result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field signal number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field hist number[] Histogram result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] MACD result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] Signal result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [3] number[] Histogram result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Moving Average Convergence Divergence [Fixed] (MACDFIX) is
--- the same as MACD, but uses fixed periods for the fast (12) and slow (26) EMAs.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param signalPeriod number Signal period length. Suggestions: Input
--- @return ResultOf_MACDFIX Returns the MACDFIX result. Output Suggestions: ArrayGet, ArrayIndex
function MACDFIX(prices, signalPeriod) end

--- The object returned by MAMA.
--- @class ResultOf_MAMA
--- @field mama number[] The MESA Adaptive Moving Average values. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field fama number[] The Following Adaptive Moving Average values. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] The MESA Adaptive Moving Average values. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] The Following Adaptive Moving Average values. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Mesa Adaptive Moving Average (MAMA) is a trend-following
--- indicator which adapts to price movement "based on the rate change of phase as measured by the Hilbert Transform Discriminator".
--- This method of adaptation features a fast and a slow moving average so that the composite moving average swiftly responds to price
--- changes and holds the average value until the next bar’s close. 
--- The Averages act as support and resistance areas and the price will tend to react to them.
--- This makes pullbacks to the MAMA and FAMA suitable with-trend entry areas. This indicator is usually plotted on the price chart.
--- NOTE: The FastLimit and SlowLimit parameters should be between 0.01 and 0.99.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastlimit number Limit for fastest speed (bigger = faster). Suggestions: Input
--- @param slowlimit number Limit for slowest speed (smaller = slower). Suggestions: Input
--- @return ResultOf_MAMA Returns the MAMA result. Output Suggestions: ArrayGet, ArrayIndex
function MAMA(prices, fastlimit, slowlimit) end

--- The optional parameters of MAVP.
--- @shape OptionalParametersOf_MAVP
--- @field maType Enum | nil Type of the Moving Average.

--- The Moving Average Variable Period (MAVP) is a moving average
--- that adjusts itself based on the period settings given to it. The [inPeriods] array should be the
--- same length as [prices] array. The Nth period will be used to calculate the Nth data point.
--- It is essentially the same as changing the period yourself using the MA() command, but using this
--- command instead, you can use for example the absolute (ABS) CMO output values as the periods:
--- local periods = Abs(CMO(ClosePrices(), 20)).
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param inPeriods number[] Array of period lengths (must be equal length to source data!). Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param minPeriod number Minimum allowed period (fastest). Suggestions: Input
--- @param maxPeriod number Maximum allowed period (slowest). Suggestions: Input
--- @param maType Enum Optional - Type of the Moving Average. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return number[] Returns the MAVP result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @overload fun(prices: number[], inPeriods: number[], minPeriod: number, maxPeriod: number): number[]
--- @overload fun(prices: number[], inPeriods: number[], minPeriod: number, maxPeriod: number, optionalParameters: OptionalParametersOf_MAVP): number[]
function MAVP(prices, inPeriods, minPeriod, maxPeriod, maType) end

--- Max Index (MAXINDEX) will return the index of the
--- highest high in source data within the given period. You can see this index as the "distance"
--- to the highest high. To get the highest high value, use this index with the input
--- array or use GetHigh/GetHighs command instead.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number Returns the MAXINDEX result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MAXINDEX(prices, period) end

--- Median Price (MEDPRICE) indicator is simply the midpoint of market's prices.
--- The Typical Price and Weighted Close are similar indicators. The Median Price indicator
--- provides a simple, single-line chart of the market's"average price."
--- This average price is useful when you want a simpler view of prices.
--- This indicator is usually plotted on the price chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the MEDPRICE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MEDPRICE(high, low) end

--- The Money Flow Index (MFI), developed by Gene Quong and Avrum Soudack,
--- is an oscillator that uses both price and volume to measure buying and selling pressure.
--- MFI is also known as volume-weighted RSI. MFI starts with the typical price for each period.
--- Money flow is positive when the typical price rises (buying pressure) and negative when the
--- typical price declines (selling pressure). A ratio of positive and negative money flow is
--- then plugged into an RSI formula to create an oscillator that moves between zero and one hundred.
--- As a momentum oscillator tied to volume, MFI is best suited to identify reversals and price
--- extremes with a variety of signals.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param volume number[] Market volume array. Suggestions: GetVolume
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the MFI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal
function MFI(high, low, close, volume, period) end

--- Midpoint price (MIDPOINT) is similar to the
---  Midprice (MIDPRICE), except the highest and lowest values are returned from
---  the same input field; the source data. Midpoint indicator calculates the highest
---  close and lowest close within the look back period and averages
---  the two values.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the MIDPOINT result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MIDPOINT(prices, period) end

--- MidPrice (MIDPRICE) returns the midpoint value from
---  two different input fields. The Midprice indicator calculates the
---  highest high and lowest low within the look back period and averages
---  the two values to return the Midprice.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the MIDPRICE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MIDPRICE(high, low, period) end

--- Min Index (MININDEX) will return the index of the
--- lowest low in source data within the given period. You can see this index as the "distance"
--- to the lowest low. To get the lowest low value, use this index with the input
--- array or use GetLow/GetLows command instead.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number Returns the MININDEX result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MININDEX(prices, period) end

--- The Negative Directional indicator (MINUSDI) measures the presence of a
--- downtrend and is part of the Average Directional Index (ADX). If -DI is sloping upward, it's a sign
--- that the price downtrend is getting stronger. This indicator is nearly always plotted along with
--- the Positive Directional indicator (PLUSDI).
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the MINUSDI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MINUSDI(high, low, close, period) end

--- The Negative Directional Movement (MINUSDM) indicator is the basis of
--- the Negative Directional indicator (MINUSDI).
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the MINUSDM result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MINUSDM(high, low, period) end

--- The Momentum Indicator (MOM) is a leading indicator measuring a
--- asset's rate-of-change. It compares the current price with the previous price from a number
--- of periods ago. The ongoing plot forms an oscillator that moves above and below 0.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the MOM result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function MOM(prices, period) end

--- The Normalized Average True Range (NATR) is the normalized version
--- of the Average True Range (ATR) indicator.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the NATR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function NATR(high, low, close, period) end

--- The On-Balance Volume (OBV), developed by Joseph Granville,
--- is a momentum indicator that uses volume flow to predict changes in asset price.
--- He believed that when volume increases sharply without a significant change in the asset's price,
--- the price will eventually jump upward or fall downward.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param volumes number[] Market volume array. Suggestions: GetVolume
--- @return number[] Returns the OBV result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function OBV(prices, volumes) end

--- The Positive Directional indicator (PLUSDI) measures the presence of an
--- uptrend and is part of the Average Directional Index (ADX). If +DI is sloping upward, it's a sign
--- that the price uptrend is getting stronger. This indicator is nearly always plotted along with
--- the Negative Directional indicator (MINUSDI).
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the PLUSDI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function PLUSDI(high, low, close, period) end

--- The Positive Directional Movement (PLUSDM) indicator is the basis of
--- the Negative Directional indicator (PLUSDI).
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the PLUSDM result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function PLUSDM(high, low, period) end

--- The Percentage Price Oscillator (PPO) is a momentum oscillator
--- that measures the difference between two moving averages as a percentage of the larger
--- moving average. As with its cousin, MACD, the Percentage Price Oscillator is shown with
--- a signal line, a histogram and a centerline.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastPeriod number Fast period length. Suggestions: Input
--- @param slowPeriod number Slow period length. Suggestions: Input
--- @param maType Enum The type of Moving Average used. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return number[] Returns the PPO result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function PPO(prices, fastPeriod, slowPeriod, maType) end

--- The Rate-of-Change (ROC) is often used when speaking about momentum,
--- and it can generally be expressed as a ratio between a change in one variable relative to a
--- corresponding change in another; graphically, the rate of change is represented by the slope
--- of a line. The ROC is often illustrated by the Greek letter delta.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ROC result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ROC(prices, period) end

--- The Rate-of-Change Percentage (ROCP) is an alternative for ROC,
--- showing the values as percentages rather than absolutes. This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ROCP result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ROCP(prices, period) end

--- The Rate-of-Change Ratio (ROCR) is an alternative for ROC,
--- showing the values as a ratio rather than absolutes. This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ROCR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ROCR(prices, period) end

--- The Rate-of-Change Ratio 100 Scale (ROCR100) is an alternative for ROC,
--- showing the values as a ratio rather than absolutes. This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ROCR100 result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ROCR100(prices, period) end

--- The Relative Strength Index (RSI), developed by J. Welles Wilder,
--- is a momentum oscillator that measures the speed and change of price movements.
--- The RSI oscillates between zero and 100. Traditionally the RSI is considered
--- overbought when above 70 and oversold when below 30, but can also be used to confirm
--- trends. This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the RSI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function RSI(prices, period) end

--- The Relative Strength Index (RSI_ALTB), developed by J. Welles Wilder,
--- is a momentum oscillator that measures the speed and change of price movements.
--- The RSI oscillates between zero and 100. Traditionally the RSI is considered
--- overbought when above 70 and oversold when below 30, but can also be used to confirm
--- trends. This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the RSI_ALTB result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function RSI_ALTB(prices, period) end

--- The Parabolic Stop-And-Reverse (SAR), developed by Welles Wilder,
--- refers to a price-and-time-based trading system. Wilder called this the "Parabolic Time/Price System."
--- SAR stands for "stop and reverse", which is the actual indicator used in the system.
--- SAR trails price as the trend extends over time. The indicator is below prices as they're rising
--- and above prices as they're falling. In this regard, the indicator stops and reverses when the price
--- trend reverses and breaks above or below the indicator.
--- This indicator is usually plotted on the price chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param acceleration number Acceleration amount. Suggestions: Input
--- @param maxSpeed number Maximum speed. Suggestions: Input
--- @return number[] Returns the SAR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function SAR(high, low, acceleration, maxSpeed) end

--- The Parabolic Stop-And-Reverse [Extended] (SAREXT) is the same indicator as SAR(),
--- but opens up more parameters for the user to modify.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param startValue number Starting value. Suggestions: Input
--- @param offsetOnReverse number Offset amount on reverse point. Suggestions: Input
--- @param accelInitLong number Initial acceleration for Long position. Suggestions: Input
--- @param accelLong number Acceleration amount for Long position. Suggestions: Input
--- @param accelMaxLong number Maximum acceleration for Long position. Suggestions: Input
--- @param accelInitShort number Initial acceleration for Short position. Suggestions: Input
--- @param accelShort number Acceleration amount for Short position. Suggestions: Input
--- @param accelMaxShort number Maximum acceleration for Short position. Suggestions: Input
--- @return number[] Returns the SAREXT result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function SAREXT(high, low, startValue, offsetOnReverse, accelInitLong, accelLong, accelMaxLong, accelInitShort, accelShort, accelMaxShort) end

--- The object returned by SlowRSI.
--- @class ResultOf_SlowRSI
--- @field rsi number[] Normal RSI result.
--- @field slowRsi number[] Slow RSI result.
--- @field [1] number[] Normal RSI result.
--- @field [2] number[] Slow RSI result.

--- The SlowRSI is a custom implementation from Haasonline. It uses a custom RSI and EMA calculation.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param signal number Signal length. Suggestions: Input
--- @return ResultOf_SlowRSI Returns the SlowRSI result. Output Suggestions: GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function SlowRSI(prices, period, signal) end

--- The Simple Moving Average (SMA) is an arithmetic moving average
--- calculated by adding recent closing prices and then dividing that by the number of time
--- periods in the calculation average.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the SMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function SMA(prices, period) end

--- The Simple Moving Average (SMA2) is an arithmetic moving average
--- calculated by adding recent closing prices and then dividing that by the number of time
--- periods in the calculation average.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the SMA2 result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function SMA2(prices, period) end

--- The Simple Stochastic (SSTOCH)
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the SSTOCH result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function SSTOCH(prices, period) end

--- The Standard Deviation (STDDEV) is an indicator that measures
--- the size of recent price moves of an asset, to predict how volatile the price may be in
--- future. It can help you decide whether the volatility of the price is likely to increase
--- or decrease.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param deviation number Amount of deviation. Suggestions: Input
--- @return number[] Returns the STDDEV result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function STDDEV(prices, period, deviation) end

--- The object returned by STOCH.
--- @class ResultOf_STOCH
--- @field slowK number[] The %K line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field slowD number[] The %D line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] The %K line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] The %D line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Stochastic Oscillator [Full] (STOCH), developed by Dr. George Lane,
--- is a momentum indicator that uses support and resistance levels. The term stochastic
--- refers to the point of a current price in relation to its price range over a period of time.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastK number Fast %K period length. Suggestions: Input
--- @param slowK number Slow %K period length. Suggestions: Input
--- @param slowD number Slow %D period length. Suggestions: Input
--- @return ResultOf_STOCH Returns the STOCH result. Output Suggestions: ArrayGet, ArrayIndex
function STOCH(high, low, close, fastK, slowK, slowD) end

--- The object returned by STOCHF.
--- @class ResultOf_STOCHF
--- @field fastK number[] The %K line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field fastD number[] The %D line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] The %K line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] The %D line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Stochastic Oscillator [Fast] (STOCHF).
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param fastK number Fast %K period length. Suggestions: Input
--- @param fastD number Fast %D period length. Suggestions: Input
--- @param maType Enum MA type. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return ResultOf_STOCHF Returns the STOCHF result. Output Suggestions: ArrayGet, ArrayIndex
function STOCHF(high, low, close, fastK, fastD, maType) end

--- The object returned by STOCHRSI.
--- @class ResultOf_STOCHRSI
--- @field fastK number[] The %K line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field fastD number[] The %D line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] The %K line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] The %D line. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The Stochastic-RSI (STOCHRSI) is essentially an indicator of an indicator.
--- The Stochastic RSI is an oscillator that calculates a value between 0 and 1 which is
--- then plotted as a line. This indicator is primarily used for identifying overbought and oversold conditions.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param rsiPeriod number Period length. Suggestions: Input
--- @param fastK number Fast %K period length. Suggestions: Input
--- @param fastD number Fast %D period length. Suggestions: Input
--- @param maType Enum The type of Moving Average. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @return ResultOf_STOCHRSI Returns the STOCHRSI result. Output Suggestions: ArrayGet, ArrayIndex
function STOCHRSI(prices, rsiPeriod, fastK, fastD, maType) end

--- The Triple Exponential Moving Average (T3), developed by Tim Tillson,
--- attempts to offers a moving average with better smoothing than traditional exponential moving average.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param vFactor number Volume factor between 0 and 1. Suggestions: Input
--- @return number[] Returns the T3 result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function T3(prices, period, vFactor) end

--- The Triple Exponential Moving Average (TEMA), developed by Patrick Mulloy,
--- offers a moving average with less lag then traditional exponential moving average.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the TEMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function TEMA(prices, period) end

--- The True Range (TRANGE) developed by J. Welles Wilder,
--- is a technical analysis volatility indicator. The indicator does not provide an
--- indication of price trend, simply the degree of price volatility.
--- This indicator is usually plotted on its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the TRANGE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function TRANGE(high, low, close) end

--- The Triangular Moving Average (TRIMA) is similar to other
--- moving averages in that it shows the average (or mean) price over a specified number
--- of data points (usually a number of price bars). However, the triangular moving average
--- differs in that it is double smoothed — which also means it is averaged twice.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the TRIMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function TRIMA(prices, period) end

--- TRIX is a momentum oscillator that displays the percent rate of change of a triple exponentially smoothed moving average.
--- This indicator is usually plotted on its own chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the TRIX result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function TRIX(prices, period) end

--- Time Series Forecast (TSF) is a linear
---  regression calculation that plots each bar’s current regression
---  value using the least square fit method. This indicator is sometimes
---  referred to as a moving linear regression similar to a moving average.
---  For example, the TSF value that covers 10 days will have the same
---  value as a 10-day Time Series Forecast. This differs slightly from
---  the Linear Regression indicator in that the Linear Regression indicator
---  does not add the slope to the ending value of the regression line.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the TSF result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function TSF(prices, period) end

--- The True Strength Index (TSI) is a momentum oscillator based on a double smoothing of price changes.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param periodA number First smoothing period length. Suggestions: Input
--- @param periodB number Second smoothing period length. Suggestions: Input
--- @return number[] Returns the TSI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function TSI(prices, periodA, periodB) end

--- Typical Price (TYPPRICE) is simply an average of asset's price.
--- The Median Price (MEDPRICE) and Weighted Close Price (WCLPRICE) are similar indicators.
--- The Typical Price indicator provides a simple, single-line plot of the asset's average price.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the TYPPRICE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function TYPPRICE(high, low, close) end

--- The UpDown RSI (UDRSI) is an RSI Based Indicator that uses
--- an alternative formula to calculate the momentum oscillator. This Indicator works exactly like
--- RSI but instead of determining this from the difference in price, it is calculated by what
--- is called trend stepping. Trend stepping basically measures the closing price of a range of
--- candles and when the price of one candle is lower than the next, it is calculated as 1 price
--- step up. Because of this alternative calculation of Relative Strength Index, Up Down RSI
--- produces some unique Trade Signals.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the UDRSI result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function UDRSI(prices, period) end

--- The Ultimate Oscillator (ULTOSC), developed by Larry Williams,
--- is a momentum oscillator designed to capture momentum across three different timeframes.
--- The multiple timeframe objective seeks to avoid the pitfalls of other oscillators. Many
--- momentum oscillators surge at the beginning of a strong advance, only to form a bearish
--- divergence as the advance continues. This is because they are stuck with one timeframe.
--- The Ultimate Oscillator attempts to correct this fault by incorporating longer timeframes
--- into the basic formula. Williams identified a buy signal a based on a bullish divergence
--- and a sell signal based on a bearish divergence.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param periodA number Fast period length. Suggestions: Input
--- @param periodB number Mid period length. Suggestions: Input
--- @param periodC number Slow period length. Suggestions: Input
--- @return number[] Returns the ULTOSC result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ULTOSC(high, low, close, periodA, periodB, periodC) end

--- Variance (VAR), developed by Dr. Rene Koch,
--- is the variance ratio indicator that measures the degree of mean reversion or
--- trendiness in a time series. It is an easy and fast way to detect whether
--- a price series is trending, mean reverting or following a random walk.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param deviation number The amount of deviation. Suggestions: Input
--- @return number[] Returns the VAR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function VAR(prices, period, deviation) end

--- Weighted Close Price (WCLPRICE) is simply an average of an asset's price.
--- It gets its name from the fact that extra weight is given to the closing price.
--- The Median Price (MEDPRICE) and Typical Price (TYPPRICE) are similar indicators.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number[] Returns the WCLPRICE result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function WCLPRICE(high, low, close) end

--- Williams %R (WILLR), also known as the Williams Percent Range,
--- is a type of momentum indicator that moves between 0 and -100 and measures overbought
--- and oversold levels. The Williams %R may be used to find entry and exit points in the market.
--- This indicator is usually plotted on its own chart.
--- @param high number[] High prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param low number[] Low prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param close number[] Close prices array. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the WILLR result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function WILLR(high, low, close, period) end

--- Wilder Moving Average (WiMA), also called Wilder's Smoothed Moving Average,
--- is similar to the Exponential Moving Average. Compared to other moving averages,
--- Wilder's MA responds more slowly to price changes, where an n-period Wilder MA gives
--- similar values to a 2n- period EMA. For example, a 14-period EMA has almost the
--- same values as a 7-period Wilder MA.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the WiMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function WiMA(prices, period) end

--- The Weighted Moving Average (WMA) puts more weight on recent
--- data and less on past data. This is done by multiplying each bar's price by
--- a weighting factor. Because of its unique calculation, WMA will follow prices
--- more closely than a corresponding Simple Moving Average.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the WMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function WMA(prices, period) end

--- Welles Wilder's Smoothing (WWS), developed by J. Welles Wilder, Jr. and
--- is part of the Wilder's RSI indicator implementation. This indicator smooths price
--- movements to help you identify and spot bullish and bearish trends.
--- This indicator is usually plotted on the price chart.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the WWS result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function WWS(prices, period) end

--- The Zero-Lag Exponential Moving Average (ZLEMA), developed by John Ehlers and Ric Way.
--- As is the case with the double exponential moving average (DEMA) and the triple exponential moving average (TEMA)
--- and as indicated by the name, the aim is to eliminate the inherent lag associated to all trend following
--- indicators which average a price over time. The idea is do a regular exponential moving average (EMA) calculation
--- but on a de-lagged data instead of doing it on the regular data. Data is de-lagged by removing the data from "lag"
--- days ago thus removing (or attempting to) the cumulative effect of the moving average.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @return number[] Returns the ZLEMA result. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
function ZLEMA(prices, period) end

--- The object returned by ZLMA.
--- @class ResultOf_ZLMA
--- @field ma1 number[] MA1 result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field ma2 number[] MA2 result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [1] number[] MA1 result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal
--- @field [2] number[] MA2 result. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, GetBuySellLevelSignal, GetAboveBelowSignal, GetCrossOverUnderSignal, GetThresholdSignal

--- The optional parameters of ZLMA.
--- @shape OptionalParametersOf_ZLMA
--- @field maType Enum | nil The type of Moving Average.
--- @field maPeriod1 number | nil Additional parameter used with 'kama' and 'mama' types. (1)
--- @field maPeriod2 number | nil Additional parameter used with 'kama' and 'mama' types. (2)

--- The Zero Lag Moving Average (ZLMA) is the same as ZLEMA, but opens up the possibility to change the
--- type of the moving average. The idea is do a regular moving average (MA) calculation but on a de-lagged data instead of doing
--- it on the regular data. Data is de-lagged by removing the data from "lag" days ago thus removing (or attempting to) the
--- cumulative effect of the moving average.
--- @param prices number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param period number Period length. Suggestions: Input
--- @param maType Enum Optional - The type of Moving Average. Suggestions: InputMaTypes, SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @param maPeriod1 number Optional - Additional parameter used with 'kama' and 'mama' types. (1). Suggestions: Input
--- @param maPeriod2 number Optional - Additional parameter used with 'kama' and 'mama' types. (2). Suggestions: Input
--- @return ResultOf_ZLMA Returns the ZLMA result in an array. Output Suggestions: ArrayGet, ArrayIndex
--- @overload fun(prices: number[], period: number): ResultOf_ZLMA
--- @overload fun(prices: number[], period: number, maType: Enum): ResultOf_ZLMA
--- @overload fun(prices: number[], period: number, maType: Enum, maPeriod1: number): ResultOf_ZLMA
--- @overload fun(prices: number[], period: number, optionalParameters: OptionalParametersOf_ZLMA): ResultOf_ZLMA
function ZLMA(prices, period, maType, maPeriod1, maPeriod2) end

