--- Input Fields

--- The optional parameters of Input.
--- @shape OptionalParametersOf_Input
--- @field defaultValue any | nil The default value for the field.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a script input field. The type is depending on the default value. It can be a number, text or boolean (checkbox) field. Without default value, it will be a text field.
--- @param label string The field label text.
--- @param defaultValue any Optional - The default value for the field.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return any Returns the input value.
--- @overload fun(label: string): any
--- @overload fun(label: string, defaultValue: any): any
--- @overload fun(label: string, defaultValue: any, tooltip: string): any
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_Input): any
function Input(label, defaultValue, tooltip, group) end

--- The optional parameters of InputAccount.
--- @shape OptionalParametersOf_InputAccount
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates an account selection field.
--- @param label string The field label text.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return string Return the selected account guid. Output Suggestions: WalletAmount
--- @overload fun(label: string): string
--- @overload fun(label: string, tooltip: string): string
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputAccount): string
function InputAccount(label, tooltip, group) end

--- The optional parameters of InputAccountMarket.
--- @shape OptionalParametersOf_InputAccountMarket
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates an account, market & leverage dropdown.
--- @param label string The field label text.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return string Returns a combined string. For example 9c9aaf1f-469b-4eea-bca3-df61db37c549_BITFINEX_BTC_USD_. Output Suggestions: PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, GetBotProfit, GetCurrentProfit
--- @overload fun(label: string): string
--- @overload fun(label: string, tooltip: string): string
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputAccountMarket): string
function InputAccountMarket(label, tooltip, group) end

--- The optional parameters of InputButton.
--- @shape OptionalParametersOf_InputButton
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a button in the input field. When press in the UI, the bot will receive the action and execute the callback defined in the parameters.
--- @param label string The field label text.
--- @param callback function The callback which will be executed when the button is pressed.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return void
--- @overload fun(label: string, callback: function): void
--- @overload fun(label: string, callback: function, tooltip: string): void
--- @overload fun(label: string, callback: function, optionalParameters: OptionalParametersOf_InputButton): void
function InputButton(label, callback, tooltip, group) end

--- The optional parameters of InputCdlTypes.
--- @shape OptionalParametersOf_InputCdlTypes
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with available Candlestick Pattern (CDL) types. Can be used in combination with CDL().
--- @param label string The field label text.
--- @param defaultValue Enum The default value for the field. Suggestions: TwoCrowsType, ThreeBlackCrowsType, ThreeInsideType, ThreeLineStrikeType, ThreeOutsideType, ThreeStarsInSouthType, ThreeWhiteSoldiersType, AdvanceBlockType, BeltHoldType, BreakawayType, ClosingMarubozuType, ConcealBabysWallType, CounterAttackType, DojiType, DojiStarType, DragonflyDojiType, EngulfingType, GapSideSideWhiteType, GravestoneDojiType, HammerType, HangingManType, HaramiType, HaramiCrossType, HignWaveType, HikkakeType, HikkakeModType, HomingPigeonType, IdenticalThreeCrowsType, InNeckType, InvertedHammerType, KickingType, KickingByLengthType, LadderBottomType, LongLeggedDojiType, LongLineType, MarubozuType, MatchingLowType, OnNeckType, PiercingType, RickshawManType, RiseFallThreeMethodsType, SeparatingLinesType, ShootingStarType, ShortLineType, SpinningTopType, StalledPatternType, StickSandwichType, TakuriType, TasukiGapType, ThrustingType, TristarType, UniqueThreeRiverType, UpsideGapTwoCrowsType, XSideGapThreeMethodsType, AbandonedBabyType, DarkCloudCoverType, MatHoldType, MorningDojiStarType, MorningStarType, EveningDojiStarType, EveningStarType
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected CDL type as enum. For example ThreeCrowsType. Output Suggestions: CDL
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, defaultValue: Enum, optionalParameters: OptionalParametersOf_InputCdlTypes): Enum
function InputCdlTypes(label, defaultValue, tooltip, group) end

--- The optional parameters of InputConstant.
--- @shape OptionalParametersOf_InputConstant
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with available constant in the category of the defaultValue. If for example SignalLong is set as default, all the signal constants will be available in the dropdown.
--- @param label string The field label text.
--- @param defaultValue Enum The default value for the field. Suggestions: SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected constant type as constant. Output Suggestions: APO, BBANDS, MACDEXT, MA, MAVP, PPO, STOCHRSI, STOCHF
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, defaultValue: Enum, optionalParameters: OptionalParametersOf_InputConstant): Enum
function InputConstant(label, defaultValue, tooltip, group) end

--- Creates a group header, separating input sets.
--- @param label string The header label text.
--- @return void
function InputGroupHeader(label) end

--- The optional parameters of InputInterval.
--- @shape OptionalParametersOf_InputInterval
--- @field defaultValue number | nil The default value for the field.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates an interval dropdown.
--- @param label string The field label text.
--- @param defaultValue number Optional - The default value for the field.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return number Returns the selected interval in minutes. Output Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, GetVolume, GetBodyHighPrices, GetBodyLowPrices
--- @overload fun(label: string): number
--- @overload fun(label: string, defaultValue: number): number
--- @overload fun(label: string, defaultValue: number, tooltip: string): number
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputInterval): number
function InputInterval(label, defaultValue, tooltip, group) end

--- The optional parameters of InputLrTypes.
--- @shape OptionalParametersOf_InputLrTypes
--- @field defaultValue Enum | nil The default value for the field.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with the available LR types.
--- @param label string The field label text.
--- @param defaultValue Enum Optional - The default value for the field. Suggestions: LR_Default, LR_Angle, LR_Slope, LR_Intercept
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected LR type as enum. Output Suggestions: LINEARREG
--- @overload fun(label: string): Enum
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputLrTypes): Enum
function InputLrTypes(label, defaultValue, tooltip, group) end

--- The optional parameters of InputMarket.
--- @shape OptionalParametersOf_InputMarket
--- @field defaultValue string | nil The default value for the field.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a market dropdown. The market options are related to the main account selection.
--- @param label string The field label text.
--- @param defaultValue string Optional - The default value for the field.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return string Returns the selected market. For example BITMEX_XBT_USD_XBTUSD. Output Suggestions: PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, GetBotProfit, GetCurrentProfit
--- @overload fun(label: string): string
--- @overload fun(label: string, defaultValue: string): string
--- @overload fun(label: string, defaultValue: string, tooltip: string): string
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputMarket): string
function InputMarket(label, defaultValue, tooltip, group) end

--- The optional parameters of InputMaTypes.
--- @shape OptionalParametersOf_InputMaTypes
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with available MA types. Can be used in combination with a variety of technical indicators like BBANDS() or PPO().
--- @param label string The field label text.
--- @param defaultValue Enum The default value for the field. Suggestions: SmaType, EmaType, WmaType, DemaType, TemaType, TrimaType, KamaType, MamaType, T3Type
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected ma type as constant. Output Suggestions: APO, BBANDS, MACDEXT, MA, MAVP, PPO, STOCHRSI, STOCHF
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, defaultValue: Enum, optionalParameters: OptionalParametersOf_InputMaTypes): Enum
function InputMaTypes(label, defaultValue, tooltip, group) end

--- The optional parameters of InputOptions.
--- @shape OptionalParametersOf_InputOptions
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with custom options.
--- @param label string The field label text.
--- @param defaultValue string The default value for the field.
--- @param options any Options list/array.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return string Returns the selected value as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(label: string, defaultValue: string, options: any): string
--- @overload fun(label: string, defaultValue: string, options: any, tooltip: string): string
--- @overload fun(label: string, defaultValue: string, options: any, optionalParameters: OptionalParametersOf_InputOptions): string
function InputOptions(label, defaultValue, options, tooltip, group) end

--- The optional parameters of InputOrderType.
--- @shape OptionalParametersOf_InputOrderType
--- @field defaultValue Enum | nil The default value for the field.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with the default available order types.
--- @param label string The field label text.
--- @param defaultValue Enum Optional - The default value for the field. Suggestions: LimitOrderType, MarketOrderType, NoTimeOutOrderType
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected order type as enum. Output Suggestions: PlaceBuyOrder, PlaceSellOrder, PlaceGoShortOrder, PlaceGoLongOrder, PlaceExitLongOrder, PlaceExitShortOrder, SetOrderType
--- @overload fun(label: string): Enum
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputOrderType): Enum
function InputOrderType(label, defaultValue, tooltip, group) end

--- The optional parameters of InputPriceSource.
--- @shape OptionalParametersOf_InputPriceSource
--- @field defaultValue string | nil The default value for the field.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a price source dropdown.
--- @param label string The field label text.
--- @param defaultValue string Optional - The default value for the field.
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return string Returns the selected price source as string. For example BITSTAMP. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(label: string): string
--- @overload fun(label: string, defaultValue: string): string
--- @overload fun(label: string, defaultValue: string, tooltip: string): string
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputPriceSource): string
function InputPriceSource(label, defaultValue, tooltip, group) end

--- The optional parameters of InputPriceSourceMarket.
--- @shape OptionalParametersOf_InputPriceSourceMarket
--- @field defaultValue string | nil The default value for the field.
--- @field type Enum | nil Optional parameter to restrict market types.
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a price source & market dropdown.
--- @param label string The field label text.
--- @param defaultValue string Optional - The default value for the field.
--- @param type Enum Optional - Optional parameter to restrict market types. Suggestions: SpotTrading, MarginTrading, LeverageTrading
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return string Returns the selected market as string. For example BITSTAMP_BTC_USD_. Output Suggestions: ClosePrices, Prices, PlotPrice
--- @overload fun(label: string): string
--- @overload fun(label: string, defaultValue: string): string
--- @overload fun(label: string, defaultValue: string, type: Enum): string
--- @overload fun(label: string, defaultValue: string, type: Enum, tooltip: string): string
--- @overload fun(label: string, optionalParameters: OptionalParametersOf_InputPriceSourceMarket): string
function InputPriceSourceMarket(label, defaultValue, type, tooltip, group) end

--- The optional parameters of InputSignalManagement.
--- @shape OptionalParametersOf_InputSignalManagement
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates multiple dropdown options for signal management and mapping.
--- @param label string The field label text.
--- @param signal Enum The default value for the field. Suggestions: InputSignalTypes, IndicatorSignalCrossType, IndicatorCenterCrossType, SignalCenterCrossType, BothCenterCrossType, IndicatorThresholdType, SignalThresholdType, BothThresholdType
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the baked signal based on settings. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
--- @overload fun(label: string, signal: Enum): Enum
--- @overload fun(label: string, signal: Enum, tooltip: string): Enum
--- @overload fun(label: string, signal: Enum, optionalParameters: OptionalParametersOf_InputSignalManagement): Enum
function InputSignalManagement(label, signal, tooltip, group) end

--- The optional parameters of InputSignalTypes.
--- @shape OptionalParametersOf_InputSignalTypes
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with available Signal Types. Can be used in combination with GetSuperSignal().
--- @param label string The field label text.
--- @param defaultValue Enum The default value for the field. Suggestions: InputSignalTypes, IndicatorSignalCrossType, IndicatorCenterCrossType, SignalCenterCrossType, BothCenterCrossType, IndicatorThresholdType, SignalThresholdType, BothThresholdType
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected signal type enum. Output Suggestions: APO, BBANDS, MACDEXT, MA, MAVP, PPO, STOCHRSI, STOCHF
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, defaultValue: Enum, optionalParameters: OptionalParametersOf_InputSignalTypes): Enum
function InputSignalTypes(label, defaultValue, tooltip, group) end

--- The optional parameters of InputSourcePrice.
--- @shape OptionalParametersOf_InputSourcePrice
--- @field tooltip string | nil The tooltip text for the field.
--- @field group string | nil The group of the input field.

--- Creates a dropdown with available Source Price types. Can be used in combination with SourcePrices().
--- @param label string The field label text.
--- @param defaultValue Enum The default value for the field. Suggestions: ClosePriceSource, OpenPriceSource, HighPriceSource, LowPriceSource, HLPriceSource, HLCPriceSource, OHLCPriceSource, VolumePriceSource
--- @param tooltip string Optional - The tooltip text for the field.
--- @param group string Optional - The group of the input field.
--- @return Enum Returns the selected source type as constant. Output Suggestions: SourcePrices
--- @overload fun(label: string, defaultValue: Enum): Enum
--- @overload fun(label: string, defaultValue: Enum, tooltip: string): Enum
--- @overload fun(label: string, defaultValue: Enum, optionalParameters: OptionalParametersOf_InputSourcePrice): Enum
function InputSourcePrice(label, defaultValue, tooltip, group) end

--- Creates a dynamic input table.
--- @param options any InputTableOptions() result or the title of the table as a string.
--- @vararg any InputTableColumn() or columns headers as string.
--- @return any Returns the tables values per row. [[1,2,3,4], [5,6,7,8], [9,0,1,2]].
function InputTable(options, ...) end

--- Creates an table column options object for InputTable()
--- @param name string Column name.
--- @vararg any Optional - Default values.
--- @return any Returns the options objects.
function InputTableColumn(name, ...) end

--- The optional parameters of InputTableOptions.
--- @shape OptionalParametersOf_InputTableOptions
--- @field title string | nil Name of the table.
--- @field rows number | nil Fixed number of rows. Overwrites maxRows.
--- @field maxRows number | nil Dynamic number of rows with a maximum.
--- @field group string | nil Group of the table.

--- Creates an options object for InputTable().
--- @param title string Optional - Name of the table.
--- @param rows number Optional - Fixed number of rows. Overwrites maxRows.
--- @param maxRows number Optional - Dynamic number of rows with a maximum.
--- @param group string Optional - Group of the table.
--- @return any Returns the options objects.
--- @overload fun(): any
--- @overload fun(title: string): any
--- @overload fun(title: string, rows: number): any
--- @overload fun(title: string, rows: number, maxRows: number): any
--- @overload fun(optionalParameters: OptionalParametersOf_InputTableOptions): any
function InputTableOptions(title, rows, maxRows, group) end

