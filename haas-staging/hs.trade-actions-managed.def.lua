--- Trade Actions (Managed)

--- The optional parameters of DoBuy.
--- @shape OptionalParametersOf_DoBuy
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field count number | nil 

--- Generates a buy signal on spot or a long signal on margin & leverage.
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param count number Optional - 
--- @return void
--- @overload fun(): void
--- @overload fun(note: string): void
--- @overload fun(optionalParameters: OptionalParametersOf_DoBuy): void
function DoBuy(note, count) end

--- The optional parameters of DoExitPosition.
--- @shape OptionalParametersOf_DoExitPosition
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field count number | nil 

--- Sends out a sell signal on spot or an exit positions signal on margin & leverage.
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param count number Optional - 
--- @return void
--- @overload fun(): void
--- @overload fun(note: string): void
--- @overload fun(optionalParameters: OptionalParametersOf_DoExitPosition): void
function DoExitPosition(note, count) end

--- The optional parameters of DoFlipPosition.
--- @shape OptionalParametersOf_DoFlipPosition
--- @field note string | nil A note for the order. Visible in the open orders and history.

--- Executes a DoLong() when the current position is short and an DoShort() the position is long.
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @return void. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @overload fun(): void
--- @overload fun(optionalParameters: OptionalParametersOf_DoFlipPosition): void
function DoFlipPosition(note) end

--- The optional parameters of DoLong.
--- @shape OptionalParametersOf_DoLong
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field count number | nil 

--- Generates a buy signal on spot or a long signal on margin & leverage.
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param count number Optional - 
--- @return void
--- @overload fun(): void
--- @overload fun(note: string): void
--- @overload fun(optionalParameters: OptionalParametersOf_DoLong): void
function DoLong(note, count) end

--- The optional parameters of DoSell.
--- @shape OptionalParametersOf_DoSell
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field count number | nil 

--- Generates a sell signal on spot or a short signal on margin & leverage.
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param count number Optional - 
--- @return void
--- @overload fun(): void
--- @overload fun(note: string): void
--- @overload fun(optionalParameters: OptionalParametersOf_DoSell): void
function DoSell(note, count) end

--- The optional parameters of DoShort.
--- @shape OptionalParametersOf_DoShort
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field count number | nil 

--- Generates a sell signal on spot or a short signal on margin & leverage.
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param count number Optional - 
--- @return void
--- @overload fun(): void
--- @overload fun(note: string): void
--- @overload fun(optionalParameters: OptionalParametersOf_DoShort): void
function DoShort(note, count) end

--- The optional parameters of DoSignal.
--- @shape OptionalParametersOf_DoSignal
--- @field note string | nil A note for the order. Visible in the open orders and history.

--- Processes a signal enum. Triggers a DoLong() when the signal equals SignalLong, a DoShort() when the signal equals SignalShort, a DoExitPosition() when the signal equals SignalExitPosition and does nothing when the signal is SignalNone.
--- @param signal Enum The signal to process. Suggestions: GetConsensusSignal, GetUnanimousSignal, GetRemoteSignal
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @return void. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @overload fun(signal: Enum): void
--- @overload fun(signal: Enum, optionalParameters: OptionalParametersOf_DoSignal): void
function DoSignal(signal, note) end

