--- Price Data

--- The optional parameters of AskPrices.
--- @shape OptionalParametersOf_AskPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- Gets the buy/ask prices.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns the buy/ask prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_AskPrices): number[]
function AskPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of BidPrices.
--- @shape OptionalParametersOf_BidPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with sell/ask prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of sell/ask prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_BidPrices): number[]
function BidPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of BuyPrices.
--- @shape OptionalParametersOf_BuyPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- Gets the buy/ask prices.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns the buy/ask prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_BuyPrices): number[]
function BuyPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of ClosePrices.
--- @shape OptionalParametersOf_ClosePrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with close prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of close prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_ClosePrices): number[]
function ClosePrices(interval, fullCandles, market, hlcStyle) end

--- The object returned by CurrentPrice.
--- @class ResultOf_CurrentPrice
--- @field open number The open price of the current candle.
--- @field high number The high price of the current candle.
--- @field low number The low price of the current candle.
--- @field close number The close price of the current candle.
--- @field volume number The volume of the current candle.
--- @field ask number The ask/buy price of the current candle.
--- @field bid number The bid/sell price of the current candle.
--- @field [1] number The open price of the current candle.
--- @field [2] number The high price of the current candle.
--- @field [3] number The low price of the current candle.
--- @field [4] number The close price of the current candle.
--- @field [5] number The volume of the current candle.
--- @field [6] number The ask/buy price of the current candle.
--- @field [7] number The bid/sell price of the current candle.

--- The optional parameters of CurrentPrice.
--- @shape OptionalParametersOf_CurrentPrice
--- @field market string | nil The market of the tick. Default is the selected main market.

--- Gets all the price data from the current candle.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return ResultOf_CurrentPrice Returns a container with named fields (also accessible by 1-based index).
--- @overload fun(): ResultOf_CurrentPrice
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentPrice): ResultOf_CurrentPrice
function CurrentPrice(market) end

--- The optional parameters of GetBodyHighPrices.
--- @shape OptionalParametersOf_GetBodyHighPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with the highest price of the candle its body prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of the highest price of the candle its body prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetBodyHighPrices): number[]
function GetBodyHighPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of GetBodyLowPrices.
--- @shape OptionalParametersOf_GetBodyLowPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with the lowest price of the candle its body prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of the lowest price of the candle its body prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetBodyLowPrices): number[]
function GetBodyLowPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of GetVolume.
--- @shape OptionalParametersOf_GetVolume
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with volume data. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection with volume data. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetVolume): number[]
function GetVolume(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of HeikenClosePrices.
--- @shape OptionalParametersOf_HeikenClosePrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with the average of open, high, low and close prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of the average of open, high, low and close prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HeikenClosePrices): number[]
function HeikenClosePrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of HeikinOpenPrices.
--- @shape OptionalParametersOf_HeikinOpenPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.

--- Gets the Heikin-Ashi open prices.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number[] Returns the Heikin-Ashi open prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HeikinOpenPrices): number[]
function HeikinOpenPrices(interval, fullCandles, market) end

--- The optional parameters of HighPrices.
--- @shape OptionalParametersOf_HighPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with high prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of high prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HighPrices): number[]
function HighPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of HLCPrices.
--- @shape OptionalParametersOf_HLCPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with the average of high, low and close prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of the average of high, low and close prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HLCPrices): number[]
function HLCPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of HLPrices.
--- @shape OptionalParametersOf_HLPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with an average of high and low prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of an average of high and low prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_HLPrices): number[]
function HLPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of IsClosedCandleFinal.
--- @shape OptionalParametersOf_IsClosedCandleFinal
--- @field interval number | nil The candle interval. Default is the main interval.
--- @field market string | nil The market. Default is the selected main market.

--- Checks whether the candle that closed last is complete in the prices this update reads. Right after a candle closes, a bot with high-speed updates can run before the exchange's last minute of that candle is stored. Until then the closed candle's close and volume can still change. The answer matches the price commands in the same update, so check it first in the update, before acting on fullCandles data at a candle boundary. Built-in indicators keep their result for the candle only once it is complete, so they follow this answer. OptimizedForInterval callbacks, custom commands and SourceManager still run once per candle, so skip them for that interval while this returns false. Always true in backtests. Also true 45 seconds after the boundary, because a minute without trades is never stored. Waits for that timeout on weekly and monthly intervals, on very deep price histories, and on markets with no trade in the candle's last minute.
--- @param interval number Optional - The candle interval. Default is the main interval. Suggestions: InputInterval, CurrentInterval
--- @param market string Optional - The market. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return boolean Returns true when the closed candle is complete, false while its last minute is not stored yet. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(): boolean
--- @overload fun(interval: number): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_IsClosedCandleFinal): boolean
function IsClosedCandleFinal(interval, market) end

--- The optional parameters of LowPrices.
--- @shape OptionalParametersOf_LowPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with low prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of low prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_LowPrices): number[]
function LowPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of OCPrices.
--- @shape OptionalParametersOf_OCPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with an average of open and close prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of an average of open and close prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_OCPrices): number[]
function OCPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of OHLCPrices.
--- @shape OptionalParametersOf_OHLCPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with the average of open, high, low and close prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of the average of open, high, low and close prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_OHLCPrices): number[]
function OHLCPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of OpenPrices.
--- @shape OptionalParametersOf_OpenPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with open prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of open prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_OpenPrices): number[]
function OpenPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of Prices.
--- @shape OptionalParametersOf_Prices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with close prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of close prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_Prices): number[]
function Prices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of SellPrices.
--- @shape OptionalParametersOf_SellPrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- A collection with sell/ask prices. Sorted from new to old.
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of sell/ask prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number[]
--- @overload fun(interval: number): number[]
--- @overload fun(interval: number, fullCandles: boolean): number[]
--- @overload fun(interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_SellPrices): number[]
function SellPrices(interval, fullCandles, market, hlcStyle) end

--- The optional parameters of SourcePrices.
--- @shape OptionalParametersOf_SourcePrices
--- @field interval number | nil The ticks interval.
--- @field fullCandles boolean | nil If true, the last closed candles will be returned.
--- @field market string | nil The market of the tick. Default is the selected main market.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- Gets the price source based on the input enum given. Can be any of Enumerations Source Price Types.
--- @param sourceType Enum Source price type enum. Suggestions: ClosePriceSource, OpenPriceSource, HighPriceSource, LowPriceSource, HLPriceSource, HLCPriceSource, OHLCPriceSource, VolumePriceSource
--- @param interval number Optional - The ticks interval. Suggestions: InputInterval, CurrentInterval
--- @param fullCandles boolean Optional - If true, the last closed candles will be returned.
--- @param market string Optional - The market of the tick. Default is the selected main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @return number[] Returns a collection of prices. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(sourceType: Enum): number[]
--- @overload fun(sourceType: Enum, interval: number): number[]
--- @overload fun(sourceType: Enum, interval: number, fullCandles: boolean): number[]
--- @overload fun(sourceType: Enum, interval: number, fullCandles: boolean, market: string): number[]
--- @overload fun(sourceType: Enum, optionalParameters: OptionalParametersOf_SourcePrices): number[]
function SourcePrices(sourceType, interval, fullCandles, market, hlcStyle) end

