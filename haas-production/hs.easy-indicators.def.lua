--- Easy Indicators

--- The optional parameters of EasyABANDS.
--- @shape OptionalParametersOf_EasyABANDS
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ABANDS, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Signals are generated when price breaks above Upper and below Lower band. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyABANDS): Enum
function EasyABANDS(chartIndex, name, interval) end

--- The optional parameters of EasyADOSC.
--- @shape OptionalParametersOf_EasyADOSC
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ADOSC, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on ADOSC, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyADOSC): Enum
function EasyADOSC(chartIndex, name, interval) end

--- The optional parameters of EasyAlice.
--- @shape OptionalParametersOf_EasyAlice
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the Alice signal based on the Haasonline Intelli Alice bot. By default Alice works on a 2 minute interval., plots the chart and returns the signal.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the Intelli-Bot Alice. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_EasyAlice): Enum
function EasyAlice(interval) end

--- The optional parameters of EasyAO.
--- @shape OptionalParametersOf_EasyAO
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the AO, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on AO, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyAO): Enum
function EasyAO(chartIndex, name, interval) end

--- The optional parameters of EasyAPO.
--- @shape OptionalParametersOf_EasyAPO
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the APO, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on APO, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyAPO): Enum
function EasyAPO(chartIndex, name, interval) end

--- The optional parameters of EasyAROON.
--- @shape OptionalParametersOf_EasyAROON
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the AROON, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetThresholdSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyAROON): Enum
function EasyAROON(chartIndex, name, interval) end

--- The optional parameters of EasyAROONOSC.
--- @shape OptionalParametersOf_EasyAROONOSC
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the AROONOSC, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetThresholdSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyAROONOSC): Enum
function EasyAROONOSC(chartIndex, name, interval) end

--- The optional parameters of EasyBBANDS.
--- @shape OptionalParametersOf_EasyBBANDS
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the BBANDS, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Signals are generated when price breaks above Upper and below Lower band. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyBBANDS): Enum
function EasyBBANDS(chartIndex, name, interval) end

--- The optional parameters of EasyBBANDSB.
--- @shape OptionalParametersOf_EasyBBANDSB
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the BBANDS %B, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Signals are generated when price breaks above Upper and below Lower band. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyBBANDSB): Enum
function EasyBBANDSB(chartIndex, name, interval) end

--- The optional parameters of EasyBBANDSW.
--- @shape OptionalParametersOf_EasyBBANDSW
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the BBANDS %W, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Signals are generated when price breaks above Upper and below Lower band. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyBBANDSW): Enum
function EasyBBANDSW(chartIndex, name, interval) end

--- The optional parameters of EasyBOP.
--- @shape OptionalParametersOf_EasyBOP
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the BOP, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on BOP, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyBOP): Enum
function EasyBOP(chartIndex, name, interval) end

--- The optional parameters of EasyCCI.
--- @shape OptionalParametersOf_EasyCCI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the CCI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on CCI, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyCCI): Enum
function EasyCCI(chartIndex, name, interval) end

--- The optional parameters of EasyCDL.
--- @shape OptionalParametersOf_EasyCDL
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the CDL, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on selected Candle Pattern. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyCDL): Enum
function EasyCDL(chartIndex, name, interval) end

--- The optional parameters of EasyCMO.
--- @shape OptionalParametersOf_EasyCMO
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the CMO, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on CMO, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyCMO): Enum
function EasyCMO(chartIndex, name, interval) end

--- The optional parameters of EasyCOPPOCK.
--- @shape OptionalParametersOf_EasyCOPPOCK
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the COPPOCK, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on COPPOCK, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyCOPPOCK): Enum
function EasyCOPPOCK(chartIndex, name, interval) end

--- The optional parameters of EasyCRSI.
--- @shape OptionalParametersOf_EasyCRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the CRSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyCRSI): Enum
function EasyCRSI(chartIndex, name, interval) end

--- The optional parameters of EasyDMI.
--- @shape OptionalParametersOf_EasyDMI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ADX, +DI, -DI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on ADX level and +DI/-DI crossover. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyDMI): Enum
function EasyDMI(chartIndex, name, interval) end

--- The optional parameters of EasyDONCHIAN.
--- @shape OptionalParametersOf_EasyDONCHIAN
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the DONCHIAN, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Signals are produced when price breaks above upper or below lower band. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyDONCHIAN): Enum
function EasyDONCHIAN(chartIndex, name, interval) end

--- The optional parameters of EasyDPO.
--- @shape OptionalParametersOf_EasyDPO
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the DPO, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on DPO, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyDPO): Enum
function EasyDPO(chartIndex, name, interval) end

--- The optional parameters of EasyDX.
--- @shape OptionalParametersOf_EasyDX
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the DX, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetThresholdSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyDX): Enum
function EasyDX(chartIndex, name, interval) end

--- The optional parameters of EasyDynamicLongShortLevels.
--- @shape OptionalParametersOf_EasyDynamicLongShortLevels
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the DynamicBuySellLevel, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on dynamic short/long level. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyDynamicLongShortLevels): Enum
function EasyDynamicLongShortLevels(chartIndex, name, interval) end

--- The optional parameters of EasyFastRSI.
--- @shape OptionalParametersOf_EasyFastRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the FastRSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on FastRSI & RSI values and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyFastRSI): Enum
function EasyFastRSI(chartIndex, name, interval) end

--- The optional parameters of EasyFIBONACCI.
--- @shape OptionalParametersOf_EasyFIBONACCI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the FIBONACCI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on FIBONACCI. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyFIBONACCI): Enum
function EasyFIBONACCI(chartIndex, name, interval) end

--- The optional parameters of EasyFixedLongShortLevels.
--- @shape OptionalParametersOf_EasyFixedLongShortLevels
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the FixedLongShort, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on fixed long/short levels. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyFixedLongShortLevels): Enum
function EasyFixedLongShortLevels(chartIndex, name, interval) end

--- The optional parameters of EasyICHIMOKU.
--- @shape OptionalParametersOf_EasyICHIMOKU
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ICHIMOKU, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on ICHIMOKU and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyICHIMOKU): Enum
function EasyICHIMOKU(chartIndex, name, interval) end

--- The optional parameters of EasyIMI.
--- @shape OptionalParametersOf_EasyIMI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the IMI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on IMI, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyIMI): Enum
function EasyIMI(chartIndex, name, interval) end

--- The optional parameters of EasyKELTNER.
--- @shape OptionalParametersOf_EasyKELTNER
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the KELTNER, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Signals are produced when price breaks above upper or below lower band. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyKELTNER): Enum
function EasyKELTNER(chartIndex, name, interval) end

--- The optional parameters of EasyKRI.
--- @shape OptionalParametersOf_EasyKRI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the KRI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on KRI, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyKRI): Enum
function EasyKRI(chartIndex, name, interval) end

--- The optional parameters of EasyKST.
--- @shape OptionalParametersOf_EasyKST
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the KST, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on KST and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyKST): Enum
function EasyKST(chartIndex, name, interval) end

--- The optional parameters of EasyLINEARREG.
--- @shape OptionalParametersOf_EasyLINEARREG
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the LINEARREG, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetAboveBelowSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyLINEARREG): Enum
function EasyLINEARREG(chartIndex, name, interval) end

--- The optional parameters of EasyMA.
--- @shape OptionalParametersOf_EasyMA
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the MA, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetAboveBelowSignal() template. Signals are produced when faster MA crosses above or below the slower MA. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyMA): Enum
function EasyMA(chartIndex, name, interval) end

--- The optional parameters of EasyMACD.
--- @shape OptionalParametersOf_EasyMACD
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the MACD, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on MACD and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyMACD): Enum
function EasyMACD(chartIndex, name, interval) end

--- The optional parameters of EasyMFI.
--- @shape OptionalParametersOf_EasyMFI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the MFI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on MFI, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyMFI): Enum
function EasyMFI(chartIndex, name, interval) end

--- The optional parameters of EasyMOM.
--- @shape OptionalParametersOf_EasyMOM
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the MOM, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on MOM, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyMOM): Enum
function EasyMOM(chartIndex, name, interval) end

--- The optional parameters of EasyOBV.
--- @shape OptionalParametersOf_EasyOBV
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the OBV, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on OBV, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyOBV): Enum
function EasyOBV(chartIndex, name, interval) end

--- The optional parameters of EasyPPO.
--- @shape OptionalParametersOf_EasyPPO
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the PPO, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on PPO and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyPPO): Enum
function EasyPPO(chartIndex, name, interval) end

--- The optional parameters of EasyROC.
--- @shape OptionalParametersOf_EasyROC
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ROC, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on ROC, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyROC): Enum
function EasyROC(chartIndex, name, interval) end

--- The optional parameters of EasyRSI.
--- @shape OptionalParametersOf_EasyRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the RSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyRSI): Enum
function EasyRSI(chartIndex, name, interval) end

--- The optional parameters of EasySAR.
--- @shape OptionalParametersOf_EasySAR
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the SAR, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on SAR. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasySAR): Enum
function EasySAR(chartIndex, name, interval) end

--- The optional parameters of EasySlowRSI.
--- @shape OptionalParametersOf_EasySlowRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the SlowRSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on SlowRSI & RSI values and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasySlowRSI): Enum
function EasySlowRSI(chartIndex, name, interval) end

--- The optional parameters of EasySSTOCH.
--- @shape OptionalParametersOf_EasySSTOCH
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the SSTOCH, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasySSTOCH): Enum
function EasySSTOCH(chartIndex, name, interval) end

--- The optional parameters of EasySTOCH.
--- @shape OptionalParametersOf_EasySTOCH
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the STOCH, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on %K, %D and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasySTOCH): Enum
function EasySTOCH(chartIndex, name, interval) end

--- The optional parameters of EasySTOCHF.
--- @shape OptionalParametersOf_EasySTOCHF
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the STOCHF, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetCrossOverUnderSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasySTOCHF): Enum
function EasySTOCHF(chartIndex, name, interval) end

--- The optional parameters of EasySTOCHRSI.
--- @shape OptionalParametersOf_EasySTOCHRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the STOCHRSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetCrossOverUnderSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasySTOCHRSI): Enum
function EasySTOCHRSI(chartIndex, name, interval) end

--- The optional parameters of EasyTRIX.
--- @shape OptionalParametersOf_EasyTRIX
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the TRIX, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on TRIX, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyTRIX): Enum
function EasyTRIX(chartIndex, name, interval) end

--- The optional parameters of EasyTSI.
--- @shape OptionalParametersOf_EasyTSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the TSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on TSI, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyTSI): Enum
function EasyTSI(chartIndex, name, interval) end

--- The optional parameters of EasyUDRSI.
--- @shape OptionalParametersOf_EasyUDRSI
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the UDRSI, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyUDRSI): Enum
function EasyUDRSI(chartIndex, name, interval) end

--- The optional parameters of EasyULTOSC.
--- @shape OptionalParametersOf_EasyULTOSC
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ULTOSC, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on ULTOSC, it's MA and selected signal type. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyULTOSC): Enum
function EasyULTOSC(chartIndex, name, interval) end

--- The optional parameters of EasyWILLR.
--- @shape OptionalParametersOf_EasyWILLR
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the WILLR, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetBuySellLevelSignal() template. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyWILLR): Enum
function EasyWILLR(chartIndex, name, interval) end

--- The optional parameters of EasyZLMA.
--- @shape OptionalParametersOf_EasyZLMA
--- @field name string | nil Unique name of the indicator.
--- @field interval number | nil Used interval for price data. Default is 0 and the main interval will be used.

--- Automatically defines the input fields, calculates the ZLMA, plots the chart and returns the signal.
--- @param chartIndex number Chart index on which to plot.
--- @param name string Optional - Unique name of the indicator.
--- @param interval number Optional - Used interval for price data. Default is 0 and the main interval will be used. Suggestions: InputInterval, CurrentInterval
--- @return Enum Returns a signal based on the GetAboveBelowSignal() template. Signals are produced when faster ZLMA crosses above or below the slower ZLMA. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(chartIndex: number): Enum
--- @overload fun(chartIndex: number, name: string): Enum
--- @overload fun(chartIndex: number, optionalParameters: OptionalParametersOf_EasyZLMA): Enum
function EasyZLMA(chartIndex, name, interval) end

