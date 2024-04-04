--- Trade Market Information

--- The optional parameters of AmountCurrency.
--- @shape OptionalParametersOf_AmountCurrency
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the amount label. For reflection, in case the market is Bitstamp BTC/USDit will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'contract(s)'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the amount label as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_AmountCurrency): string
function AmountCurrency(market) end

--- The optional parameters of AmountDecimals.
--- @shape OptionalParametersOf_AmountDecimals
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field amount number | nil 

--- Returns a number of how many decimals is allowed for order amounts.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param amount number Optional - . Suggestions: Input
--- @return number Returns the allowed decimal count. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(market: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_AmountDecimals): number
function AmountDecimals(market, amount) end

--- The optional parameters of AmountLabel.
--- @shape OptionalParametersOf_AmountLabel
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the amount label. For reflection, in case the market is Bitstamp BTC/USDit will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'contract(s)'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the amount label as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_AmountLabel): string
function AmountLabel(market) end

--- The optional parameters of AmountStep.
--- @shape OptionalParametersOf_AmountStep
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the minimum allowed trade amount step for market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the trade amount step size. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_AmountStep): number
function AmountStep(market) end

--- The optional parameters of BaseCurrency.
--- @shape OptionalParametersOf_BaseCurrency
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the base currency of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'BTC'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the base currency as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_BaseCurrency): string
function BaseCurrency(market) end

--- The optional parameters of ContractName.
--- @shape OptionalParametersOf_ContractName
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the contract name of the market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the contract name of the market. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_ContractName): string
function ContractName(market) end

--- The optional parameters of ContractValue.
--- @shape OptionalParametersOf_ContractValue
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the value of a single contract, defined in their denomination.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the value of a single contract, defined in their denomination. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_ContractValue): number
function ContractValue(market) end

--- The optional parameters of GetAccountMarkets.
--- @shape OptionalParametersOf_GetAccountMarkets
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- An array of markets affiliated with a particular account.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return any Returns an array with all the markets as a string.
--- @overload fun(): any
--- @overload fun(optionalParameters: OptionalParametersOf_GetAccountMarkets): any
function GetAccountMarkets(accountId) end

--- An array of markets affiliated with a particular exchange.
--- @param exchangeCode string The exchange code affiliated with the exchange.
--- @return any Returns an array with all the markets as a string.
function GetExchangeMarkets(exchangeCode) end

--- The optional parameters of IsTradeAmountEnough.
--- @shape OptionalParametersOf_IsTradeAmountEnough
--- @field logWarning boolean | nil If true, a warning is logged.

--- Gets whether or not the trade amount is high enough for exchange limits.
--- @param market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number The price on which to check the trade amount. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param amount number The amount to check.
--- @param logWarning boolean Optional - If true, a warning is logged.
--- @return boolean Returns whether or not the trade amount is high enough for exchange limits. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(market: string, price: number, amount: number): boolean
--- @overload fun(market: string, price: number, amount: number, optionalParameters: OptionalParametersOf_IsTradeAmountEnough): boolean
function IsTradeAmountEnough(market, price, amount, logWarning) end

--- Checks if the input is a valid market.
--- @param market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return boolean Returns true if the market is valid. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsValidMarket(market) end

--- The optional parameters of MakersFee.
--- @shape OptionalParametersOf_MakersFee
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets makers fee of the market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns makers fee of the market. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_MakersFee): number
function MakersFee(market) end

--- The optional parameters of MarketType.
--- @shape OptionalParametersOf_MarketType
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the market type enumeration of the market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return Enum Returns SpotTrading, MarginTrading or LeverageTrading. Output Suggestions: Equals, SpotTrading, MarginTrading, LeverageTrading
--- @overload fun(): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_MarketType): Enum
function MarketType(market) end

--- The optional parameters of MinimumTradeAmount.
--- @shape OptionalParametersOf_MinimumTradeAmount
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field price number | nil The price on which to calculate the trade amount. By default the close price is used.

--- Calculates the minimum trade amount on a certain price while keeping exchange specifications in consideration.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number Optional - The price on which to calculate the trade amount. By default the close price is used. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number Returns the minimum trade amount taking the decimal count, minimum amount and volume into account. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(market: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_MinimumTradeAmount): number
function MinimumTradeAmount(market, price) end

--- Parses the trade amount to exchange specifications.
--- @param market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number The price on which to parse the trade amount. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param amount number The amount to parse.
--- @return number Returns the trade amount adjusted for exchange specifications. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function ParseTradeAmount(market, price, amount) end

--- Parses the trade price to exchange specifications.
--- @param market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number The price on which to check the trade amount. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number Returns the trade price adjusted for exchange specifications. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function ParseTradePrice(market, price) end

--- The optional parameters of PriceDecimals.
--- @shape OptionalParametersOf_PriceDecimals
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field price number | nil Specific price value. This can have an effect on the number of decimals.

--- Returns a number of how many decimals is allowed for order prices.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number Optional - Specific price value. This can have an effect on the number of decimals. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number Returns the allowed decimal count. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(market: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_PriceDecimals): number
function PriceDecimals(market, price) end

--- The optional parameters of PriceStep.
--- @shape OptionalParametersOf_PriceStep
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the minimum allowed price step for market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the price step size. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_PriceStep): number
function PriceStep(market) end

--- The optional parameters of ProfitCurrency.
--- @shape OptionalParametersOf_ProfitCurrency
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the profit label. For reflection, in case the market is Bitstamp BTC/USD it will return 'USD'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the profit label as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_ProfitCurrency): string
function ProfitCurrency(market) end

--- The optional parameters of ProfitLabel.
--- @shape OptionalParametersOf_ProfitLabel
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the profit label. For reflection, in case the market is Bitstamp BTC/USD it will return 'USD'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the profit label as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_ProfitLabel): string
function ProfitLabel(market) end

--- The optional parameters of QuoteCurrency.
--- @shape OptionalParametersOf_QuoteCurrency
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the quote currency of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'USD'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the quote currency as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_QuoteCurrency): string
function QuoteCurrency(market) end

--- The optional parameters of QuoteDecimals.
--- @shape OptionalParametersOf_QuoteDecimals
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field price number | nil Specific price value. This can have an effect on the number of decimals.

--- Returns a number of how many decimals is allowed for order prices.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number Optional - Specific price value. This can have an effect on the number of decimals. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number Returns the allowed decimal count. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(market: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_QuoteDecimals): number
function QuoteDecimals(market, price) end

--- The optional parameters of QuoteStep.
--- @shape OptionalParametersOf_QuoteStep
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the minimum allowed price step for market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the price step size. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_QuoteStep): number
function QuoteStep(market) end

--- The optional parameters of SetFee.
--- @shape OptionalParametersOf_SetFee
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Saves a custom fee percentage which is used in back tests and returned by Fee().
--- @param percentage number Fee percentage to store. Suggestions: Input
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return void
--- @overload fun(percentage: number): void
--- @overload fun(percentage: number, optionalParameters: OptionalParametersOf_SetFee): void
function SetFee(percentage, market) end

--- The optional parameters of TakersFee.
--- @shape OptionalParametersOf_TakersFee
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets takers fee of the market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns takers fee of the market. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_TakersFee): number
function TakersFee(market) end

--- The object returned by TradeMarketContainer.
--- @class ResultOf_TradeMarketContainer
--- @field baseCurrency string The base currency of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'BTC'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field quoteCurrency string The quote currency of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'USD'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field contractName string The contract name of the market. Empty on spot/margin markets. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field contractValue number The value of a single contract, defined in their denomination. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field makersFee number Makers fee of the market. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field takersFee number Takers fee of the market. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field underlyingAsset string The underlying assets of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field minimumTradeAmount number The minimum trade amount on a the last price while keeping exchange specifications in consideration. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field minimumTradeVolume number The minimum trade volume. Denominated in the quote currency. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field calculatedMinTradeAmount number The minimum trade amount on a the last price while keeping exchange specifications in consideration. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field profitLabel string The profit label of the market. For reflection, in case the market is Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field amountLabel string The amount label of the market. For reflection, in case the market is Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'contract(s)'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field marketType Enum The market type enumeration of the market. Suggestions: Equals, SpotTrading, MarginTrading, LeverageTrading
--- @field [1] string The base currency of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'BTC'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field [2] string The quote currency of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'USD'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field [3] string The contract name of the market. Empty on spot/margin markets. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field [4] number The value of a single contract, defined in their denomination. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [5] number Makers fee of the market. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [6] number Takers fee of the market. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [7] string The underlying assets of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field [8] number The minimum trade amount on a the last price while keeping exchange specifications in consideration. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [9] number The minimum trade volume. Denominated in the quote currency. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [10] number The minimum trade amount on a the last price while keeping exchange specifications in consideration. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [11] string The profit label of the market. For reflection, in case the market is Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field [12] string The amount label of the market. For reflection, in case the market is Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'contract(s)'. Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @field [13] Enum The market type enumeration of the market. Suggestions: Equals, SpotTrading, MarginTrading, LeverageTrading

--- The optional parameters of TradeMarketContainer.
--- @shape OptionalParametersOf_TradeMarketContainer
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Retrieves all the information on the trade market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return ResultOf_TradeMarketContainer Returns the market information on an array.
--- @overload fun(): ResultOf_TradeMarketContainer
--- @overload fun(optionalParameters: OptionalParametersOf_TradeMarketContainer): ResultOf_TradeMarketContainer
function TradeMarketContainer(market) end

--- The optional parameters of UnderlyingAsset.
--- @shape OptionalParametersOf_UnderlyingAsset
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns the underlying assets of the market. For reflection, in case we are on Bitstamp BTC/USD it will return 'BTC'. When we are on BitMEX XBT/USD (XBTUSD), it will return 'XBT'.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return string Returns the underlying assets as string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_UnderlyingAsset): string
function UnderlyingAsset(market) end

--- Calculates the used margin for a specific position.
--- @param market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param price number Position price. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @param amount number Position amount.
--- @param leverage number Leverage ratio. Use 0 for cross-margin. Suggestions: Input, Leverage
--- @return number Returns the amount in the underlying currency value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function UsedMargin(market, price, amount, leverage) end

