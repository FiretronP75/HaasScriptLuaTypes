--- Custom Commands Helpers

--- This defines the name and description of the custom command. This information will reflect in commands/block lists and help models.
--- @param name string The command name. Needs to be unique and a single word. No spaces or special characters are allowed beside number and '_'.
--- @param description string The description of the command.
--- @return void
function DefineCommand(name, description) end

--- Defines the signal output for the custom indicator.
--- @param result Enum The indicator result. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return void
function DefineEasyIndicatorOutput(result) end

--- The object returned by DefineEasyIndicatorParameters.
--- @class ResultOf_DefineEasyIndicatorParameters
--- @field chartIndex number | number[] Index on which to plot. Suggestions: Plot
--- @field interval number | number[] The interval of the indicator. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices, DefineIntervalOptimization
--- @field [1] number | number[] Index on which to plot. Suggestions: Plot
--- @field [2] number | number[] The interval of the indicator. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices, DefineIntervalOptimization

--- The optional parameters of DefineEasyIndicatorParameters.
--- @shape OptionalParametersOf_DefineEasyIndicatorParameters
--- @field chartIndex number | number[] | nil Default chart index. Default is 1.

--- Defines the chartIndex and interval parameter.
--- @param chartIndex number | number[] Optional - Default chart index. Default is 1. Suggestions: Input
--- @return ResultOf_DefineEasyIndicatorParameters Returns a list with values.
--- @overload fun(): ResultOf_DefineEasyIndicatorParameters
--- @overload fun(optionalParameters: OptionalParametersOf_DefineEasyIndicatorParameters): ResultOf_DefineEasyIndicatorParameters
function DefineEasyIndicatorParameters(chartIndex) end

--- Optimizes the custom command for back tests. Only use this if the command needs updates once every interval tick.
--- @param interval number | number[] The interval on which the result is based. Suggestions: DefineParameter, DefineEasyIndicatorOutput
--- @return void
function DefineIntervalOptimization(interval) end

--- The optional parameters of DefineOutput.
--- @shape OptionalParametersOf_DefineOutput
--- @field value any | nil The output value. Only required if type is not a void.
--- @field description string | nil The output description. Only required if type is not a void.
--- @field outputSuggestions string | nil The output suggestions. Only required if type is not a void. Separated by , . ; or : and can take category definitions.

--- Defines the output type and data.
--- @param type Enum The parameter type enum. Suggestions: NumberType, ListNumberType, BooleanType, ListDynamicType, StringType, DynamicType, VoidType, EnumType
--- @param value any Optional - The output value. Only required if type is not a void.
--- @param description string Optional - The output description. Only required if type is not a void.
--- @param outputSuggestions string Optional - The output suggestions. Only required if type is not a void. Separated by , . ; or : and can take category definitions.
--- @return void
--- @overload fun(type: Enum): void
--- @overload fun(type: Enum, value: any): void
--- @overload fun(type: Enum, value: any, description: string): void
--- @overload fun(type: Enum, optionalParameters: OptionalParametersOf_DefineOutput): void
function DefineOutput(type, value, description, outputSuggestions) end

--- The optional parameters of DefineOutputIndex.
--- @shape OptionalParametersOf_DefineOutputIndex
--- @field outputSuggestions string | nil The output suggestions. Separated by , . ; or : and can take category definitions.

--- Creates an index based output connection to be used in the visual editor.
--- @param index number | number[] The array index of this value/output.
--- @param type Enum The parameter type enum. Suggestions: NumberType, ListNumberType, BooleanType, ListDynamicType, StringType, DynamicType, VoidType, EnumType
--- @param name string The output name.
--- @param description string The output description.
--- @param outputSuggestions string Optional - The output suggestions. Separated by , . ; or : and can take category definitions.
--- @return void
--- @overload fun(index: number | number[], type: Enum, name: string, description: string): void
--- @overload fun(index: number | number[], type: Enum, name: string, description: string, optionalParameters: OptionalParametersOf_DefineOutputIndex): void
function DefineOutputIndex(index, type, name, description, outputSuggestions) end

--- The optional parameters of DefineParameter.
--- @shape OptionalParametersOf_DefineParameter
--- @field inputSuggestions string | nil The input suggestions. Commands separated by , . ; or : and can take category definitions.

--- Defines the parameter for a custom command.
--- @param type Enum The parameter type enum. Suggestions: NumberType, ListNumberType, BooleanType, ListDynamicType, StringType, DynamicType, VoidType, EnumType
--- @param name string The input parameter name.
--- @param description string The input parameter description.
--- @param isRequired boolean If true, the command requires the parameter to be defined.
--- @param defaultValue any The default and test parameter for the command. Try to use fake data if the parameter is required. Suggestions: Load
--- @param inputSuggestions string Optional - The input suggestions. Commands separated by , . ; or : and can take category definitions.
--- @return any Returns the giving parameter or default value.
--- @overload fun(type: Enum, name: string, description: string, isRequired: boolean, defaultValue: any): any
--- @overload fun(type: Enum, name: string, description: string, isRequired: boolean, defaultValue: any, optionalParameters: OptionalParametersOf_DefineParameter): any
function DefineParameter(type, name, description, isRequired, defaultValue, inputSuggestions) end

