--- Signal Helpers

--- The optional parameters of BoolToSignal.
--- @shape OptionalParametersOf_BoolToSignal
--- @field isLong boolean | nil When true, SignalLong will be returned.
--- @field isShort boolean | nil When true, SignalShort will be returned.
--- @field isExit boolean | nil When true, SignalExitPosition will be returned.
--- @field isNone boolean | nil When true, SignalNone will be returned.

--- Converts 4 boolean values to a signal.
--- @param isLong boolean Optional - When true, SignalLong will be returned.
--- @param isShort boolean Optional - When true, SignalShort will be returned.
--- @param isExit boolean Optional - When true, SignalExitPosition will be returned.
--- @param isNone boolean Optional - When true, SignalNone will be returned.
--- @return Enum The signal as a result of the boolean values. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(): Enum
--- @overload fun(isLong: boolean): Enum
--- @overload fun(isLong: boolean, isShort: boolean): Enum
--- @overload fun(isLong: boolean, isShort: boolean, isExit: boolean): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_BoolToSignal): Enum
function BoolToSignal(isLong, isShort, isExit, isNone) end

--- Converts the signal if its matches the defined one.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param signalToCovert Enum The signal we want to convert. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition, SignalNone
--- @param convertedSignal Enum The signal we want to convert too. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition, SignalNone
--- @return Enum Returns the original or converted signal depending on the input. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function ConvertSignal(signal, signalToCovert, convertedSignal) end

--- Saves and delays a signal by a number of minutes.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param minutes number | number[] The number of minutes of the delay. Suggestions: Input
--- @return Enum Returns the saved signal from a number of minutes back or SignalNone when it doesn't have a delayed signal yet. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function DelaySignal(signal, minutes) end

--- Returns a continuous signal when values are above/below of each other.
--- @param fast number | number[] The 'faster' value. Suggestions: Input
--- @param slow number | number[] The 'slower' value. Suggestions: Input
--- @return Enum Returns SignalLong when fast is above slow, SignalShort when fast is below slow and SignalNone will occur if values are exactly the same. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetAboveBelowSignal(fast, slow) end

--- Determines the signal from a result with a buy and sell level.
--- @param value number | number[] The value to compare. Suggestions: Input
--- @param buyLevel number | number[] Below this value, a DoLong() is executed. Suggestions: Input
--- @param sellLevel number | number[] Above this value, a DoShort() is executed. Suggestions: Input
--- @return Enum Returns SignalLong when the result is below the buy level, SignalShort when the result is above the sell level and SignalNone when the result between the buy and sell level. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetBuySellLevelSignal(value, buyLevel, sellLevel) end

--- Counts the number of signals. When the majority agrees it will return the signal.
--- @param signals Enum[] Indicator signals collection. Takes a variable number of arguments. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return Enum Returns SignalLong, SignalShort, SignalExitPosition or SignalNone when there is a consensus or SignalNone when there is not. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetConsensusSignal(signals) end

--- Determines the signal from a result with a crossover or -under level.
--- @param fast number | number[] | table The 'faster' value. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param slow number | number[] | table The 'slower' value. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return Enum Returns SignalLong when the a crossover occurs, SignalShort when a crossunder occurs and SignalNone when non one those happened. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetCrossOverUnderSignal(fast, slow) end

--- Gets the remote signal which is published by SaveRemoteSignal()
--- @param id string The unique identifier of the signal. Suggestions: Input, Load
--- @return Enum Returns a trade signal enumeration. For example SignalLong(), SignalShort(), SignalExitPosition(), SignalNone() or SignalError(). Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetRemoteSignal(id) end

--- The optional parameters of GetSuperSignal.
--- @shape OptionalParametersOf_GetSuperSignal
--- @field centerPosition number | number[] | nil The center position for 'Zero Cross' signal types. 0 for indicators that oscillate below and above zero, 50 for indicators like RSI, MFI and STOCH.
--- @field buyLevel number | number[] | nil The buy level for 'Threshold' signal types. Used for indicators like RSI, MFI and STOCH.
--- @field sellLevel number | number[] | nil The sell level for 'Threshold' signal types. Used for indicators like RSI, MFI and STOCH.

--- Returns a continuous trade signal with defined signal type and values.
--- @param indicatorValue number[] The 'faster' or indicator value. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param signalValue number[] The 'slower' or signal value. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param signalType Enum The signal type which defines how the inputs are interpreted. Suggestions: InputSignalTypes
--- @param centerPosition number | number[] Optional - The center position for 'Zero Cross' signal types. 0 for indicators that oscillate below and above zero, 50 for indicators like RSI, MFI and STOCH. Suggestions: Input
--- @param buyLevel number | number[] Optional - The buy level for 'Threshold' signal types. Used for indicators like RSI, MFI and STOCH. Suggestions: Input
--- @param sellLevel number | number[] Optional - The sell level for 'Threshold' signal types. Used for indicators like RSI, MFI and STOCH. Suggestions: Input
--- @return Enum Returns a signal based on defined 'signalType' (see InputSignalTypes()). Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(indicatorValue: number[], signalValue: number[], signalType: Enum): Enum
--- @overload fun(indicatorValue: number[], signalValue: number[], signalType: Enum, centerPosition: number | number[]): Enum
--- @overload fun(indicatorValue: number[], signalValue: number[], signalType: Enum, centerPosition: number | number[], buyLevel: number | number[]): Enum
--- @overload fun(indicatorValue: number[], signalValue: number[], signalType: Enum, optionalParameters: OptionalParametersOf_GetSuperSignal): Enum
function GetSuperSignal(indicatorValue, signalValue, signalType, centerPosition, buyLevel, sellLevel) end

--- The optional parameters of GetThresholdSignal.
--- @shape OptionalParametersOf_GetThresholdSignal
--- @field swing number | number[] | nil Minimum swing below or above the threshold before a signal is returned.

--- Determines the signal based on a result and a threshold.
--- @param value number | number[] The value to compare. Suggestions: Input
--- @param threshold number | number[] Below this value, a SignalLong is returned. If its above a SignalShort. Suggestions: Input
--- @param swing number | number[] Optional - Minimum swing below or above the threshold before a signal is returned. Suggestions: Input
--- @return Enum Returns SignalLong when the result is below the threshold and SignalShort when the result is above the threshold. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(value: number | number[], threshold: number | number[]): Enum
--- @overload fun(value: number | number[], threshold: number | number[], optionalParameters: OptionalParametersOf_GetThresholdSignal): Enum
function GetThresholdSignal(value, threshold, swing) end

--- Validates if all signals are the same.
--- @param signals Enum[] Indicator signals collection. Takes a variable number of arguments.
--- @return Enum Returns SignalLong, SignalShort or SignalNone when there is unanimous decision and SignalNone when there is not. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetUnanimousSignal(signals) end

--- Calculates and determines the weighted consensus signal.
--- @param longWeight number | number[] The required sum of the long signals weight before the signal is valid. Suggestions: Input
--- @param shortWeight number | number[] The required sum of the short signals weight before the signal is valid. Suggestions: Input
--- @param exitWeight number | number[] The required sum of the exit signals weight before the signal is valid. Suggestions: Input
--- @param signals Enum[] Indicator signals collection. Takes a variable number of arguments. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return Enum Returns SignalLong, SignalShort, SignalExitPosition or SignalNone when there is a consensus or SignalNone when there is not. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function GetWeightedConsensusSignal(longWeight, shortWeight, exitWeight, signals) end

--- Marks the signal to be ignored when it matches a certain signal.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param signalToIgnore Enum The signal to ignore. SignalLong, SignalShort or SignalExitPosition. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return Enum Returns the original signal. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function IgnoreSignalIf(signal, signalToIgnore) end

--- Converts the signal if its matches the defined one.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param signalToCovert Enum The signal we want to convert. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition, SignalNone
--- @param convertedSignal Enum The signal we want to convert too. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition, SignalNone
--- @return Enum Returns the original or converted signal depending on the input. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function MapSignal(signal, signalToCovert, convertedSignal) end

--- The object returned by PositionToBool.
--- @class ResultOf_PositionToBool
--- @field isLong boolean True when the position is Long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isShort boolean True when the position is Short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isNone boolean True when the position is NoPosition. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [1] boolean True when the position is Long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [2] boolean True when the position is Short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [3] boolean True when the position is NoPosition. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder

--- Converts a position value to 3 boolean values.
--- @param position Enum Bot position enum. PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition, GetPositionDirection
--- @return ResultOf_PositionToBool Three boolean values based on the position input. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function PositionToBool(position) end

--- Reverses a signal from long to short or short to long. SignalNone will be ignored and stay the same.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return Enum Returns the reversed signal. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function ReverseSignal(signal) end

--- This command can save and distribute a trading signal over the HaasCloud. This can be used in combination with trade signal enumeration. For example SignalLong(), SignalShort(), SignalExitPosition() or SignalNone().
--- @param id string The unique identifier of the signal. Suggestions: Input, Load
--- @param secret string The secret key on which to save the signal. Suggestions: Input, Load
--- @param signal Enum The signal enum to save. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition, SignalNone
--- @return void
function SaveRemoteSignal(id, secret, signal) end

--- The optional parameters of SignalMapper.
--- @shape OptionalParametersOf_SignalMapper
--- @field reverse boolean | nil If true, the signals are revered.
--- @field mapLongTo Enum | nil The mapped long signal.
--- @field mapShortTo Enum | nil The mapped short signal.
--- @field mapExitTo Enum | nil The mapped exit signal.
--- @field mapNoneTo Enum | nil The mapped none signal.

--- Maps a signal value to their defined specifications.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param reverse boolean Optional - If true, the signals are revered.
--- @param mapLongTo Enum Optional - The mapped long signal. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition
--- @param mapShortTo Enum Optional - The mapped short signal. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition
--- @param mapExitTo Enum Optional - The mapped exit signal. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition
--- @param mapNoneTo Enum Optional - The mapped none signal. Suggestions: SignalBuy, SignalLong, SignalSell, SignalShort, SignalExitPosition
--- @return Enum The mapped signal. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(signal: Enum): Enum
--- @overload fun(signal: Enum, reverse: boolean): Enum
--- @overload fun(signal: Enum, reverse: boolean, mapLongTo: Enum): Enum
--- @overload fun(signal: Enum, reverse: boolean, mapLongTo: Enum, mapShortTo: Enum): Enum
--- @overload fun(signal: Enum, reverse: boolean, mapLongTo: Enum, mapShortTo: Enum, mapExitTo: Enum): Enum
--- @overload fun(signal: Enum, optionalParameters: OptionalParametersOf_SignalMapper): Enum
function SignalMapper(signal, reverse, mapLongTo, mapShortTo, mapExitTo, mapNoneTo) end

--- The optional parameters of SignalProperties.
--- @shape OptionalParametersOf_SignalProperties
--- @field useLong boolean | nil When true, this signal is used for long decisions.
--- @field useShort boolean | nil When true, this signal is used for short decisions.
--- @field useExit boolean | nil When true, this signal is used for exit decisions.
--- @field weight number | number[] | nil The weight of the signal. Minimum weight of 1 required.
--- @field delay number | number[] | nil Number of minutes the signal will be delayed.

--- Sets properties such as weight or ignore in the signal input.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param useLong boolean Optional - When true, this signal is used for long decisions.
--- @param useShort boolean Optional - When true, this signal is used for short decisions.
--- @param useExit boolean Optional - When true, this signal is used for exit decisions.
--- @param weight number | number[] Optional - The weight of the signal. Minimum weight of 1 required. Suggestions: Input
--- @param delay number | number[] Optional - Number of minutes the signal will be delayed. Suggestions: Input
--- @return Enum Returns the signal with the new specifications. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(signal: Enum): Enum
--- @overload fun(signal: Enum, useLong: boolean): Enum
--- @overload fun(signal: Enum, useLong: boolean, useShort: boolean): Enum
--- @overload fun(signal: Enum, useLong: boolean, useShort: boolean, useExit: boolean): Enum
--- @overload fun(signal: Enum, useLong: boolean, useShort: boolean, useExit: boolean, weight: number | number[]): Enum
--- @overload fun(signal: Enum, optionalParameters: OptionalParametersOf_SignalProperties): Enum
function SignalProperties(signal, useLong, useShort, useExit, weight, delay) end

--- The object returned by SignalToBool.
--- @class ResultOf_SignalToBool
--- @field isLong boolean True when the signal is SignalLong. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isShort boolean True when the signal is SignalShort. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isExit boolean True when the signal is SignalExitPosition. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isNone boolean True when the signal is SignalNone. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [1] boolean True when the signal is SignalLong. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [2] boolean True when the signal is SignalShort. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [3] boolean True when the signal is SignalExitPosition. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [4] boolean True when the signal is SignalNone. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder

--- Converts a signal value to 4 boolean values.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return ResultOf_SignalToBool Four boolean values based on the signal input. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function SignalToBool(signal) end

--- Logs the given signals.
--- @param signals Enum[] The signals to log. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return void. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function SignalToLog(signals) end

--- Add a weight to the signal. Can be used in combination with GetWeightedConsensusSignal().
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param weight number | number[] The weight of the signal. Minimum weight of 1 required. Suggestions: Input
--- @return Enum Returns the original signal with a weight mark. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function SignalWeight(signal, weight) end

--- Marks the signal to be used when its matches a certain signal.
--- @param signal Enum The original signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @param signalToUse Enum The signal to ignore. SignalLong, SignalShort or SignalExitPosition. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return Enum Returns the original signal. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function UseSignalIf(signal, signalToUse) end

