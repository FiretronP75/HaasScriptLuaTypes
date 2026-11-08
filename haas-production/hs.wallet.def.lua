--- Wallet

--- The object returned by Balance.
--- @class ResultOf_Balance
--- @field available number The available balance. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field locked number The locked balance for orders and/or position margin among others. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field total number The total balance. Available and locked. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [1] number The available balance. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [2] number The locked balance for orders and/or position margin among others. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [3] number The total balance. Available and locked. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot

--- The optional parameters of Balance.
--- @shape OptionalParametersOf_Balance
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties.
--- @field coin string | nil Coin of which to retrieve the wallet amount. Default value is the 'UnderlyingAsset' currency.
--- @field market string | nil Optional market parameter for exchanges with separates wallet for each market.

--- Available, locked and total balance of a currency.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param coin string Optional - Coin of which to retrieve the wallet amount. Default value is the 'UnderlyingAsset' currency.
--- @param market string Optional - Optional market parameter for exchanges with separates wallet for each market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return ResultOf_Balance Returns a result object with the available, locked and total balance.
--- @overload fun(): ResultOf_Balance
--- @overload fun(accountId: string): ResultOf_Balance
--- @overload fun(accountId: string, coin: string): ResultOf_Balance
--- @overload fun(optionalParameters: OptionalParametersOf_Balance): ResultOf_Balance
function Balance(accountId, coin, market) end

--- The optional parameters of BalanceAmount.
--- @shape OptionalParametersOf_BalanceAmount
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties.
--- @field coin string | nil Coin of which to retrieve the wallet amount. Default value is the 'UnderlyingAsset' currency.
--- @field market string | nil Optional market parameter for exchanges with separates wallet for each market.

--- Total balance value of a specific currency. Including order and position margin. Does not work yet in backtests and for simulated accounts.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param coin string Optional - Coin of which to retrieve the wallet amount. Default value is the 'UnderlyingAsset' currency.
--- @param market string Optional - Optional market parameter for exchanges with separates wallet for each market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the total balance value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(accountId: string): number
--- @overload fun(accountId: string, coin: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_BalanceAmount): number
function BalanceAmount(accountId, coin, market) end

--- The object returned by GetAllUserPositions.
--- @class ResultOf_GetAllUserPositions
--- @field positionId string Stable identifier for this exchange position leg, for referencing a specific leg in hedge mode. Opaque: it is NOT a bot position id, so GetPositionAmount() and similar commands find nothing for it. Suggestions: Equals, Log
--- @field accountId string The account the position is held on. Suggestions: AccountGuid
--- @field market string The market of the position, as a bare market tag directly comparable to PriceMarket(). Both PositionContainer.market and UserPositionContainer.market return the composite `<accountId>_<market>_<leverage>` form instead. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @field isLong boolean Set on true when the direction is long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isShort boolean Set on true when the direction is short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field enterPrice number The average enter price. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field amount number The amount open in the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @field profit number The unrealized profit of this position, as reported by the exchange or calculated by HaasOnline from the enter price and the last price, depending on the exchange. Note PositionContainer.profit is realized + unrealized; the two fields share a name but not a meaning. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field roi number The unrealized profit as a percentage of the position's margin. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field leverage number The leverage of the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field direction Enum The direction of the position. Returns PositionLong or PositionShort. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold
--- @field [1] string Stable identifier for this exchange position leg, for referencing a specific leg in hedge mode. Opaque: it is NOT a bot position id, so GetPositionAmount() and similar commands find nothing for it. Suggestions: Equals, Log
--- @field [2] string The account the position is held on. Suggestions: AccountGuid
--- @field [3] string The market of the position, as a bare market tag directly comparable to PriceMarket(). Both PositionContainer.market and UserPositionContainer.market return the composite `<accountId>_<market>_<leverage>` form instead. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @field [4] boolean Set on true when the direction is long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [5] boolean Set on true when the direction is short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [6] number The average enter price. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [7] number The amount open in the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @field [8] number The unrealized profit of this position, as reported by the exchange or calculated by HaasOnline from the enter price and the last price, depending on the exchange. Note PositionContainer.profit is realized + unrealized; the two fields share a name but not a meaning. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [9] number The unrealized profit as a percentage of the position's margin. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [10] number The leverage of the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [11] Enum The direction of the position. Returns PositionLong or PositionShort. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold

--- The optional parameters of GetAllUserPositions.
--- @shape OptionalParametersOf_GetAllUserPositions
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.
--- @field market string | nil Optional market filter. Empty for every market in the account snapshot.

--- Gets the positions the exchange reports for the account, independent of the bot position ledger. Use it to detect positions the bot did not open itself. On a managed bot the account snapshot only covers the bot's own market; unmanaged bots see every market on the account.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param market string Optional - Optional market filter. Empty for every market in the account snapshot. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return ResultOf_GetAllUserPositions Returns an array with position information per open exchange position.
--- @overload fun(): ResultOf_GetAllUserPositions
--- @overload fun(accountId: string): ResultOf_GetAllUserPositions
--- @overload fun(optionalParameters: OptionalParametersOf_GetAllUserPositions): ResultOf_GetAllUserPositions
function GetAllUserPositions(accountId, market) end

--- The optional parameters of MarginToTradeAmount.
--- @shape OptionalParametersOf_MarginToTradeAmount
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Convert margin to a trade amount. In spot markets, the margin is anticipated to be in the quote currency (e.g., USDT in BTC/USDT). For leverage markets, the margin is expected to be in the underlying currency.
--- @param price number The price used in the conversion from margin to trade amount. Suggestions: Input
--- @param margin number The margin used to calculate the trade amount. Suggestions: Input
--- @param leverage number Leverage ratio. Use 0 for cross-margin. Suggestions: Input, Leverage
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the calculated trade amount based on the margin. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceGoLongOrder, PlaceGoShortOrder
--- @overload fun(price: number, margin: number, leverage: number): number
--- @overload fun(price: number, margin: number, leverage: number, optionalParameters: OptionalParametersOf_MarginToTradeAmount): number
function MarginToTradeAmount(price, margin, leverage, market) end

--- The optional parameters of MaxExitLongAmount.
--- @shape OptionalParametersOf_MaxExitLongAmount
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Calculates the maximum amount which can be used to place an exit long order based on wallet data. Assets reserved in open orders are excluded by default.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the maximum exit long amount. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceExitLongOrder
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_MaxExitLongAmount): number
function MaxExitLongAmount(market) end

--- The optional parameters of MaxExitShortAmount.
--- @shape OptionalParametersOf_MaxExitShortAmount
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Calculates the maximum amount which can be used to place an exit short order based on wallet data. Assets reserved in open orders are excluded by default.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the maximum exit short amount. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceExitShortOrder
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_MaxExitShortAmount): number
function MaxExitShortAmount(market) end

--- The optional parameters of MaxLongAmount.
--- @shape OptionalParametersOf_MaxLongAmount
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Calculates the maximum amount which can be used to place a long order based on wallet data.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the maximum long amount. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceGoLongOrder, PlaceGoShortOrder
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_MaxLongAmount): number
function MaxLongAmount(market) end

--- The optional parameters of MaxShortAmount.
--- @shape OptionalParametersOf_MaxShortAmount
--- @field market string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.

--- Calculates the maximum amount which can be used to place a short order based on wallet data.
--- @param market string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @return number Returns the maximum long amount. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_MaxShortAmount): number
function MaxShortAmount(market) end

--- The object returned by UserPositionContainer.
--- @class ResultOf_UserPositionContainer
--- @field market string The market of the position, as a composite `<accountId>_<market>_<leverage>` string built from the arguments passed in, where leverage is the leverage argument (-1 by default), not the position's own leverage. Not comparable to PriceMarket(). Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @field isLong boolean Set on true when the direction is long. False when the account holds no position on this market. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isShort boolean Set on true when the direction is short. False when the account holds no position on this market. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field enterPrice number The average enter price. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field amount number The amount open in the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @field profit number The unrealized profit of this position, as reported by the exchange or calculated by HaasOnline from the enter price and the last price, depending on the exchange. Note PositionContainer.profit is realized + unrealized; the two fields share a name but not a meaning. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field roi number The unrealized profit as a percentage of the position's margin. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field direction Enum The direction of the position. Returns PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @field [1] string The market of the position, as a composite `<accountId>_<market>_<leverage>` string built from the arguments passed in, where leverage is the leverage argument (-1 by default), not the position's own leverage. Not comparable to PriceMarket(). Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @field [2] boolean Set on true when the direction is long. False when the account holds no position on this market. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [3] boolean Set on true when the direction is short. False when the account holds no position on this market. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [4] number The average enter price. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [5] number The amount open in the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @field [6] number The unrealized profit of this position, as reported by the exchange or calculated by HaasOnline from the enter price and the last price, depending on the exchange. Note PositionContainer.profit is realized + unrealized; the two fields share a name but not a meaning. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [7] number The unrealized profit as a percentage of the position's margin. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [8] Enum The direction of the position. Returns PositionLong, PositionShort or NoPosition. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition

--- The optional parameters of UserPositionContainer.
--- @shape OptionalParametersOf_UserPositionContainer
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example.
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field leverage number | nil Deprecated, Can be ignored.
--- @field direction Enum | nil Direction of the position PositionLong or PositionShort. Empty for any. If there is both a long and short position, the long position will be returned.

--- Gets all the information from the open user position.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount or InputAccountMarket for example. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param leverage number Optional - Deprecated, Can be ignored. Suggestions: Input, Leverage
--- @param direction Enum Optional - Direction of the position PositionLong or PositionShort. Empty for any. If there is both a long and short position, the long position will be returned. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return ResultOf_UserPositionContainer Returns an array with position information.
--- @overload fun(): ResultOf_UserPositionContainer
--- @overload fun(accountId: string): ResultOf_UserPositionContainer
--- @overload fun(accountId: string, market: string): ResultOf_UserPositionContainer
--- @overload fun(accountId: string, market: string, leverage: number): ResultOf_UserPositionContainer
--- @overload fun(optionalParameters: OptionalParametersOf_UserPositionContainer): ResultOf_UserPositionContainer
function UserPositionContainer(accountId, market, leverage, direction) end

--- The optional parameters of WalletAmount.
--- @shape OptionalParametersOf_WalletAmount
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties.
--- @field coin string | nil Coin of which to retrieve the wallet amount.
--- @field market string | nil Optional market parameter for exchanges with separates wallet for each market.

--- Get the available amount in the wallet.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param coin string Optional - Coin of which to retrieve the wallet amount.
--- @param market string Optional - Optional market parameter for exchanges with separates wallet for each market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the available amount. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder
--- @overload fun(): number
--- @overload fun(accountId: string): number
--- @overload fun(accountId: string, coin: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_WalletAmount): number
function WalletAmount(accountId, coin, market) end

--- Checks if the wallet has enough of the funds.
--- @param accountId string The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param coin string Coin of which to retrieve the wallet amount.
--- @param amount number The minimum amount needed. Suggestions: Mul, Mult, Div
--- @return boolean Returns true if the wallet has enough funds. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function WalletCheck(accountId, coin, amount) end

