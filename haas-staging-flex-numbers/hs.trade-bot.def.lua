--- Trade Bot

--- The object returned by IndicatorContainer.
--- @class ResultOf_IndicatorContainer
--- @field unanimousSignal Enum The unanimous signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, TradeBotContainer
--- @field consensusSignal Enum The consensus signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, TradeBotContainer
--- @field [1] Enum The unanimous signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, TradeBotContainer
--- @field [2] Enum The consensus signal. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, TradeBotContainer

--- The optional parameters of IndicatorContainer.
--- @shape OptionalParametersOf_IndicatorContainer
--- @field signals Enum[] | nil Indicator signals. Takes a variable number of arguments.

--- Merges multiple signals into a single list and determines the unanimous and consensus signal.
--- @param signals Enum[] Optional - Indicator signals. Takes a variable number of arguments. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return ResultOf_IndicatorContainer Returns a list with on index 1 the array with signals, on index 2 the unanimous and on index 3 the consensus signal.
--- @overload fun(): ResultOf_IndicatorContainer
--- @overload fun(optionalParameters: OptionalParametersOf_IndicatorContainer): ResultOf_IndicatorContainer
function IndicatorContainer(signals) end

--- The optional parameters of InsuranceContainer.
--- @shape OptionalParametersOf_InsuranceContainer
--- @field signals boolean[] | nil Safety signals collection. Takes a variable number of arguments.

--- Validates if all the signals agree.
--- @param signals boolean[] Optional - Safety signals collection. Takes a variable number of arguments. Suggestions: AbsolutePriceChange, NeverExitWithLoss, OvercomeDoubleFeeCosts, OvercomeFeeCosts, PercentagePriceChange, StopLossCooldown, TradeOncePerBar, TradeOnlySideways, TradeOnlyTrending, WaitAfterTrade, NeverEnterWithALoss
--- @return boolean Returns true if all the signals in the collection are true. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, TradeBotContainer
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_InsuranceContainer): boolean
function InsuranceContainer(signals) end

--- The optional parameters of SafetyContainer.
--- @shape OptionalParametersOf_SafetyContainer
--- @field signals boolean[] | nil Safety signals collection. Takes a variable number of arguments.

--- Checks a collection for active safety signals.
--- @param signals boolean[] Optional - Safety signals collection. Takes a variable number of arguments. Suggestions: DynamicStopLoss, DynamicTakeProfit, StopLoss, TakeProfit, TrailingArmStopLoss, TrailingStopLoss, ShrinkingTrailingStopLoss, StopLossROI, TakeProfitROI, GrowingTrailingStopLoss, DeactivateAfterEnterOrder, DeactivateAfterExitOrder, DeactivateAfterXOrders, DeactivateAfterXPositions, DeactivateAfterXIdleMinutes, DeactivateAfterXActiveMinutes, DeactivateOnLoss, DeactivateOnProfit
--- @return boolean Returns true if any of the signals is active. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, TradeBotContainer, DoExitPosition, DoFlipPosition
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_SafetyContainer): boolean
function SafetyContainer(signals) end

--- The optional parameters of TradeBotContainer.
--- @shape OptionalParametersOf_TradeBotContainer
--- @field safetySignal boolean | nil Safety container result.
--- @field indicatorSignal Enum | nil Indicator container result.
--- @field insuranceSignal boolean | nil Insurance container result.

--- Checks the safety, indicator & insurance signal. If a safety is active, DoExitPosition() will be executed. When there are no safeties active, the indicator signal will be executed if the insurances agree.
--- @param safetySignal boolean Optional - Safety container result. Suggestions: DynamicStopLoss, DynamicTakeProfit, StopLoss, TakeProfit, TrailingArmStopLoss, TrailingStopLoss, ShrinkingTrailingStopLoss, StopLossROI, TakeProfitROI, GrowingTrailingStopLoss, DeactivateAfterEnterOrder, DeactivateAfterExitOrder, DeactivateAfterXOrders, DeactivateAfterXPositions, DeactivateAfterXIdleMinutes, DeactivateAfterXActiveMinutes, DeactivateOnLoss, DeactivateOnProfit, SafetyContainer
--- @param indicatorSignal Enum Optional - Indicator container result. Suggestions: IndicatorContainer
--- @param insuranceSignal boolean Optional - Insurance container result. Suggestions: AbsolutePriceChange, NeverExitWithLoss, OvercomeDoubleFeeCosts, OvercomeFeeCosts, PercentagePriceChange, StopLossCooldown, TradeOncePerBar, TradeOnlySideways, TradeOnlyTrending, WaitAfterTrade, NeverEnterWithALoss, InsuranceContainer
--- @return void
--- @overload fun(): void
--- @overload fun(safetySignal: boolean): void
--- @overload fun(safetySignal: boolean, indicatorSignal: Enum): void
--- @overload fun(optionalParameters: OptionalParametersOf_TradeBotContainer): void
function TradeBotContainer(safetySignal, indicatorSignal, insuranceSignal) end

