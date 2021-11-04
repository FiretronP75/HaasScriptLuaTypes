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

--- Keeps the signal continuous for a number of minutes. Only switches when the signal changes from long to short.
--- @param signal Enum The signal. Suggestions: BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf, EasyABANDS, EasyADOSC, EasyAlice, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBBANDSB, EasyBBANDSW, EasyBOP, EasyCCI, EasyCDL, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyDynamicLongShortLevels, EasyFastRSI, EasyFIBONACCI, EasyFixedLongShortLevels, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyKST, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySAR, EasySlowRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasySTOCHRSI, EasyTRIX, EasyTSI, EasyUDRSI, EasyULTOSC, EasyWILLR, EasyZLMA
--- @param minutes number Number of minutes to keep the signal continious. Suggestions: Input
--- @return Enum The continuous signal. Output Suggestions: IndicatorContainer, TradeBotContainer, BoolToSignal, ConvertSignal, MapSignal, DelaySignal, GetAboveBelowSignal, GetBuySellLevelSignal, GetConsensusSignal, GetCrossOverUnderSignal, GetRemoteSignal, GetSuperSignal, GetThresholdSignal, GetUnanimousSignal, GetWeightedConsensusSignal, IgnoreSignalIf, PositionToBool, ReverseSignal, SaveRemoteSignal, SignalMapper, SignalProperties, SignalToBool, SignalToLog, SignalWeight, UseSignalIf
function CC_ContinuousSignal(signal, minutes) end

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
--- @return Enum Indicator Result. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_CC_EasyHullMA): Enum
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

--- A slot in the style of a Flash Crash Bot
--- @param basePrice number Base price of the bot. Suggestions: Input
--- @param index number Slot index (Unique). Suggestions: Input
--- @param amount number Trade amount. Suggestions: TradeAmount
--- @param spread number Spread between orders. Suggestions: Input
--- @param startWithBuy boolean Start with a buy order. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return void
function CC_FlashCrashSlot(basePrice, index, amount, spread, startWithBuy) end

--- The optional parameters of CC_FractionGrab.
--- @shape OptionalParametersOf_CC_FractionGrab
--- @field list any[] | nil Array, List, or Table to grab a fractional range from.
--- @field index number | nil Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st.
--- @field total number | nil How many parts to divide into. This is just like a fraction denominator.
--- @field sort boolean | nil Set to true to sort before dividing into parts.

--- Grabs a fractional range from an array, list, or table.
--- @param list any[] Optional - Array, List, or Table to grab a fractional range from. Suggestions: ClosePrices, Prices
--- @param index number Optional - Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st. Suggestions: Input
--- @param total number Optional - How many parts to divide into. This is just like a fraction denominator. Suggestions: Input
--- @param sort boolean Optional - Set to true to sort before dividing into parts. Suggestions: Input
--- @return any[] The fractional range from the array, list, or table.
--- @overload fun(): any[]
--- @overload fun(list: any[]): any[]
--- @overload fun(list: any[], index: number): any[]
--- @overload fun(list: any[], index: number, total: number): any[]
--- @overload fun(optionalParameters: OptionalParametersOf_CC_FractionGrab): any[]
function CC_FractionGrab(list, index, total, sort) end

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

--- The optional parameters of CC_Median.
--- @shape OptionalParametersOf_CC_Median
--- @field isSorted boolean | nil Set to true if the table is already sorted.

--- Finds the middle value of a table of values. If there is an even number of elements, takes the average of the 2 middle values.
--- @param table any[] Table of values to find the median value of. Suggestions: ClosePrices, Prices
--- @param isSorted boolean Optional - Set to true if the table is already sorted. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return number The median value of the table values.
--- @overload fun(table: any[]): number
--- @overload fun(table: any[], optionalParameters: OptionalParametersOf_CC_Median): number
function CC_Median(table, isSorted) end

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
--- @field period number | nil How many intervals to go back.
--- @field interval number | nil Time of each candle in minutes.
--- @field fullCandles boolean | nil If false, the currently open candle will not be included.
--- @field market string | nil Which market to look at.
--- @field hlcStyle boolean | nil When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change.
--- @field index number | nil Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st.
--- @field total number | nil How many parts to divide into. This is just like a fraction denominator.

--- Finds the average, maximum, median, or minimum true range. Supports specifying a fraction of the range to use. Supports any period there is price data for, not capped at 200.
--- @param type string Optional - "average" for average true range, "maximum" for maximum true range, "median" for median true range, "minimum" for minimum true range. Suggestions: Input
--- @param period number Optional - How many intervals to go back. Suggestions: Input
--- @param interval number Optional - Time of each candle in minutes. Suggestions: InputInterval
--- @param fullCandles boolean Optional - If false, the currently open candle will not be included. Suggestions: Input
--- @param market string Optional - Which market to look at. Suggestions: InputAccountMarket, InputMarket, PriceMarket
--- @param hlcStyle boolean Optional - When enabled, the data returned will be adjusted for HLC instead of OHLC. Meaning that the OHL data can change. Suggestions: Input
--- @param index number Optional - Which part to grab. Unlike a fraction numerator, previous parts are not included. In a fraction, 2 would mean 1st and 2nd parts combined. But here, 2 would mean the 2nd part without the 1st. Suggestions: Input
--- @param total number Optional - How many parts to divide into. This is just like a fraction denominator. Suggestions: Input
--- @return number The average, maximum, median, or minimum true range. Output Suggestions: Add, Sum, Sub
--- @overload fun(): number
--- @overload fun(type: string): number
--- @overload fun(type: string, period: number): number
--- @overload fun(type: string, period: number, interval: number): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string, hlcStyle: boolean): number
--- @overload fun(type: string, period: number, interval: number, fullCandles: boolean, market: string, hlcStyle: boolean, index: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_CC_XTR): number
function CC_XTR(type, period, interval, fullCandles, market, hlcStyle, index, total) end

