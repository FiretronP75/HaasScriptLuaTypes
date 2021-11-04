--- Custom Commands

--- The optional parameters of CC_BBandsStopLoss.
--- @shape OptionalParametersOf_CC_BBandsStopLoss
--- @field maPeriod number | nil BBands MA Period Length.
--- @field devMult number | nil Deviation Multiplier.
--- @field maType Enum | nil BBands MA Type.
--- @field positionId string | nil Optional position identifier

--- Stoploss based on the BBands.
--- @param source number[] Source data for BBands. Suggestions: ClosePrices, Prices, HLPrices, HLCPrices, HeikenClosePrices, OHLCPrices
--- @param maPeriod number Optional - BBands MA Period Length. Suggestions: Input
--- @param devMult number Optional - Deviation Multiplier. Suggestions: Input
--- @param maType Enum Optional - BBands MA Type. Suggestions: InputMaTypes
--- @param positionId string Optional - Optional position identifier. Suggestions: Load
--- @return boolean Safety result. Output Suggestions: SafetyContainer, And, IsTrue, IsFalse, Not, TradeBotContainer
--- @overload fun(source: number[]): boolean
--- @overload fun(source: number[], maPeriod: number): boolean
--- @overload fun(source: number[], maPeriod: number, devMult: number): boolean
--- @overload fun(source: number[], maPeriod: number, devMult: number, maType: Enum): boolean
--- @overload fun(source: number[], optionalParameters: OptionalParametersOf_CC_BBandsStopLoss): boolean
function CC_BBandsStopLoss(source, maPeriod, devMult, maType, positionId) end

--- Sorts a table using the bubble sorting algorithm.
--- @param table any[] Table to sort. Suggestions: ClosePrices, Prices
--- @return any[] The sorted table.
function CC_BubbleSort(table) end

--- Keeps the signal continuous for a number of minutes. Only switches when the signal changes from long to short.
--- @param signal Enum The signal. Suggestions: BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf, EasyABANDS, EasyADOSC, EasyAlice, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBBANDSB, EasyBBANDSW, EasyBOP, EasyCCI, EasyCDL, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyDynamicLongShortLevels, EasyFastRSI, EasyFIBONACCI, EasyFixedLongShortLevels, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyKST, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySAR, EasySlowRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasySTOCHRSI, EasyTRIX, EasyTSI, EasyUDRSI, EasyULTOSC, EasyWILLR, EasyZLMA
--- @param minutes number Number of minutes to keep the signal continious. Suggestions: Input
--- @return Enum The continuous signal. Output Suggestions: IndicatorContainer, TradeBotContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
function CC_ContinuousSignal(signal, minutes) end

--- Returns the number of decimal places in a number.
--- @param value number something like 1.234. Suggestions: MinimumTradeAmount, ParseTradePrice
--- @return number the number of decimal places in a number
function CC_CountDecimals(value) end

--- The optional parameters of CC_CryptoIndexSlot.
--- @shape OptionalParametersOf_CC_CryptoIndexSlot
--- @field stopLoss number | nil Stop loss percentage. Once the stop loss has been reached the position will be solded fully.
--- @field trailingStop number | nil Trailing stop loss percentage. Once the stop loss has been reached the position will be solded fully.
--- @field takeOverWallet boolean | nil If set on true, excessive balance will be sold.

--- The Crypto Index Slot maintains the wallet for a certain index.
--- @param coin string The index coin. Suggestions: Input, Load
--- @param baseCoin string The base coin of the whole index. Usually BTC or USD(T). Suggestions: Input, Load
--- @param allocatedAmount number Total allocated amount. Suggestions: Input
--- @param buyLevel number The percentage the price needs to drop before more is bought. Suggestions: Input
--- @param sellLevel number The percentage the price needs to raise before more is sold. Suggestions: Input
--- @param stopLoss number Optional - Stop loss percentage. Once the stop loss has been reached the position will be solded fully. Suggestions: Input
--- @param trailingStop number Optional - Trailing stop loss percentage. Once the stop loss has been reached the position will be solded fully. Suggestions: Input
--- @param takeOverWallet boolean Optional - If set on true, excessive balance will be sold. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return string Returns a position id related to the index. Can be used to do profit calculations
--- @overload fun(coin: string, baseCoin: string, allocatedAmount: number, buyLevel: number, sellLevel: number): string
--- @overload fun(coin: string, baseCoin: string, allocatedAmount: number, buyLevel: number, sellLevel: number, stopLoss: number): string
--- @overload fun(coin: string, baseCoin: string, allocatedAmount: number, buyLevel: number, sellLevel: number, stopLoss: number, trailingStop: number): string
--- @overload fun(coin: string, baseCoin: string, allocatedAmount: number, buyLevel: number, sellLevel: number, optionalParameters: OptionalParametersOf_CC_CryptoIndexSlot): string
function CC_CryptoIndexSlot(coin, baseCoin, allocatedAmount, buyLevel, sellLevel, stopLoss, trailingStop, takeOverWallet) end

--- The optional parameters of CC_CVOLB_LB.
--- @shape OptionalParametersOf_CC_CVOLB_LB
--- @field interval number | nil Interval for the price data. By default the main interval

--- Lazy Bear - Colored Volume Bars. Buy the green or blue volume bars, use a 1% trailing stop, and stand aside on red or orange bars. 
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_CVOLB_LB): Enum
function CC_CVOLB_LB(chartIndex, interval) end

--- The optional parameters of CC_EasyAdaptiveRSI.
--- @shape OptionalParametersOf_CC_EasyAdaptiveRSI
--- @field interval number | nil Interval for the price data. By default the main interval

--- Adaptive RSI by Alex Orekhov
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyAdaptiveRSI): Enum
function CC_EasyAdaptiveRSI(chartIndex, interval) end

--- The optional parameters of CC_EasyForceIndex.
--- @shape OptionalParametersOf_CC_EasyForceIndex
--- @field interval number | nil Interval for the price data. By default the main interval

--- The Force Index is an indicator that uses price and volume to assess the power behind a move or identify possible turning points. 
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyForceIndex): Enum
function CC_EasyForceIndex(chartIndex, interval) end

--- The optional parameters of CC_EasyHullMA.
--- @shape OptionalParametersOf_CC_EasyHullMA
--- @field interval number | nil Interval for the price data. By default the main interval

--- Double Hull MA
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return void
--- @overload fun(chartIndex: number): void
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyHullMA): void
function CC_EasyHullMA(chartIndex, interval) end

--- The optional parameters of CC_EasyMassIndex.
--- @shape OptionalParametersOf_CC_EasyMassIndex
--- @field interval number | nil Interval for the price data. By default the main interval

--- The Mass Index uses the high-low range to identify trend reversals based on range expansions
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyMassIndex): Enum
function CC_EasyMassIndex(chartIndex, interval) end

--- The optional parameters of CC_EasyMVO.
--- @shape OptionalParametersOf_CC_EasyMVO
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Easy Market Volume Oscillator
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyMVO): Enum
function CC_EasyMVO(chartIndex, name, interval) end

--- The optional parameters of CC_EasySmoothRSI.
--- @shape OptionalParametersOf_CC_EasySmoothRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- RSI smoothed with SMA.
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasySmoothRSI): Enum
function CC_EasySmoothRSI(chartIndex, name, interval) end

--- The optional parameters of CC_EasySTC.
--- @shape OptionalParametersOf_CC_EasySTC
--- @field interval number | nil Interval for the price data. By default the main interval

--- Schaff Trend Cycle indicator
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasySTC): Enum
function CC_EasySTC(chartIndex, interval) end

--- The optional parameters of CC_EasyTD.
--- @shape OptionalParametersOf_CC_EasyTD
--- @field interval number | nil Interval for the price data. By default the main interval

--- Tom Demark Sequential (TD) implementation
--- @param chartIndex number Index on which to plot
--- @param count number Minimum sequence length before a signal is valid
--- @param lookback number The lookback count
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number, count: number, lookback: number): Enum
--- @overload fun(chartIndex: number, count: number, lookback: number, optionalParameters: OptionalParametersOf_CC_EasyTD): Enum
function CC_EasyTD(chartIndex, count, lookback, interval) end

--- The optional parameters of CC_EasyTrendMA.
--- @shape OptionalParametersOf_CC_EasyTrendMA
--- @field maType Enum | nil The type of MA to be used.

--- Easy TrendMA implementation by Pshai
--- @param source number[] Source data. Suggestions: ClosePrices, Prices, HLPrices, HLCPrices, HeikenClosePrices, OHLCPrices
--- @param maPeriod number The period length of the MA. Suggestions: Input
--- @param maType Enum Optional - The type of MA to be used. Suggestions: InputMaTypes
--- @return Enum The resulting signal from the source's and its MA's crossover. Output Suggestions: DoSignal, GetConsensusSignal, GetUnanimousSignal
--- @overload fun(source: number[], maPeriod: number): Enum
--- @overload fun(source: number[], maPeriod: number, optionalParameters: OptionalParametersOf_CC_EasyTrendMA): Enum
function CC_EasyTrendMA(source, maPeriod, maType) end

--- The optional parameters of CC_EasyTSI.
--- @shape OptionalParametersOf_CC_EasyTSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- True Strength Index
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyTSI): Enum
function CC_EasyTSI(chartIndex, name, interval) end

--- The optional parameters of CC_EasyVolumeRSI.
--- @shape OptionalParametersOf_CC_EasyVolumeRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- RSI Calculated over volume and smoothed.
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyVolumeRSI): Enum
function CC_EasyVolumeRSI(chartIndex, name, interval) end

--- The optional parameters of CC_EMAMA_LB.
--- @shape OptionalParametersOf_CC_EMAMA_LB
--- @field interval number | nil Interval for the price data. By default the main interval

--- Ehlers MESA Adaptive Moving Average
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EMAMA_LB): Enum
function CC_EMAMA_LB(chartIndex, interval) end

--- Returns the fibonacci number at the specified index.
--- @param index number Index of the fibonacci number to return.
--- @return number The fibonacci number at the specified index.
function CC_Fib(index) end

--- A slot in the style of a Flash Crash Bot
--- @param basePrice number Base price of the bot. Suggestions: Input
--- @param index number Slot index (Unique). Suggestions: Input
--- @param amount number Trade amount. Suggestions: TradeAmount
--- @param spread number Spread between orders. Suggestions: Input
--- @param startWithBuy boolean Start with a buy order. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return void
function CC_FlashCrashSlot(basePrice, index, amount, spread, startWithBuy) end

--- The optional parameters of CC_FormatDateTime.
--- @shape OptionalParametersOf_CC_FormatDateTime
--- @field unix number | nil The unix datetime number to format.
--- @field dateDelimiter string | nil The characters between the year and month, and between the month and day.
--- @field dateTimeDelimiter string | nil The characters between the date and time.
--- @field timeDelimiter string | nil The characters between the hour and minute, and between the minute and second.
--- @field includeSeconds boolean | nil If true, the seconds will be included in the formatted time.
--- @field includeTime boolean | nil If true, the formatted time will be included.
--- @field includeYear boolean | nil If true, the year will be included in the formatted date.

--- Formats a unix datetime number (to "YYYY-MM-DD at HH:MM" by default).
--- @param unix number Optional - The unix datetime number to format. Suggestions: FormatDateTime, Time, AdjustTimestamp, CreateTimestamp, CurrentDate, CurrentDay, CurrentHour, CurrentMinute, CurrentMonth, CurrentSecond, CurrentWeek, CurrentYear, GetTimer, MinutesTillCandleClose, StartTimer, StopTimer
--- @param dateDelimiter string Optional - The characters between the year and month, and between the month and day.
--- @param dateTimeDelimiter string Optional - The characters between the date and time.
--- @param timeDelimiter string Optional - The characters between the hour and minute, and between the minute and second.
--- @param includeSeconds boolean Optional - If true, the seconds will be included in the formatted time.
--- @param includeTime boolean Optional - If true, the formatted time will be included.
--- @param includeYear boolean Optional - If true, the year will be included in the formatted date.
--- @return string The formatted unix datetime number. Output Suggestions: Load, Log, LogError, LogWalletError, LogWarning, Save
--- @overload fun(): string
--- @overload fun(unix: number): string
--- @overload fun(unix: number, dateDelimiter: string): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string, timeDelimiter: string): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string, timeDelimiter: string, includeSeconds: boolean): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string, timeDelimiter: string, includeSeconds: boolean, includeTime: boolean): string
--- @overload fun(optionalParameters: OptionalParametersOf_CC_FormatDateTime): string
function CC_FormatDateTime(unix, dateDelimiter, dateTimeDelimiter, timeDelimiter, includeSeconds, includeTime, includeYear) end

--- The optional parameters of CC_FormatRoundedPercent.
--- @shape OptionalParametersOf_CC_FormatRoundedPercent
--- @field digits number | nil The digits to round to.
--- @field symbol string | nil The symbol to append.

--- Formats a number to be rounded and have the percent symbol.
--- @param input number The number to format. Suggestions: Input
--- @param digits number Optional - The digits to round to. Suggestions: Input
--- @param symbol string Optional - The symbol to append. Suggestions: Input, Load
--- @return string The formatted value. Output Suggestions: Log
--- @overload fun(input: number): string
--- @overload fun(input: number, digits: number): string
--- @overload fun(input: number, optionalParameters: OptionalParametersOf_CC_FormatRoundedPercent): string
function CC_FormatRoundedPercent(input, digits, symbol) end

--- The optional parameters of CC_FormatRoundedQuoteCurrency.
--- @shape OptionalParametersOf_CC_FormatRoundedQuoteCurrency
--- @field market string | nil The currency market
--- @field Digits number | nil The digits to round to
--- @field Symbol string | nil The symbol to append

--- Formats a number to be rounded and have the quote currency symbol.
--- @param Input number The number to format. Suggestions: Input
--- @param market string Optional - The currency market. Suggestions: InputAccountMarket, InputMarket, PriceMarket
--- @param Digits number Optional - The digits to round to. Suggestions: Input
--- @param Symbol string Optional - The symbol to append. Suggestions: Input, Load
--- @return string Formatted Value
--- @overload fun(Input: number): string
--- @overload fun(Input: number, market: string): string
--- @overload fun(Input: number, market: string, Digits: number): string
--- @overload fun(Input: number, optionalParameters: OptionalParametersOf_CC_FormatRoundedQuoteCurrency): string
function CC_FormatRoundedQuoteCurrency(Input, market, Digits, Symbol) end

--- The optional parameters of CC_FractionGrab.
--- @shape OptionalParametersOf_CC_FractionGrab
--- @field list any[] | nil Array, list, or table to grab a fractional range from.
--- @field index number | nil Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st.
--- @field total number | nil How many parts to divide into. This is just like a fraction denominator.
--- @field sort boolean | nil Set to true to sort before dividing into parts.

--- Grabs a fractional range from an array, list, or table.
--- @param list any[] Optional - Array, list, or table to grab a fractional range from. Suggestions: ClosePrices, Prices, AskPrices, BuyPrices, BidPrices, SellPrices, CurrentPrice, GetVolume, HeikenClosePrices, OHLCPrices, HeikinOpenPrices, HighPrices, HLCPrices, HLPrices, LowPrices, OCPrices, OpenPrices
--- @param index number Optional - Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param total number Optional - How many parts to divide into. This is just like a fraction denominator. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param sort boolean Optional - Set to true to sort before dividing into parts. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @return any[] The fractional range from the array, list, or table.
--- @overload fun(): any[]
--- @overload fun(list: any[]): any[]
--- @overload fun(list: any[], index: number): any[]
--- @overload fun(list: any[], index: number, total: number): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_FractionGrab): any[]
function CC_FractionGrab(list, index, total, sort) end

--- The optional parameters of CC_FractionMiddle.
--- @shape OptionalParametersOf_CC_FractionMiddle
--- @field type string | nil "average" or "median".
--- @field list any[] | nil Array, List, or Table to grab a fractional range from.
--- @field index number | nil Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st.
--- @field total number | nil How many parts to divide into. This is just like a fraction denominator.
--- @field sort boolean | nil Set to true to sort before dividing into parts.

--- Finds the middle value of a fractional range from an array, list, or table.
--- @param type string Optional - "average" or "median". Suggestions: Input
--- @param list any[] Optional - Array, List, or Table to grab a fractional range from. Suggestions: ClosePrices, Prices
--- @param index number Optional - Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st. Suggestions: Input
--- @param total number Optional - How many parts to divide into. This is just like a fraction denominator. Suggestions: Input
--- @param sort boolean Optional - Set to true to sort before dividing into parts. Suggestions: Input
--- @return number The middle value of a fractional range from an array, list, or table.
--- @overload fun(): number
--- @overload fun(type: string): number
--- @overload fun(type: string, list: any[]): number
--- @overload fun(type: string, list: any[], index: number): number
--- @overload fun(type: string, list: any[], index: number, total: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_CC_FractionMiddle): number
function CC_FractionMiddle(type, list, index, total, sort) end

--- The optional parameters of CC_GetAmountSpread.
--- @shape OptionalParametersOf_CC_GetAmountSpread
--- @field listDynamic any[] | nil Set this to the ListDynamicType returned by InputAmountSpread. Will override all other parameters.
--- @field count number | nil How many amounts are in the spread.
--- @field offset number | nil How many amounts to skip over at the start of the spread.
--- @field spreadFactor number | nil How much to order. May be total amount or amount per order or fibonacci amount per order or multiplied amount per order or exponential ammount per order.
--- @field spreadType string | nil "total" if you specified a total amount, "per" if you specified an amount per order, "fib" if you specified a fibonacci amount per order, "mult" if you specified an amount to be multiplied by the order index, "exp" if you specified an amount to be exponentially multiplied by the order index.
--- @field total number | nil Total amount to divide up. Set to 0 to disable. If enabled, each value in the amount spread will be converted to a rationed amount of the total. When the spreadType is "total" this is redundant.

--- Creates a spread of amounts that can be used in orders.
--- @param listDynamic any[] Optional - Set this to the ListDynamicType returned by InputAmountSpread. Will override all other parameters.
--- @param count number Optional - How many amounts are in the spread. Suggestions: Input
--- @param offset number Optional - How many amounts to skip over at the start of the spread. Suggestions: Input
--- @param spreadFactor number Optional - How much to order. May be total amount or amount per order or fibonacci amount per order or multiplied amount per order or exponential ammount per order. Suggestions: Input
--- @param spreadType string Optional - "total" if you specified a total amount, "per" if you specified an amount per order, "fib" if you specified a fibonacci amount per order, "mult" if you specified an amount to be multiplied by the order index, "exp" if you specified an amount to be exponentially multiplied by the order index. Suggestions: Input
--- @param total number Optional - Total amount to divide up. Set to 0 to disable. If enabled, each value in the amount spread will be converted to a rationed amount of the total. When the spreadType is "total" this is redundant. Suggestions: Input
--- @return any[] List of amounts.
--- @overload fun(): any[]
--- @overload fun(listDynamic: any[]): any[]
--- @overload fun(listDynamic: any[], count: number): any[]
--- @overload fun(listDynamic: any[], count: number, offset: number): any[]
--- @overload fun(listDynamic: any[], count: number, offset: number, spreadFactor: number): any[]
--- @overload fun(listDynamic: any[], count: number, offset: number, spreadFactor: number, spreadType: string): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_GetAmountSpread): any[]
function CC_GetAmountSpread(listDynamic, count, offset, spreadFactor, spreadType, total) end

--- The object returned by CC_GetKeltnerSpread.
--- @class ResultOf_CC_GetKeltnerSpread
--- @field upperList number[] List of channels above the moving average. Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field middle number The moving average. Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field lowerList number[] List of channels below the moving average. Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field [1] number[] List of channels above the moving average. Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field [2] number The moving average. Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field [3] number[] List of channels below the moving average. Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder

--- The optional parameters of CC_GetKeltnerSpread.
--- @shape OptionalParametersOf_CC_GetKeltnerSpread
--- @field omni any[] | nil Set this to the ListDynamicType returned by InputKeltnerSpread. All other parameters will be ignored. Set this to false to use the other parameters.
--- @field maType Enum | nil The type of moving average to use for the middle.
--- @field maPeriod number | nil How many intervals to go back for the moving average.
--- @field trType string | nil "average" for average true range, "maximum" for maximum true range, "median" for median true range, "minimum" for minimum true range.
--- @field trPeriod number | nil How many intervals to go back for the average true range.
--- @field multiplierList any[] | nil Each Keltner multiplier will create a price in the spread.
--- @field interval number | nil Time of each candle in minutes.
--- @field fullCandles boolean | nil If false, the currently open candle will not be included.
--- @field market string | nil Which market to look at.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @field index number | nil Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st.
--- @field total number | nil How many parts to divide into. This is just like a fraction denominator.
--- @field isPercent boolean | nil If true, the true percent range will be used.

--- Creates a spread of prices based on Keltner channels.
--- @param omni any[] Optional - Set this to the ListDynamicType returned by InputKeltnerSpread. All other parameters will be ignored. Set this to false to use the other parameters.
--- @param maType Enum Optional - The type of moving average to use for the middle. Suggestions: DemaType, EmaType, KamaType, MamaType, SmaType, T3Type, TemaType, TrimaType, WmaType
--- @param maPeriod number Optional - How many intervals to go back for the moving average. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param trType string Optional - "average" for average true range, "maximum" for maximum true range, "median" for median true range, "minimum" for minimum true range. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param trPeriod number Optional - How many intervals to go back for the average true range. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param multiplierList any[] Optional - Each Keltner multiplier will create a price in the spread. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param interval number Optional - Time of each candle in minutes. Suggestions: InputInterval
--- @param fullCandles boolean Optional - If false, the currently open candle will not be included. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param market string Optional - Which market to look at. Suggestions: InputAccountMarket, InputMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param index number Optional - Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param total number Optional - How many parts to divide into. This is just like a fraction denominator. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param isPercent boolean Optional - If true, the true percent range will be used. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @return ResultOf_CC_GetKeltnerSpread ListDynamic with named elements. Output Suggestions: DoBuy, DoLong, DoExitPosition, DoFlipPosition, DoSell, DoShort, DoSignal, PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @overload fun(): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[]): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[]): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[], interval: number): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[], interval: number, fullCandles: boolean): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[], interval: number, fullCandles: boolean, market: string): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[], interval: number, fullCandles: boolean, market: string, hlcStyle: boolean): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[], interval: number, fullCandles: boolean, market: string, hlcStyle: boolean, index: number): ResultOf_CC_GetKeltnerSpread
--- @overload fun(omni: any[], maType: Enum, maPeriod: number, trType: string, trPeriod: number, multiplierList: any[], interval: number, fullCandles: boolean, market: string, hlcStyle: boolean, index: number, total: number): ResultOf_CC_GetKeltnerSpread
--- @overload fun(optionalParameters: OptionalParametersOf_CC_GetKeltnerSpread): ResultOf_CC_GetKeltnerSpread
function CC_GetKeltnerSpread(omni, maType, maPeriod, trType, trPeriod, multiplierList, interval, fullCandles, market, hlcStyle, index, total, isPercent) end

--- The optional parameters of CC_GetMaximumExposure.
--- @shape OptionalParametersOf_CC_GetMaximumExposure
--- @field walletPercent number | nil Percent of wallet to use.
--- @field walletAmount number | nil The bot will start with this amount and adjust according to its profits. Set to -1 to use the real wallet balance.
--- @field isLogging boolean | nil Enable or disable custom logs.
--- @field characters string | nil For logging. The character(s) to repeat to form the rule.
--- @field repitition number | nil For logging. How many times to repeat the character(s).
--- @field color any | nil For logging. Color of the rule.

--- Finds the maximum exposure a bot should use. This amount should be further divided by the expected number of orders.
--- @param walletPercent number Optional - Percent of wallet to use. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param walletAmount number Optional - The bot will start with this amount and adjust according to its profits. Set to -1 to use the real wallet balance. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param isLogging boolean Optional - Enable or disable custom logs. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param characters string Optional - For logging. The character(s) to repeat to form the rule. Suggestions: Input, Load
--- @param repitition number Optional - For logging. How many times to repeat the character(s). Suggestions: Input
--- @param color any Optional - For logging. Color of the rule.
--- @return number The maximum exposure the bot should use. Output Suggestions: Div
--- @overload fun(): number
--- @overload fun(walletPercent: number): number
--- @overload fun(walletPercent: number, walletAmount: number): number
--- @overload fun(walletPercent: number, walletAmount: number, isLogging: boolean): number
--- @overload fun(walletPercent: number, walletAmount: number, isLogging: boolean, characters: string): number
--- @overload fun(walletPercent: number, walletAmount: number, isLogging: boolean, characters: string, repitition: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_CC_GetMaximumExposure): number
function CC_GetMaximumExposure(walletPercent, walletAmount, isLogging, characters, repitition, color) end

--- The optional parameters of CC_GetPriceSpread.
--- @shape OptionalParametersOf_CC_GetPriceSpread
--- @field listDynamic any[] | nil Set this to the ListDynamicType returned by InputPriceSpread. Will override all other parameters.
--- @field basePrice number | nil Price to spread out from. This price will not be included. The first price will be placed at the spread factor away from this price.
--- @field count number | nil How many prices are in the spread.
--- @field direction string | nil "above" will spread prices above the base price, "below" will spread prices below the base price.
--- @field spreadFactor number | nil How far to space prices apart. May be a percent, fibonacci, exponential, or fixed value.
--- @field spreadType string | nil "fib" if you specified a fibonacci spread, "fixed" if you specified a fixed spread, "percent" if you specified a percent spread, "exp" if you specified an exponential spread.

--- Creates a spread of prices that can be used in orders.
--- @param listDynamic any[] Optional - Set this to the ListDynamicType returned by InputPriceSpread. Will override all other parameters.
--- @param basePrice number Optional - Price to spread out from. This price will not be included. The first price will be placed at the spread factor away from this price. Suggestions: CurrentPrice
--- @param count number Optional - How many prices are in the spread. Suggestions: Input
--- @param direction string Optional - "above" will spread prices above the base price, "below" will spread prices below the base price. Suggestions: Input
--- @param spreadFactor number Optional - How far to space prices apart. May be a percent, fibonacci, exponential, or fixed value. Suggestions: Input
--- @param spreadType string Optional - "fib" if you specified a fibonacci spread, "fixed" if you specified a fixed spread, "percent" if you specified a percent spread, "exp" if you specified an exponential spread. Suggestions: Input
--- @return any[] List of prices.
--- @overload fun(): any[]
--- @overload fun(listDynamic: any[]): any[]
--- @overload fun(listDynamic: any[], basePrice: number): any[]
--- @overload fun(listDynamic: any[], basePrice: number, count: number): any[]
--- @overload fun(listDynamic: any[], basePrice: number, count: number, direction: string): any[]
--- @overload fun(listDynamic: any[], basePrice: number, count: number, direction: string, spreadFactor: number): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_GetPriceSpread): any[]
function CC_GetPriceSpread(listDynamic, basePrice, count, direction, spreadFactor, spreadType) end

--- The optional parameters of CC_GetSpread.
--- @shape OptionalParametersOf_CC_GetSpread
--- @field omni any[] | nil Set this to the ListDynamicType returned by InputSpread. All other parameters will be ignored.
--- @field base number | nil Base value to spread out from. This value will not be included. The first value will be placed at the factor away from this value.
--- @field count number | nil How many values are in the spread.
--- @field direction string | nil "above" will spread values above the base value, "below" will spread values below the base value.
--- @field factor number | nil How far to space values apart. May be a doubled, exponential, fibonacci, fixed, or multiplied value.
--- @field isPercent boolean | nil Set to true to treat the factor as a percent.
--- @field offset number | nil How many values to skip over at the start of the spread. Does not effect the count.
--- @field type string | nil "doub" for doubled factor, "exp" for exponential factor, "fib" for fibonacci factor, "fixed" for fixed factor, "mult" for multiplied factor.

--- Creates a spread of values that can be used in orders.
--- @param omni any[] Optional - Set this to the ListDynamicType returned by InputSpread. All other parameters will be ignored.
--- @param base number Optional - Base value to spread out from. This value will not be included. The first value will be placed at the factor away from this value. Suggestions: Input
--- @param count number Optional - How many values are in the spread. Suggestions: Input
--- @param direction string Optional - "above" will spread values above the base value, "below" will spread values below the base value. Suggestions: Input
--- @param factor number Optional - How far to space values apart. May be a doubled, exponential, fibonacci, fixed, or multiplied value. Suggestions: Input
--- @param isPercent boolean Optional - Set to true to treat the factor as a percent. Suggestions: Input
--- @param offset number Optional - How many values to skip over at the start of the spread. Does not effect the count. Suggestions: Input
--- @param type string Optional - "doub" for doubled factor, "exp" for exponential factor, "fib" for fibonacci factor, "fixed" for fixed factor, "mult" for multiplied factor. Suggestions: Input
--- @return any[] ListDynamic where each element is a number.
--- @overload fun(): any[]
--- @overload fun(omni: any[]): any[]
--- @overload fun(omni: any[], base: number): any[]
--- @overload fun(omni: any[], base: number, count: number): any[]
--- @overload fun(omni: any[], base: number, count: number, direction: string): any[]
--- @overload fun(omni: any[], base: number, count: number, direction: string, factor: number): any[]
--- @overload fun(omni: any[], base: number, count: number, direction: string, factor: number, isPercent: boolean): any[]
--- @overload fun(omni: any[], base: number, count: number, direction: string, factor: number, isPercent: boolean, offset: number): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_GetSpread): any[]
function CC_GetSpread(omni, base, count, direction, factor, isPercent, offset, type) end

--- The object returned by CC_HSP.
--- @class ResultOf_CC_HSP
--- @field open number[] Open prices
--- @field high number[] High prices
--- @field low number[] Low prices
--- @field close number[] Close prices
--- @field volume number[] Volumes
--- @field ask number[] Ask prices
--- @field bid number[] Bid prices
--- @field hl number[] Median prices
--- @field hlc number[] Typical prices
--- @field hlcc number[] Weighted Close prices
--- @field ohlc number[] Average prices
--- @field [1] number[] Open prices
--- @field [2] number[] High prices
--- @field [3] number[] Low prices
--- @field [4] number[] Close prices
--- @field [5] number[] Volumes
--- @field [6] number[] Ask prices
--- @field [7] number[] Bid prices
--- @field [8] number[] Median prices
--- @field [9] number[] Typical prices
--- @field [10] number[] Weighted Close prices
--- @field [11] number[] Average prices

--- The optional parameters of CC_HSP.
--- @shape OptionalParametersOf_CC_HSP
--- @field interval number | nil Price data interval
--- @field market string | nil Market for data
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- Returns o, h, l, c, v, a, b, hl, hlc, hlcc, ohlc data arrays with latest ticker data added. Based on Pshai's [HighSpeedPrices Returns OHLCV] Added: ask, bid (changed OutputIndex 1-7 so it matches included CurrentPrice: ohlcvab object key order) and Weighted Close Price to get All variations on price found in HTS
--- @param interval number Optional - Price data interval. Suggestions: InputInterval
--- @param market string Optional - Market for data. Suggestions: PriceMarket, InputMarket, InputAccountMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @return ResultOf_CC_HSP
--- @overload fun(): ResultOf_CC_HSP
--- @overload fun(interval: number): ResultOf_CC_HSP
--- @overload fun(interval: number, market: string): ResultOf_CC_HSP
--- @overload fun(optionalParameters: OptionalParametersOf_CC_HSP): ResultOf_CC_HSP
function CC_HSP(interval, market, hlcStyle) end

--- The optional parameters of CC_HullMA.
--- @shape OptionalParametersOf_CC_HullMA
--- @field Source number[] | nil The source data

--- HullMA Indicator
--- @param Length number Length of the MA. Suggestions: Input
--- @param Source number[] Optional - The source data. Suggestions: InputInterval
--- @return number[] HullMA result. Output Suggestions: Plot, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(Length: number): number[]
--- @overload fun(Length: number, optionalParameters: OptionalParametersOf_CC_HullMA): number[]
function CC_HullMA(Length, Source) end

--- The object returned by CC_InputAmountSpread.
--- @class ResultOf_CC_InputAmountSpread
--- @field count number How many amounts are in the spread.
--- @field spreadFactor number How much to order. May be total amount or amount per order or fibonacci amount per order or multiplied amount per order or exponential ammount per order.
--- @field spreadType string "total" if you specified a total amount, "per" if you specified an amount per order, "fib" if you specified a fibonacci amount per order, "mult" if you specified an amount to be multiplied by the order index, "exp" if you specified an amount to be exponentially multiplied by the order index.
--- @field [1] number How many amounts are in the spread.
--- @field [2] number How much to order. May be total amount or amount per order or fibonacci amount per order or multiplied amount per order or exponential ammount per order.
--- @field [3] string "total" if you specified a total amount, "per" if you specified an amount per order, "fib" if you specified a fibonacci amount per order, "mult" if you specified an amount to be multiplied by the order index, "exp" if you specified an amount to be exponentially multiplied by the order index.

--- The optional parameters of CC_InputAmountSpread.
--- @shape OptionalParametersOf_CC_InputAmountSpread
--- @field group string | nil The group of the input fields.

--- Creates a group of inputs for Firetron's GetAmountSpread.
--- @param group string Optional - The group of the input fields.
--- @return ResultOf_CC_InputAmountSpread ListDynamic with named elements.
--- @overload fun(): ResultOf_CC_InputAmountSpread
--- @overload fun(optionalParameters: OptionalParametersOf_CC_InputAmountSpread): ResultOf_CC_InputAmountSpread
function CC_InputAmountSpread(group) end

--- The object returned by CC_InputDebugOptions.
--- @class ResultOf_CC_InputDebugOptions
--- @field fee number Fee to use for backtests and simulated trading.
--- @field logging boolean Turns console logging on or off.
--- @field plotting boolean Turns chart plotting on or off.
--- @field reporting boolean Turns custom report of current state on or off.
--- @field verbose boolean Turns verbose console logging on or off.
--- @field verbosityInterval number Time between verbose logging.
--- @field [1] number Fee to use for backtests and simulated trading.
--- @field [2] boolean Turns console logging on or off.
--- @field [3] boolean Turns chart plotting on or off.
--- @field [4] boolean Turns custom report of current state on or off.
--- @field [5] boolean Turns verbose console logging on or off.
--- @field [6] number Time between verbose logging.

--- Creates a group of inputs for debug options: logging, plotting, reporting, verbose, verbosityInterval.
--- @param group string The group of the input fields.
--- @return ResultOf_CC_InputDebugOptions ListDynamic with named elements.
function CC_InputDebugOptions(group) end

--- The object returned by CC_InputMarketTrailer.
--- @class ResultOf_CC_InputMarketTrailer
--- @field basePrice number Price that the activation rate is based on. If you have an open position use the entry price. Set to 0 to use the current market price of the first call to the command.
--- @field direction string Direction to trail in. Trail the market up with "up" or "long" or down with "down" or "short".
--- @field market string The market to trail.
--- @field activationRate number Percent price change vs base price that will activate trailing.
--- @field callbackRate number Precent price change called back from the greatest price change, that will trigger and stop the command.
--- @field triggerCount number How many times to trigger before stopping the command. Set to 1 to stop the command after the first trigger.
--- @field adjustmentMultiplier number Multiplier to adjust the callback rate each trigger. Ignored if only 1 trigger. Use 1 for no adjustment. A value 0.01 to 0.99 will shrink the callback distance each trigger. A value 1.01 to 1.99 will increase the callback distance each trigger.
--- @field deactivateOnFallback boolean Deactivate the command if the price change falls back on the activationRate. This prevents triggering under your target, which may be good or bad depending on your strategy.
--- @field resetOnFallback boolean Reset the command if the price change falls back on the activationRate. Ignored when not deactivating on fallback.
--- @field logging boolean Turns console logging on or off.
--- @field name string Name to use in logging to distinguish it from the other instances of this command.
--- @field reporting boolean Turns custom report of current state on or off.
--- @field verbose boolean Turns verbose console logging on or off. Ignored if logging is turned off.
--- @field [1] number Price that the activation rate is based on. If you have an open position use the entry price. Set to 0 to use the current market price of the first call to the command.
--- @field [2] string Direction to trail in. Trail the market up with "up" or "long" or down with "down" or "short".
--- @field [3] string The market to trail.
--- @field [4] number Percent price change vs base price that will activate trailing.
--- @field [5] number Precent price change called back from the greatest price change, that will trigger and stop the command.
--- @field [6] number How many times to trigger before stopping the command. Set to 1 to stop the command after the first trigger.
--- @field [7] number Multiplier to adjust the callback rate each trigger. Ignored if only 1 trigger. Use 1 for no adjustment. A value 0.01 to 0.99 will shrink the callback distance each trigger. A value 1.01 to 1.99 will increase the callback distance each trigger.
--- @field [8] boolean Deactivate the command if the price change falls back on the activationRate. This prevents triggering under your target, which may be good or bad depending on your strategy.
--- @field [9] boolean Reset the command if the price change falls back on the activationRate. Ignored when not deactivating on fallback.
--- @field [10] boolean Turns console logging on or off.
--- @field [11] string Name to use in logging to distinguish it from the other instances of this command.
--- @field [12] boolean Turns custom report of current state on or off.
--- @field [13] boolean Turns verbose console logging on or off. Ignored if logging is turned off.

--- The optional parameters of CC_InputMarketTrailer.
--- @shape OptionalParametersOf_CC_InputMarketTrailer
--- @field hideBasic boolean | nil Hide the basic input fields.
--- @field hideLogging boolean | nil Hide the logging input fields.

--- Creates a group of inputs for Firetron's MarketTrailer.
--- @param group string The group of the input fields.
--- @param hideBasic boolean Optional - Hide the basic input fields.
--- @param hideLogging boolean Optional - Hide the logging input fields.
--- @return ResultOf_CC_InputMarketTrailer ListDynamic with named elements.
--- @overload fun(group: string): ResultOf_CC_InputMarketTrailer
--- @overload fun(group: string, hideBasic: boolean): ResultOf_CC_InputMarketTrailer
--- @overload fun(group: string, optionalParameters: OptionalParametersOf_CC_InputMarketTrailer): ResultOf_CC_InputMarketTrailer
function CC_InputMarketTrailer(group, hideBasic, hideLogging) end

--- The object returned by CC_InputMarketTrailerBasic.
--- @class ResultOf_CC_InputMarketTrailerBasic
--- @field basePrice number Price that the activation rate is based on. If you have an open position use the entry price. Set to 0 to use the current market price of the first call to the command.
--- @field direction string Direction to trail in. Trail the market up with "up" or "long" or down with "down" or "short".
--- @field market string The market to trail.
--- @field [1] number Price that the activation rate is based on. If you have an open position use the entry price. Set to 0 to use the current market price of the first call to the command.
--- @field [2] string Direction to trail in. Trail the market up with "up" or "long" or down with "down" or "short".
--- @field [3] string The market to trail.

--- Creates a group of basic inputs for Firetron's MarketTrailer.
--- @param group string The group of the input fields.
--- @return ResultOf_CC_InputMarketTrailerBasic ListDynamic with named elements.
function CC_InputMarketTrailerBasic(group) end

--- The object returned by CC_InputMarketTrailerLogging.
--- @class ResultOf_CC_InputMarketTrailerLogging
--- @field logging boolean Turns console logging on or off.
--- @field name string Name to use in logging to distinguish it from the other instances of this command.
--- @field reporting boolean Turns custom report of current state on or off.
--- @field verbose boolean Turns verbose console logging on or off. Ignored if logging is turned off.
--- @field [1] boolean Turns console logging on or off.
--- @field [2] string Name to use in logging to distinguish it from the other instances of this command.
--- @field [3] boolean Turns custom report of current state on or off.
--- @field [4] boolean Turns verbose console logging on or off. Ignored if logging is turned off.

--- Creates a group of logging inputs for Firetron's MarketTrailer.
--- @param group string The group of the input fields.
--- @return ResultOf_CC_InputMarketTrailerLogging ListDynamic with named elements.
function CC_InputMarketTrailerLogging(group) end

--- The object returned by CC_InputMarketTrailerTrailing.
--- @class ResultOf_CC_InputMarketTrailerTrailing
--- @field activationRate number Percent price change vs base price that will activate trailing.
--- @field callbackRate number Precent price change called back from the greatest price change, that will trigger and stop the command.
--- @field triggerCount number How many times to trigger before stopping the command. Set to 1 to stop the command after the first trigger.
--- @field adjustmentMultiplier number Multiplier to adjust the callback rate each trigger. Ignored if only 1 trigger. Use 1 for no adjustment. A value 0.01 to 0.99 will shrink the callback distance each trigger. A value 1.01 to 1.99 will increase the callback distance each trigger.
--- @field deactivateOnFallback boolean Deactivate the command if the price change falls back on the activationRate. This prevents triggering under your target, which may be good or bad depending on your strategy.
--- @field resetOnFallback boolean Reset the command if the price change falls back on the activationRate. Ignored when not deactivating on fallback.
--- @field [1] number Percent price change vs base price that will activate trailing.
--- @field [2] number Precent price change called back from the greatest price change, that will trigger and stop the command.
--- @field [3] number How many times to trigger before stopping the command. Set to 1 to stop the command after the first trigger.
--- @field [4] number Multiplier to adjust the callback rate each trigger. Ignored if only 1 trigger. Use 1 for no adjustment. A value 0.01 to 0.99 will shrink the callback distance each trigger. A value 1.01 to 1.99 will increase the callback distance each trigger.
--- @field [5] boolean Deactivate the command if the price change falls back on the activationRate. This prevents triggering under your target, which may be good or bad depending on your strategy.
--- @field [6] boolean Reset the command if the price change falls back on the activationRate. Ignored when not deactivating on fallback.

--- Creates a group of trailing inputs for Firetron's MarketTrailer.
--- @param group string The group of the input fields.
--- @return ResultOf_CC_InputMarketTrailerTrailing ListDynamic with named elements.
function CC_InputMarketTrailerTrailing(group) end

--- The object returned by CC_InputOrderOptions.
--- @class ResultOf_CC_InputOrderOptions
--- @field price number The price on which to execute the order. If the order is a market order, this field will be ignored.
--- @field amount number The amount to execute.
--- @field market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum The type of order.
--- @field note string A note for the order. Visible in the open orders and history.
--- @field positionId string Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number The order timeout in seconds.
--- @field triggerPrice number Trigger price, used for conditional orders.
--- @field [1] number The price on which to execute the order. If the order is a market order, this field will be ignored.
--- @field [2] number The amount to execute.
--- @field [3] string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field [4] Enum The type of order.
--- @field [5] string A note for the order. Visible in the open orders and history.
--- @field [6] string Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field [7] number The order timeout in seconds.
--- @field [8] number Trigger price, used for conditional orders.

--- The optional parameters of CC_InputOrderOptions.
--- @shape OptionalParametersOf_CC_InputOrderOptions
--- @field group string | nil The group of the input fields.
--- @field isPriceShown boolean | nil Shows the input.
--- @field isAmountShown boolean | nil Shows the input.
--- @field isMarketShown boolean | nil Shows the input.
--- @field isTypeShown boolean | nil Shows the input.
--- @field isNoteShown boolean | nil Shows the input.
--- @field isPositionIdShown boolean | nil Shows the input.
--- @field isTimeoutShown boolean | nil Shows the input.
--- @field isTriggerPriceShown boolean | nil Shows the input.

--- Creates a group of inputs for order options.
--- @param group string Optional - The group of the input fields.
--- @param isPriceShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isAmountShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isMarketShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isTypeShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isNoteShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isPositionIdShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isTimeoutShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param isTriggerPriceShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return ResultOf_CC_InputOrderOptions ListDynamic with named elements.
--- @overload fun(): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean, isAmountShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean, isAmountShown: boolean, isMarketShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean, isAmountShown: boolean, isMarketShown: boolean, isTypeShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean, isAmountShown: boolean, isMarketShown: boolean, isTypeShown: boolean, isNoteShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean, isAmountShown: boolean, isMarketShown: boolean, isTypeShown: boolean, isNoteShown: boolean, isPositionIdShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(group: string, isPriceShown: boolean, isAmountShown: boolean, isMarketShown: boolean, isTypeShown: boolean, isNoteShown: boolean, isPositionIdShown: boolean, isTimeoutShown: boolean): ResultOf_CC_InputOrderOptions
--- @overload fun(optionalParameters: OptionalParametersOf_CC_InputOrderOptions): ResultOf_CC_InputOrderOptions
function CC_InputOrderOptions(group, isPriceShown, isAmountShown, isMarketShown, isTypeShown, isNoteShown, isPositionIdShown, isTimeoutShown, isTriggerPriceShown) end

--- The object returned by CC_InputPriceSpread.
--- @class ResultOf_CC_InputPriceSpread
--- @field basePrice number Price to spread out from. This price will not be included. The first price will be placed at the spread factor away from this price.
--- @field count number How many prices are in the spread.
--- @field direction string "above" will spread prices above the base price, "below" will spread prices below the base price.
--- @field spreadFactor number How far to space prices apart. May be a percent, fibonacci, exponential, or fixed value.
--- @field spreadType string "fib" if you specified a fibonacci spread, "fixed" if you specified a fixed spread, "percent" if you specified a percent spread, "exp" if you specified an exponential spread.
--- @field [1] number Price to spread out from. This price will not be included. The first price will be placed at the spread factor away from this price.
--- @field [2] number How many prices are in the spread.
--- @field [3] string "above" will spread prices above the base price, "below" will spread prices below the base price.
--- @field [4] number How far to space prices apart. May be a percent, fibonacci, exponential, or fixed value.
--- @field [5] string "fib" if you specified a fibonacci spread, "fixed" if you specified a fixed spread, "percent" if you specified a percent spread, "exp" if you specified an exponential spread.

--- The optional parameters of CC_InputPriceSpread.
--- @shape OptionalParametersOf_CC_InputPriceSpread
--- @field group string | nil The group of the input fields.

--- Creates a group of inputs for Firetron's GetPriceSpread.
--- @param group string Optional - The group of the input fields.
--- @return ResultOf_CC_InputPriceSpread ListDynamic with named elements.
--- @overload fun(): ResultOf_CC_InputPriceSpread
--- @overload fun(optionalParameters: OptionalParametersOf_CC_InputPriceSpread): ResultOf_CC_InputPriceSpread
function CC_InputPriceSpread(group) end

--- The object returned by CC_InputSpread.
--- @class ResultOf_CC_InputSpread
--- @field base number Base value to spread out from. This value will not be included. The first value will be placed at the factor away from this value.
--- @field count number How many values are in the spread.
--- @field direction string "above" will spread values above the base value, "below" will spread values below the base value.
--- @field factor number How far to space values apart. May be a doubled, exponential, fibonacci, fixed, or multiplied value.
--- @field isPercent boolean Set to true to treat the factor as a percent.
--- @field offset number How many values to skip over at the start of the spread. Does not effect the count.
--- @field type string "doub" for doubled factor, "exp" for exponential factor, "fib" for fibonacci factor, "fixed" for fixed factor, "mult" for multiplied factor.
--- @field [1] number Base value to spread out from. This value will not be included. The first value will be placed at the factor away from this value.
--- @field [2] number How many values are in the spread.
--- @field [3] string "above" will spread values above the base value, "below" will spread values below the base value.
--- @field [4] number How far to space values apart. May be a doubled, exponential, fibonacci, fixed, or multiplied value.
--- @field [5] boolean Set to true to treat the factor as a percent.
--- @field [6] number How many values to skip over at the start of the spread. Does not effect the count.
--- @field [7] string "doub" for doubled factor, "exp" for exponential factor, "fib" for fibonacci factor, "fixed" for fixed factor, "mult" for multiplied factor.

--- The optional parameters of CC_InputSpread.
--- @shape OptionalParametersOf_CC_InputSpread
--- @field group string | nil The group of the input fields.
--- @field pIsBaseShown boolean | nil Shows the input.
--- @field pIsCountShown boolean | nil Shows the input.
--- @field pIsDirectionShown boolean | nil Shows the input.
--- @field pIsFactorShown boolean | nil Shows the input.
--- @field pIsPercentShown boolean | nil Shows the input.
--- @field pIsOffsetShown boolean | nil Shows the input.
--- @field pIsTypeShown boolean | nil Shows the input.

--- Creates a group of inputs for Firetron's GetSpread.
--- @param group string Optional - The group of the input fields.
--- @param pIsBaseShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param pIsCountShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param pIsDirectionShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param pIsFactorShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param pIsPercentShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param pIsOffsetShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param pIsTypeShown boolean Optional - Shows the input. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return ResultOf_CC_InputSpread ListDynamic with named elements.
--- @overload fun(): ResultOf_CC_InputSpread
--- @overload fun(group: string): ResultOf_CC_InputSpread
--- @overload fun(group: string, pIsBaseShown: boolean): ResultOf_CC_InputSpread
--- @overload fun(group: string, pIsBaseShown: boolean, pIsCountShown: boolean): ResultOf_CC_InputSpread
--- @overload fun(group: string, pIsBaseShown: boolean, pIsCountShown: boolean, pIsDirectionShown: boolean): ResultOf_CC_InputSpread
--- @overload fun(group: string, pIsBaseShown: boolean, pIsCountShown: boolean, pIsDirectionShown: boolean, pIsFactorShown: boolean): ResultOf_CC_InputSpread
--- @overload fun(group: string, pIsBaseShown: boolean, pIsCountShown: boolean, pIsDirectionShown: boolean, pIsFactorShown: boolean, pIsPercentShown: boolean): ResultOf_CC_InputSpread
--- @overload fun(group: string, pIsBaseShown: boolean, pIsCountShown: boolean, pIsDirectionShown: boolean, pIsFactorShown: boolean, pIsPercentShown: boolean, pIsOffsetShown: boolean): ResultOf_CC_InputSpread
--- @overload fun(optionalParameters: OptionalParametersOf_CC_InputSpread): ResultOf_CC_InputSpread
function CC_InputSpread(group, pIsBaseShown, pIsCountShown, pIsDirectionShown, pIsFactorShown, pIsPercentShown, pIsOffsetShown, pIsTypeShown) end

--- The object returned by CC_InputSpreadOrder.
--- @class ResultOf_CC_InputSpreadOrder
--- @field amountList any[] List of amounts to use.
--- @field direction string Buy, Sell, GoLong, ExitLong, GoShort, ExitShort.
--- @field orderOptions any[] Parameters to give each order, other than price and amount. See PlaceGoLongOrder or PlaceGoShortOrder for help.
--- @field priceList any[] List of prices to use.
--- @field [1] any[] List of amounts to use.
--- @field [2] string Buy, Sell, GoLong, ExitLong, GoShort, ExitShort.
--- @field [3] any[] Parameters to give each order, other than price and amount. See PlaceGoLongOrder or PlaceGoShortOrder for help.
--- @field [4] any[] List of prices to use.

--- The optional parameters of CC_InputSpreadOrder.
--- @shape OptionalParametersOf_CC_InputSpreadOrder
--- @field group string | nil The group of the input fields.

--- Creates a group of inputs for Firetron's PlaceSpreadOrder. Does not create an input for the orderOptions parameter.
--- @param group string Optional - The group of the input fields.
--- @return ResultOf_CC_InputSpreadOrder ListDynamic with named elements.
--- @overload fun(): ResultOf_CC_InputSpreadOrder
--- @overload fun(optionalParameters: OptionalParametersOf_CC_InputSpreadOrder): ResultOf_CC_InputSpreadOrder
function CC_InputSpreadOrder(group) end

--- The optional parameters of CC_LogRule.
--- @shape OptionalParametersOf_CC_LogRule
--- @field characters string | nil The character(s) to repeat to form the rule.
--- @field repitition number | nil How many times to repeat the character(s).
--- @field color any | nil Color of the rule.

--- Logs a rule (horizontal line).
--- @param characters string Optional - The character(s) to repeat to form the rule. Suggestions: Input, Load
--- @param repitition number Optional - How many times to repeat the character(s). Suggestions: Input
--- @param color any Optional - Color of the rule.
--- @return void Nothing
--- @overload fun(): void
--- @overload fun(characters: string): void
--- @overload fun(characters: string, repitition: number): void
--- @overload fun(optionalParameters: OptionalParametersOf_CC_LogRule): void
function CC_LogRule(characters, repitition, color) end

--- The optional parameters of CC_MadHatterBBands.
--- @shape OptionalParametersOf_CC_MadHatterBBands
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Custom BBands signal implementation for MadHatter
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_MadHatterBBands): Enum
function CC_MadHatterBBands(chartIndex, name, interval) end

--- The optional parameters of CC_MadHatterMACD.
--- @shape OptionalParametersOf_CC_MadHatterMACD
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Custom MACD signal implementation for MadHatter
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_MadHatterMACD): Enum
function CC_MadHatterMACD(chartIndex, name, interval) end

--- The optional parameters of CC_MadHatterRSI.
--- @shape OptionalParametersOf_CC_MadHatterRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Custom RSI signal implementation for MadHatter
--- @param chartIndex number The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_MadHatterRSI): Enum
function CC_MadHatterRSI(chartIndex, name, interval) end

--- The optional parameters of CC_MarketMakingSlot.
--- @shape OptionalParametersOf_CC_MarketMakingSlot
--- @field stopLossPercentage number | nil Stop loss percentage. Only active when position if fully open
--- @field stopLossCoolDown number | nil The cooldown after a stop loss as been breached and position is closed
--- @field reset boolean | nil If set on true, the slot will reset its saved values.
--- @field note string | nil Optional note to distinguish slot orders.

--- Market making bot slot
--- @param startLong boolean Set on true if slots needs to start with a buy/long order or false for sell/short order. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param offset number Price offset from the current price. Suggestions: Input
--- @param amount number Slot amount. Suggestions: Input
--- @param enterTimeout number Enter timeout. Suggestions: Input
--- @param exitTimeout number Exit timeout. Suggestions: Input
--- @param stopLossPercentage number Optional - Stop loss percentage. Only active when position if fully open. Suggestions: Input
--- @param stopLossCoolDown number Optional - The cooldown after a stop loss as been breached and position is closed. Suggestions: Input
--- @param reset boolean Optional - If set on true, the slot will reset its saved values. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param note string Optional - Optional note to distinguish slot orders. Suggestions: Input, Load
--- @return string Open order id. Empty when slot hasn`t got open orders. Output Suggestions: Save, CancelOrder, GetOrderOpenTime
--- @overload fun(startLong: boolean, offset: number, amount: number, enterTimeout: number, exitTimeout: number): string
--- @overload fun(startLong: boolean, offset: number, amount: number, enterTimeout: number, exitTimeout: number, stopLossPercentage: number): string
--- @overload fun(startLong: boolean, offset: number, amount: number, enterTimeout: number, exitTimeout: number, stopLossPercentage: number, stopLossCoolDown: number): string
--- @overload fun(startLong: boolean, offset: number, amount: number, enterTimeout: number, exitTimeout: number, stopLossPercentage: number, stopLossCoolDown: number, reset: boolean): string
--- @overload fun(startLong: boolean, offset: number, amount: number, enterTimeout: number, exitTimeout: number, optionalParameters: OptionalParametersOf_CC_MarketMakingSlot): string
function CC_MarketMakingSlot(startLong, offset, amount, enterTimeout, exitTimeout, stopLossPercentage, stopLossCoolDown, reset, note) end

--- The object returned by CC_MarketTrailer.
--- @class ResultOf_CC_MarketTrailer
--- @field basePrice number Base price that the current price is compared to. Suggestions: Log, Save
--- @field callbackRate number The callback price change target. Suggestions: Log
--- @field currentPrice number Current market price. Suggestions: PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field guid string Guaranteed unique identifier of this instance. Suggestions: PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field isActive boolean True if the price met the activation rate. Suggestions: And, IsTrue, IsFalse, Not, Or, IfElse, Switch, IfElseIf
--- @field isCallbackActive boolean True if the price met the callback activation rate. Suggestions: And, IsTrue, IsFalse, Not, Or, IfElse, Switch, IfElseIf
--- @field isStopped boolean True if all triggers have been met. Suggestions: IndicatorContainer, SafetyContainer, And, IsTrue, IsFalse, Not, Or, IfElse, Switch, IfElseIf
--- @field maxPriceChange number The best price change the market achieved so far. Suggestions: Log, Save
--- @field priceChange number The current price change of the market. Suggestions: Log
--- @field stopRate number The trailing stop price change target. Suggestions: Log
--- @field triggerCount number How many triggers were met so far. Suggestions: Log
--- @field [1] number Base price that the current price is compared to. Suggestions: Log, Save
--- @field [2] number The callback price change target. Suggestions: Log
--- @field [3] number Current market price. Suggestions: PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field [4] string Guaranteed unique identifier of this instance. Suggestions: PlaceBuyOrder, PlaceCancelledOrder, PlaceExitLongOrder, PlaceExitPositionOrder, PlaceExitShortOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceSellOrder
--- @field [5] boolean True if the price met the activation rate. Suggestions: And, IsTrue, IsFalse, Not, Or, IfElse, Switch, IfElseIf
--- @field [6] boolean True if the price met the callback activation rate. Suggestions: And, IsTrue, IsFalse, Not, Or, IfElse, Switch, IfElseIf
--- @field [7] boolean True if all triggers have been met. Suggestions: IndicatorContainer, SafetyContainer, And, IsTrue, IsFalse, Not, Or, IfElse, Switch, IfElseIf
--- @field [8] number The best price change the market achieved so far. Suggestions: Log, Save
--- @field [9] number The current price change of the market. Suggestions: Log
--- @field [10] number The trailing stop price change target. Suggestions: Log
--- @field [11] number How many triggers were met so far. Suggestions: Log

--- The optional parameters of CC_MarketTrailer.
--- @shape OptionalParametersOf_CC_MarketTrailer
--- @field guid string | nil Guaranteed unique identifier to distinguish it from the others if trailing more than one market in the same script.
--- @field basePrice number | nil Price that the activation rate is based on. If you have an open position use the entry price. Set to 0 to use the current market price of the first call to the command.
--- @field direction string | nil Direction to trail in. Trail the market up with "up" or "long" or down with "down" or "short".
--- @field market string | nil The market to trail. Leave blank (empty string) to use main market.
--- @field activationRate number | nil Percent price change vs base price that will activate trailing.
--- @field callbackRate number | nil Precent price change called back from the greatest price change, that will trigger and stop the command.
--- @field triggerCount number | nil How many times to trigger before stopping the command. Set to 1 to stop the command after the first trigger.
--- @field adjustmentMultiplier number | nil Multiplier to adjust the callback rate each trigger. Ignored if only 1 trigger. Use 1 for no adjustment. A value 0.01 to 0.99 will shrink the callback distance each trigger. A value 1.01 to 1.99 will increase the callback distance each trigger.
--- @field deactivateOnFallback boolean | nil Deactivate the command if the price change falls back on the activationRate. This prevents triggering under your target, which may be good or bad depending on your strategy.
--- @field resetOnFallback boolean | nil Reset the command if the price change falls back on the activationRate. Ignored when not deactivating on fallback.
--- @field logging boolean | nil Turns console logging on or off.
--- @field name string | nil Name to use in logging to distinguish it from the other instances of this command.
--- @field reporting boolean | nil Turns custom report of current state on or off.
--- @field verbose boolean | nil Turns verbose console logging on or off. Ignored if logging is turned off.

--- Trails a market in a way similar to a trailing stop order, but has more options and places no orders.
--- @param guid string Optional - Guaranteed unique identifier to distinguish it from the others if trailing more than one market in the same script. Suggestions: Load, NewGuid
--- @param basePrice number Optional - Price that the activation rate is based on. If you have an open position use the entry price. Set to 0 to use the current market price of the first call to the command. Suggestions: AverageEnterPrice, GetPositionEnterPrice, Load
--- @param direction string Optional - Direction to trail in. Trail the market up with "up" or "long" or down with "down" or "short". Suggestions: GetPositionDirection
--- @param market string Optional - The market to trail. Leave blank (empty string) to use main market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket, GetPositionMarket, CreateMarket
--- @param activationRate number Optional - Percent price change vs base price that will activate trailing. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param callbackRate number Optional - Precent price change called back from the greatest price change, that will trigger and stop the command. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param triggerCount number Optional - How many times to trigger before stopping the command. Set to 1 to stop the command after the first trigger. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param adjustmentMultiplier number Optional - Multiplier to adjust the callback rate each trigger. Ignored if only 1 trigger. Use 1 for no adjustment. A value 0.01 to 0.99 will shrink the callback distance each trigger. A value 1.01 to 1.99 will increase the callback distance each trigger. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param deactivateOnFallback boolean Optional - Deactivate the command if the price change falls back on the activationRate. This prevents triggering under your target, which may be good or bad depending on your strategy. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param resetOnFallback boolean Optional - Reset the command if the price change falls back on the activationRate. Ignored when not deactivating on fallback. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param logging boolean Optional - Turns console logging on or off. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param name string Optional - Name to use in logging to distinguish it from the other instances of this command.
--- @param reporting boolean Optional - Turns custom report of current state on or off. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param verbose boolean Optional - Turns verbose console logging on or off. Ignored if logging is turned off. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @return ResultOf_CC_MarketTrailer ListDynamic with named elements.
--- @overload fun(): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number, adjustmentMultiplier: number): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number, adjustmentMultiplier: number, deactivateOnFallback: boolean): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number, adjustmentMultiplier: number, deactivateOnFallback: boolean, resetOnFallback: boolean): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number, adjustmentMultiplier: number, deactivateOnFallback: boolean, resetOnFallback: boolean, logging: boolean): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number, adjustmentMultiplier: number, deactivateOnFallback: boolean, resetOnFallback: boolean, logging: boolean, name: string): ResultOf_CC_MarketTrailer
--- @overload fun(guid: string, basePrice: number, direction: string, market: string, activationRate: number, callbackRate: number, triggerCount: number, adjustmentMultiplier: number, deactivateOnFallback: boolean, resetOnFallback: boolean, logging: boolean, name: string, reporting: boolean): ResultOf_CC_MarketTrailer
--- @overload fun(optionalParameters: OptionalParametersOf_CC_MarketTrailer): ResultOf_CC_MarketTrailer
function CC_MarketTrailer(guid, basePrice, direction, market, activationRate, callbackRate, triggerCount, adjustmentMultiplier, deactivateOnFallback, resetOnFallback, logging, name, reporting, verbose) end

--- The optional parameters of CC_Median.
--- @shape OptionalParametersOf_CC_Median
--- @field isSorted boolean | nil Set to true if the table is already sorted.

--- Finds the middle value of a table of values. If there is an even number of elements, takes the average of the 2 middle values.
--- @param table any[] Table of values to find the median value of. Suggestions: ClosePrices, Prices, AskPrices, BuyPrices, BidPrices, SellPrices, CurrentPrice, GetVolume, HeikenClosePrices, OHLCPrices, HeikinOpenPrices, HighPrices, HLCPrices, HLPrices, LowPrices, OCPrices, OpenPrices
--- @param isSorted boolean Optional - Set to true if the table is already sorted. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return number The median value of the table values.
--- @overload fun(table: any[]): number
--- @overload fun(table: any[], optionalParameters: OptionalParametersOf_CC_Median): number
function CC_Median(table, isSorted) end

--- Sorts a table using the merge sorting algorithm.
--- @param table any[] Table to sort. Suggestions: ClosePrices, Prices
--- @return any[] The sorted table.
function CC_MergeSort(table) end

--- The optional parameters of CC_MTR.
--- @shape OptionalParametersOf_CC_MTR
--- @field period number | nil How many intervals to go back.
--- @field interval number | nil Time of each candle in minutes.
--- @field fullCandles boolean | nil If false, the currently open candle will not be included.
--- @field market string | nil Which market to look at.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.

--- Returns the maximum true range.
--- @param period number Optional - How many intervals to go back. Suggestions: Input
--- @param interval number Optional - Time of each candle in minutes. Suggestions: InputInterval
--- @param fullCandles boolean Optional - If false, the currently open candle will not be included. Suggestions: Input
--- @param market string Optional - Which market to look at. Suggestions: InputAccountMarket, InputMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change. Suggestions: Input
--- @return number The maximum true range.
--- @overload fun(): number
--- @overload fun(period: number): number
--- @overload fun(period: number, interval: number): number
--- @overload fun(period: number, interval: number, fullCandles: boolean): number
--- @overload fun(period: number, interval: number, fullCandles: boolean, market: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_CC_MTR): number
function CC_MTR(period, interval, fullCandles, market, hlcStyle) end

--- The optional parameters of CC_MVO.
--- @shape OptionalParametersOf_CC_MVO
--- @field high number[] | nil 
--- @field low number[] | nil 
--- @field close number[] | nil 
--- @field volume number[] | nil 
--- @field fastPeriod number | nil Fast Period
--- @field fastMaType number | nil Fast MA Type
--- @field slowPeriod number | nil Slow Period
--- @field slowMaType number | nil Slow MA Type
--- @field stochFastK number | nil Fast %K Period
--- @field stochSlowK number | nil Slow %K Period
--- @field stochSlowD number | nil Slow %D Period

--- Market Volume Oscillator
--- @param high number[] Optional - . Suggestions: HighPrices
--- @param low number[] Optional - . Suggestions: LowPrices
--- @param close number[] Optional - . Suggestions: ClosePrices, Prices, HLPrices, HLCPrices, HeikenClosePrices, OHLCPrices
--- @param volume number[] Optional - . Suggestions: GetVolume
--- @param fastPeriod number Optional - Fast Period. Suggestions: Input
--- @param fastMaType number Optional - Fast MA Type. Suggestions: InputMaTypes
--- @param slowPeriod number Optional - Slow Period. Suggestions: Input
--- @param slowMaType number Optional - Slow MA Type. Suggestions: InputMaTypes
--- @param stochFastK number Optional - Fast %K Period. Suggestions: Input
--- @param stochSlowK number Optional - Slow %K Period. Suggestions: Input
--- @param stochSlowD number Optional - Slow %D Period. Suggestions: Input
--- @return number[] MVO values. Output Suggestions: GetCrossOverUnderSignal, GetBuySellLevelSignal, GetThresholdSignal, IsBiggerThan, IsSmallerThan
--- @overload fun(): number[]
--- @overload fun(high: number[]): number[]
--- @overload fun(high: number[], low: number[]): number[]
--- @overload fun(high: number[], low: number[], close: number[]): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[]): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[], fastPeriod: number): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[], fastPeriod: number, fastMaType: number): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[], fastPeriod: number, fastMaType: number, slowPeriod: number): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[], fastPeriod: number, fastMaType: number, slowPeriod: number, slowMaType: number): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[], fastPeriod: number, fastMaType: number, slowPeriod: number, slowMaType: number, stochFastK: number): number[]
--- @overload fun(high: number[], low: number[], close: number[], volume: number[], fastPeriod: number, fastMaType: number, slowPeriod: number, slowMaType: number, stochFastK: number, stochSlowK: number): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_MVO): number[]
function CC_MVO(high, low, close, volume, fastPeriod, fastMaType, slowPeriod, slowMaType, stochFastK, stochSlowK, stochSlowD) end

--- The object returned by CC_ObjectArray.
--- @class ResultOf_CC_ObjectArray
--- @field Add any Works like ArrayAdd but without the source array parameter and does not return the array.
--- @field Concat any Concatenates another ObjectArray to this one and does not return the array.
--- @field Count any Works like Array.Count but without the source array parameter.
--- @field Get any Works like ArrayGet but without the source array parameter.
--- @field GetAllValueLists any Returns a ListDynamic containing each of the internal arrays for each field, named valueList1 through valueList9.
--- @field Index any Works like ArrayIndex but without the source array parameter.
--- @field Last any Works like ArrayLast but without the source array parameter.
--- @field Load any Loads into itself from a saved instance.
--- @field Pop any Works like ArrayPop but without the source array parameter and does not return the array.
--- @field Push any Works like ArrayAdd but without the source array parameter and does not return the array.
--- @field Remove any Works like ArrayRemove but without the source array parameter and does not return the array.
--- @field Save any Saves this instance.
--- @field Shift any Works like ArrayShift but without the source array parameter and does not return the array.
--- @field Unshift any Works like ArrayUnshift but without the source array parameter and does not return the array.
--- @field [1] any Works like ArrayAdd but without the source array parameter and does not return the array.
--- @field [2] any Concatenates another ObjectArray to this one and does not return the array.
--- @field [3] any Works like Array.Count but without the source array parameter.
--- @field [4] any Works like ArrayGet but without the source array parameter.
--- @field [5] any Returns a ListDynamic containing each of the internal arrays for each field, named valueList1 through valueList9.
--- @field [6] any Works like ArrayIndex but without the source array parameter.
--- @field [7] any Works like ArrayLast but without the source array parameter.
--- @field [8] any Loads into itself from a saved instance.
--- @field [9] any Works like ArrayPop but without the source array parameter and does not return the array.
--- @field [10] any Works like ArrayAdd but without the source array parameter and does not return the array.
--- @field [11] any Works like ArrayRemove but without the source array parameter and does not return the array.
--- @field [12] any Saves this instance.
--- @field [13] any Works like ArrayShift but without the source array parameter and does not return the array.
--- @field [14] any Works like ArrayUnshift but without the source array parameter and does not return the array.

--- Creates and returns an ObjectArray Class instance. It has less operations than a normal array, but it can store objects instead of just simple types and still be able to save and load (using its own methods). Up to 9 fields/properties are supported on the objects, and you must provide their names.
--- @param fieldNameList string Comma separated list of the names of the fields on your object (no spaces around commas) "name,value,isDone" for example. Suggestions: Input, Load
--- @return ResultOf_CC_ObjectArray ListDynamic where each element is a function.
function CC_ObjectArray(fieldNameList) end

--- Custom version of DefineIntervalOptimization with reset ability.
--- @param callback function The callback to execute.
--- @param interval number The interval for the cache. Suggestions: Input
--- @param resetCache boolean Resets cache when set on true. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return any[] The result or a cached value of the callback
function CC_OptimizedWithReset(callback, interval, resetCache) end

--- The optional parameters of CC_PlaceSpreadOrder.
--- @shape OptionalParametersOf_CC_PlaceSpreadOrder
--- @field listDynamic any[] | nil Set this to the ListDynamicType returned by InputPriceSpread. Will override all other parameters.
--- @field amountList any[] | nil List of amounts to use.
--- @field direction string | nil Buy, Sell, GoLong, ExitLong, GoShort, ExitShort.
--- @field orderOptions any[] | nil Parameters to give each order, other than price and amount. See PlaceGoLongOrder or PlaceGoShortOrder for help.
--- @field priceList any[] | nil List of prices to use.

--- Creates a spread of orders.
--- @param listDynamic any[] Optional - Set this to the ListDynamicType returned by InputPriceSpread. Will override all other parameters.
--- @param amountList any[] Optional - List of amounts to use.
--- @param direction string Optional - Buy, Sell, GoLong, ExitLong, GoShort, ExitShort. Suggestions: Input
--- @param orderOptions any[] Optional - Parameters to give each order, other than price and amount. See PlaceGoLongOrder or PlaceGoShortOrder for help.
--- @param priceList any[] Optional - List of prices to use.
--- @return any[] List of Order IDs
--- @overload fun(): any[]
--- @overload fun(listDynamic: any[]): any[]
--- @overload fun(listDynamic: any[], amountList: any[]): any[]
--- @overload fun(listDynamic: any[], amountList: any[], direction: string): any[]
--- @overload fun(listDynamic: any[], amountList: any[], direction: string, orderOptions: any[]): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_PlaceSpreadOrder): any[]
function CC_PlaceSpreadOrder(listDynamic, amountList, direction, orderOptions, priceList) end

--- The optional parameters of CC_PRO_LB.
--- @shape OptionalParametersOf_CC_PRO_LB
--- @field interval number | nil Interval for the price data. By default the main interval

--- Lazy Bear - This is a modified form of PSO (original idea by Lee Leibfarth), to use RSI as the input. 
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_PRO_LB): Enum
function CC_PRO_LB(chartIndex, interval) end

--- The optional parameters of CC_ProfitTrailer.
--- @shape OptionalParametersOf_CC_ProfitTrailer
--- @field trailMode string | nil Trailing mode. Use one of the following: 'default', 'grow', or 'shrink'.
--- @field maxRebounds number | nil Maximum rebounds allowed. If not set, then rebound is not used. Default is 0 (disabled).
--- @field positionId string | nil Unique position ID.

--- A ProfitTrailer implementation by Pshai. Works like a safety and returns true when active.
--- @param trailStartPrc number Profit level (as percentage) where the trailing starts. Suggestions: Input
--- @param trailDistPrc number Trailing distance (as percentage) from the highest recorded profit. Suggestions: Input
--- @param trailMode string Optional - Trailing mode. Use one of the following: 'default', 'grow', or 'shrink'. Suggestions: Input
--- @param maxRebounds number Optional - Maximum rebounds allowed. If not set, then rebound is not used. Default is 0 (disabled). Suggestions: Input
--- @param positionId string Optional - Unique position ID. Suggestions: Load
--- @return boolean True if safety has triggered, otherwise false. Output Suggestions: SafetyContainer, And, IsTrue, Or, IfElse, Switch, IfElseIf
--- @overload fun(trailStartPrc: number, trailDistPrc: number): boolean
--- @overload fun(trailStartPrc: number, trailDistPrc: number, trailMode: string): boolean
--- @overload fun(trailStartPrc: number, trailDistPrc: number, trailMode: string, maxRebounds: number): boolean
--- @overload fun(trailStartPrc: number, trailDistPrc: number, optionalParameters: OptionalParametersOf_CC_ProfitTrailer): boolean
function CC_ProfitTrailer(trailStartPrc, trailDistPrc, trailMode, maxRebounds, positionId) end

--- The optional parameters of CC_QuoteDecimals.
--- @shape OptionalParametersOf_CC_QuoteDecimals
--- @field market string | nil The market.

--- Returns the number of decimal places supported by the QuoteCurrency.
--- @param market string Optional - The market. Suggestions: InputAccountMarket, InputMarket, PriceMarket
--- @return number the number of decimal places supported by the QuoteCurrency
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CC_QuoteDecimals): number
function CC_QuoteDecimals(market) end

--- Adds a custom report on your worst point of liquidation risk.
--- @return void
function CC_ReportMaxRiskPoint() end

--- The optional parameters of CC_ReportMaxRiskPointV2.
--- @shape OptionalParametersOf_CC_ReportMaxRiskPointV2
--- @field walletAmount number | nil The bot will start with this amount and adjust according to its profits. Set to -1 to use the real wallet balance.
--- @field willError boolean | nil If true, will log an error when there is a probable liquidation, which also ends a backtest early.If false, will log a warning when there is a probable liquidation.

--- Adds a custom report on your worst point of liquidation risk.
--- @param walletAmount number Optional - The bot will start with this amount and adjust according to its profits. Set to -1 to use the real wallet balance. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param willError boolean Optional - If true, will log an error when there is a probable liquidation, which also ends a backtest early.If false, will log a warning when there is a probable liquidation.
--- @return void
--- @overload fun(): void
--- @overload fun(walletAmount: number): void
--- @overload fun(optionalParameters: OptionalParametersOf_CC_ReportMaxRiskPointV2): void
function CC_ReportMaxRiskPointV2(walletAmount, willError) end

--- Adds a custom report on your open positions.
--- @return void
function CC_ReportOpenPositions() end

--- The optional parameters of CC_ScalperChannel_LB.
--- @shape OptionalParametersOf_CC_ScalperChannel_LB
--- @field interval number | nil Interval for the price data. By default the main interval

--- Lazy Bear - Scalper Channel
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_ScalperChannel_LB): Enum
function CC_ScalperChannel_LB(chartIndex, interval) end

--- 
--- @return void
function CC_SHAPE() end

--- Sorts a table using the shell sorting algorithm.
--- @param table any[] Table to sort. Suggestions: ClosePrices, Prices
--- @return any[] The sorted table.
function CC_ShellSort(table) end

--- The optional parameters of CC_SQZMOM_LB.
--- @shape OptionalParametersOf_CC_SQZMOM_LB
--- @field interval number | nil Interval for the price data. By default the main interval

--- Squeeze Momentum Indicator - LazyBear
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Signal result. Output Suggestions: TradeBotContainer, IndicatorContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_SQZMOM_LB): Enum
function CC_SQZMOM_LB(chartIndex, interval) end

--- Schaff Trend Cycle
--- @param data number[] Source data. Suggestions: ClosePrices, Prices
--- @param depth number STC Depth. Suggestions: Input
--- @param longLength number The short length. Suggestions: Input
--- @param shortLength number The short length. Suggestions: Input
--- @return number[] STC Result. Output Suggestions: Plot, IsBiggerOrSmallerThan
function CC_STC(data, depth, longLength, shortLength) end

--- The optional parameters of CC_StroothBBands.
--- @shape OptionalParametersOf_CC_StroothBBands
--- @field chartIndex number | nil The index on which to chart
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.
--- @field plot boolean | nil enable plotting the bands

--- Custom BBands signal implementation
--- @param chartIndex number Optional - The index on which to chart
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval
--- @param plot boolean Optional - enable plotting the bands. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return Enum signal
--- @overload fun(): Enum
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, name: string, interval: number): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_CC_StroothBBands): Enum
function CC_StroothBBands(chartIndex, name, interval, plot) end

--- Helps me test Loading
--- @param guid string unique identifier. Suggestions: Input, Load
--- @return number
function CC_TestLoad(guid) end

--- Returns true every interval and false in between intervals.
--- @param interval number The interval at which true should be returned instead of false. Suggestions: InputInterval
--- @return boolean true every interval and false in between intervals
function CC_TrueOnInterval(interval) end

--- The optional parameters of CC_TrueRangeList.
--- @shape OptionalParametersOf_CC_TrueRangeList
--- @field Interval number | nil The boolean to format
--- @field Period number | nil The boolean to format
--- @field Market string | nil The boolean to format
--- @field Full_Candles boolean | nil The boolean to format
--- @field HLC_Style boolean | nil The boolean to format

--- Returns the list of true ranges.
--- @param Interval number Optional - The boolean to format. Suggestions: Input
--- @param Period number Optional - The boolean to format. Suggestions: Input
--- @param Market string Optional - The boolean to format. Suggestions: Input, Load
--- @param Full_Candles boolean Optional - The boolean to format. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param HLC_Style boolean Optional - The boolean to format. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return any[] List of true ranges
--- @overload fun(): any[]
--- @overload fun(Interval: number): any[]
--- @overload fun(Interval: number, Period: number): any[]
--- @overload fun(Interval: number, Period: number, Market: string): any[]
--- @overload fun(Interval: number, Period: number, Market: string, Full_Candles: boolean): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_TrueRangeList): any[]
function CC_TrueRangeList(Interval, Period, Market, Full_Candles, HLC_Style) end

--- Calls a function on an interval, and remembers the previous result between the update intervals. Works the same as DefineIntervalOptimization, but with reset feature.
--- @param command function The command or function to execute.
--- @param interval number The interval in minutes at which the cached result will be updated with a new result from the command or function. Suggestions: Input
--- @param override boolean If true, will immeidately update the result and restart the interval timer. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return any[] ListDynamic where the first element is the result or cached result of the given command or function.
function CC_UpdateOnInterval(command, interval, override) end

--- The optional parameters of CC_VPM3.
--- @shape OptionalParametersOf_CC_VPM3
--- @field AdjustVPosition_amount number | nil Amount to adjust: negative value reduces, positive value adds - also required at creating VP
--- @field AdjustVPosition_execute boolean | nil Check box and hit save to execute adjustment. Clear inputfields uncheck execute checkbox and save again 
--- @field CloseVPosition_execute boolean | nil Only check this box if you want to close the position instead.
--- @field Create_or_Adjust_VP_price number | nil Price to adjust VPosition
--- @field CreateVPosition_execute boolean | nil Check box and hit save to execute adjustment. Clear inputfields uncheck execute checkbox and save again 
--- @field PositionDirection Enum | nil direction of the VPosition  
--- @field positionId_ string | nil Required to Adjust or Close,  empty field to Create position    (if empty, null: a new unique positionIdentifier is created for the position: NewGuid  )

--- VPM3 ::: create_adjust_close::: | Manage Virtual Positions in running HaasBots.
--- @param AdjustVPosition_amount number Optional - Amount to adjust: negative value reduces, positive value adds - also required at creating VP
--- @param AdjustVPosition_execute boolean Optional - Check box and hit save to execute adjustment. Clear inputfields uncheck execute checkbox and save again 
--- @param CloseVPosition_execute boolean Optional - Only check this box if you want to close the position instead.
--- @param Create_or_Adjust_VP_price number Optional - Price to adjust VPosition
--- @param CreateVPosition_execute boolean Optional - Check box and hit save to execute adjustment. Clear inputfields uncheck execute checkbox and save again 
--- @param PositionDirection Enum Optional - direction of the VPosition  . Suggestions: PositionBought, PositionLong, PositionShort, PositionSold
--- @param positionId_ string Optional - Required to Adjust or Close,  empty field to Create position    (if empty, null: a new unique positionIdentifier is created for the position: NewGuid  ). Suggestions: PositionContainer, Input, Load
--- @return void Create and Manage Virtual Positions
--- @overload fun(): void
--- @overload fun(AdjustVPosition_amount: number): void
--- @overload fun(AdjustVPosition_amount: number, AdjustVPosition_execute: boolean): void
--- @overload fun(AdjustVPosition_amount: number, AdjustVPosition_execute: boolean, CloseVPosition_execute: boolean): void
--- @overload fun(AdjustVPosition_amount: number, AdjustVPosition_execute: boolean, CloseVPosition_execute: boolean, Create_or_Adjust_VP_price: number): void
--- @overload fun(AdjustVPosition_amount: number, AdjustVPosition_execute: boolean, CloseVPosition_execute: boolean, Create_or_Adjust_VP_price: number, CreateVPosition_execute: boolean): void
--- @overload fun(AdjustVPosition_amount: number, AdjustVPosition_execute: boolean, CloseVPosition_execute: boolean, Create_or_Adjust_VP_price: number, CreateVPosition_execute: boolean, PositionDirection: Enum): void
--- @overload fun(optionalParameters: OptionalParametersOf_CC_VPM3): void
function CC_VPM3(AdjustVPosition_amount, AdjustVPosition_execute, CloseVPosition_execute, Create_or_Adjust_VP_price, CreateVPosition_execute, PositionDirection, positionId_) end

--- The optional parameters of CC_WRPC.
--- @shape OptionalParametersOf_CC_WRPC
--- @field interval number | nil Interval for the price data. By default the main interval

--- Wilson Relative Price Channel
--- @param chartIndex number Index on which to plot
--- @param interval number Optional - Interval for the price data. By default the main interval. Suggestions: Input
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_WRPC): Enum
function CC_WRPC(chartIndex, interval) end

--- The optional parameters of CC_XTR.
--- @shape OptionalParametersOf_CC_XTR
--- @field type string | nil "average" for average true range, "maximum" for maximum true range, "median" for median true range, "minimum" for minimum true range.
--- @field period number | nil How many intervals to go back. Set to -1 to use the maximum available history. True range calculation requires one extra candle because it compares across two candles. For your convenience, your period will automatically be increased by one so you do not need to remember to.
--- @field interval number | nil Time of each candle in minutes.
--- @field fullCandles boolean | nil If false, the currently open candle will not be included.
--- @field market string | nil Which market to look at.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @field index number | nil Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st.
--- @field total number | nil How many parts to divide into. This is just like a fraction denominator.
--- @field isPercent boolean | nil If true, the true percent range will be used.

--- Finds the average, maximum, median, or minimum true range or percent true range. Supports specifying a fraction of the range to use. Supports any period there is price data for, not capped at 200. Supports true percent range.
--- @param type string Optional - "average" for average true range, "maximum" for maximum true range, "median" for median true range, "minimum" for minimum true range. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param period number Optional - How many intervals to go back. Set to -1 to use the maximum available history. True range calculation requires one extra candle because it compares across two candles. For your convenience, your period will automatically be increased by one so you do not need to remember to. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param interval number Optional - Time of each candle in minutes. Suggestions: InputInterval
--- @param fullCandles boolean Optional - If false, the currently open candle will not be included. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param market string Optional - Which market to look at. Suggestions: InputAccountMarket, InputMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param index number Optional - Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param total number Optional - How many parts to divide into. This is just like a fraction denominator. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @param isPercent boolean Optional - If true, the true percent range will be used. Suggestions: Input, InputAccount, InputAccountMarket, InputButton, InputCdlTypes, InputConstant, InputGroupHeader, InputInterval, InputLrTypes, InputMarket, InputMaTypes, InputOptions, InputOrderType, InputPriceSource, InputPriceSourceMarket, InputSignalManagement, InputSignalTypes, InputSourcePrice, InputTable, InputTableColumn, InputTableOptions, AccountGuid, CurrentInterval, Fee, Leverage, PriceMarket, TradeAmount
--- @return number The average, maximum, median, or minimum true range or true percent range. Output Suggestions: Add, Sum, Div, Mul, Mult, Sub
--- @overload fun(): number
--- @overload fun(type: string): number
--- @overload fun(type: string, period: number): number
--- @overload fun(type: string, period: number, interval: number): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string, hlcStyle: boolean): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string, hlcStyle: boolean, index: number): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string, hlcStyle: boolean, index: number, total: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_CC_XTR): number
function CC_XTR(type, period, interval, fullCandles, market, hlcStyle, index, total, isPercent) end

--- Pads a number with zero to have the specified number of digits like 04.200
--- @param input number The number to format. Suggestions: Input
--- @param before number The number of digits before the decimal. Use 0 to not pad. Suggestions: Input
--- @param after number The number of digits after the decimal. Use 0 to not pad. Suggestions: Input
--- @return string The number converted to a string with the specified digits.
function CC_ZeroPad(input, before, after) end

