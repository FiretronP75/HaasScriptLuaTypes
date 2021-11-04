--- Input Settings

--- Gets the main account guid of the bot.
--- @return string Returns an account guid. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, WalletAmount, TradeMarketContainer, UserPositionContainer
function AccountGuid() end

--- Gets the default interval selected by the user or returns the interval of a price source.
--- @vararg any Optional - Source data.
--- @return number Interval in minutes. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, ClosePrices, Prices
function CurrentInterval(...) end

--- The optional parameters of Fee.
--- @shape OptionalParametersOf_Fee
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Gets the current fee percentage of the main or specific market.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the fee percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_Fee): number
function Fee(market) end

--- Gets the main account leverage setting.
--- @return number Leverage setting. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, ClosePrices, Prices
function Leverage() end

--- Gets the main market of the bot.
--- @return string Returns a market string. For example: BITFINEX_BTC_USD_ or BITMEX_XBT_USD_XBTUSD. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, TradeMarketContainer, ClosePrices, Prices
function PriceMarket() end

--- Gets the trade amount setting.
--- @return number Gets the trade amount. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, GetPositionAmount
function TradeAmount() end

