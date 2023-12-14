--- Price Market Information

--- The optional parameters of AverageCandleSize.
--- @shape OptionalParametersOf_AverageCandleSize
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Calculates the average candle body size of the last 50 minutes.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the average candle body size. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_AverageCandleSize): number | number[]
function AverageCandleSize(market) end

--- The optional parameters of AverageOrderbookSpread.
--- @shape OptionalParametersOf_AverageOrderbookSpread
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Calculates the average orderbook bid/ask spread of the last 50 minutes.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the average orderbook bid/ask spread. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_AverageOrderbookSpread): number | number[]
function AverageOrderbookSpread(market) end

--- The optional parameters of CreateMarket.
--- @shape OptionalParametersOf_CreateMarket
--- @field priceSource string | nil The price source of the market. If empty the main bot price source is set.
--- @field baseCurrency string | nil The base currency of the market. If empty the bots base currency price source is set.
--- @field quoteCurrency string | nil The quote currency of the market. If empty the bots main quote currency is set.
--- @field contractName string | nil The contract name of the market. If empty the bots main contract name is set.

--- Creates a market string that can be used for a variety of commands.
--- @param priceSource string Optional - The price source of the market. If empty the main bot price source is set. Suggestions: Input, Load
--- @param baseCurrency string Optional - The base currency of the market. If empty the bots base currency price source is set. Suggestions: Input, Load
--- @param quoteCurrency string Optional - The quote currency of the market. If empty the bots main quote currency is set. Suggestions: Input, Load
--- @param contractName string Optional - The contract name of the market. If empty the bots main contract name is set. Suggestions: Input, Load
--- @return string Returns the market string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(priceSource: string): string
--- @overload fun(priceSource: string, baseCurrency: string): string
--- @overload fun(priceSource: string, baseCurrency: string, quoteCurrency: string): string
--- @overload fun(optionalParameters: OptionalParametersOf_CreateMarket): string
function CreateMarket(priceSource, baseCurrency, quoteCurrency, contractName) end

--- The optional parameters of GetLastTrades.
--- @shape OptionalParametersOf_GetLastTrades
--- @field depth number | number[] | nil Maximum number of records returned (can return less).
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets a list of the last trades.
--- @param depth number | number[] Optional - Maximum number of records returned (can return less). Suggestions: Input
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number[] Returns the last trades. Array format: [[price, amount, isBuy?, unix], .. ].
--- @overload fun(): number[]
--- @overload fun(depth: number | number[]): number[]
--- @overload fun(optionalParameters: OptionalParametersOf_GetLastTrades): number[]
function GetLastTrades(depth, market) end

--- The object returned by GetOrderbook.
--- @class ResultOf_GetOrderbook
--- @field askPrices number[] Ask/buy prices. Sorted from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field askAmounts number[] Ask/buy amounts. Sorted on price from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field bidPrices number[] Bid/sell prices. Sorted from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field bidAmounts number[] Bid/sell amounts. Sorted on price from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [1] number[] Ask/buy prices. Sorted from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [2] number[] Ask/buy amounts. Sorted on price from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [3] number[] Bid/sell prices. Sorted from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [4] number[] Bid/sell amounts. Sorted on price from low to high. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot

--- The optional parameters of GetOrderbook.
--- @shape OptionalParametersOf_GetOrderbook
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the orderbook on a specific market.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return ResultOf_GetOrderbook Returns a collection with 4 arrays. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): ResultOf_GetOrderbook
--- @overload fun(optionalParameters: OptionalParametersOf_GetOrderbook): ResultOf_GetOrderbook
function GetOrderbook(market) end

--- The optional parameters of GetOrderbookAsk.
--- @shape OptionalParametersOf_GetOrderbookAsk
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets a list of the orderbook ask records.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return any Returns an array of bid prices and order sizes. Output format: [[price, amount], [price, amount] ...].
--- @overload fun(): any
--- @overload fun(optionalParameters: OptionalParametersOf_GetOrderbookAsk): any
function GetOrderbookAsk(market) end

--- The optional parameters of GetOrderbookBid.
--- @shape OptionalParametersOf_GetOrderbookBid
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets a list of the orderbook bid records.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return any Returns an array of bid prices and order sizes. Output format: [[price, amount], [price, amount] ...].
--- @overload fun(): any
--- @overload fun(optionalParameters: OptionalParametersOf_GetOrderbookBid): any
function GetOrderbookBid(market) end

--- The optional parameters of LastBuyTradesCommand.
--- @shape OptionalParametersOf_LastBuyTradesCommand
--- @field Seconds_back number | number[] | nil 
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns all last selling orders
--- @param Seconds_back number | number[] Optional - . Suggestions: Input
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the buying trading volume. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(Seconds_back: number | number[]): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_LastBuyTradesCommand): number | number[]
function LastBuyTradesCommand(Seconds_back, market) end

--- The optional parameters of LastSellTradesCommand.
--- @shape OptionalParametersOf_LastSellTradesCommand
--- @field Seconds_back number | number[] | nil 
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Returns all last selling orders
--- @param Seconds_back number | number[] Optional - . Suggestions: Input
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the selling trading volume. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(Seconds_back: number | number[]): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_LastSellTradesCommand): number | number[]
function LastSellTradesCommand(Seconds_back, market) end

--- The optional parameters of LastTradesSentiment.
--- @shape OptionalParametersOf_LastTradesSentiment
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Calculates the last trades sentiment as a number.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the last trades sentiment. 0.5 is the default, idle value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_LastTradesSentiment): number | number[]
function LastTradesSentiment(market) end

--- The optional parameters of OrderbookSentiment.
--- @shape OptionalParametersOf_OrderbookSentiment
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Calculates the orderbook sentiment as a number.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number | number[] Returns the orderbook sentiment. 0.5 is the default, idle value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number | number[]
--- @overload fun(optionalParameters: OptionalParametersOf_OrderbookSentiment): number | number[]
function OrderbookSentiment(market) end

--- Determines the price level. For example. 123456 will return 10000. 123 will return 100.
--- @param price number | number[] Source data. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number | number[] Returns the price level. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function PriceLevel(price) end

