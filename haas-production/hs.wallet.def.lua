--- Wallet

--- The object returned by Balance.
--- @class ResultOf_Balance
--- @field available number The available balance.
--- @field locked number The locked balance for orders and/or position margin among others.
--- @field total number The total balance. Available and locked.
--- @field [1] number The available balance.
--- @field [2] number The locked balance for orders and/or position margin among others.
--- @field [3] number The total balance. Available and locked.

--- The optional parameters of Balance.
--- @shape OptionalParametersOf_Balance
--- @field accountId string | nil The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties.
--- @field market string | nil Optional market parameter for exchanges with separates wallet for each market.

--- Total balance specifications of a specific currency. Available, locked and total balance. Does not work yet in backtests and for simulated accounts.
--- @param accountId string Optional - The guid returned by AccountGuid(), InputAccount() or InputAccountMarket() for example. Can be left empty for default properties. Suggestions: InputAccount, InputAccountMarket, InputMarket, AccountGuid
--- @param coin string Coin of which to retrieve the wallet amount. Default value is the 'UnderlyingAsset' currency.
--- @param market string Optional - Optional market parameter for exchanges with separates wallet for each market. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return ResultOf_Balance Returns a result object with the available, locked and total balance.
--- @overload fun(coin: string): ResultOf_Balance
--- @overload fun(coin: string, accountId: string): ResultOf_Balance
--- @overload fun(coin: string, optionalParameters: OptionalParametersOf_Balance): ResultOf_Balance
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
--- @field market string The market of the position. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @field isLong boolean Set on true when the direction is long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isShort boolean Set on true when the direction is short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field enterPrice number The average enter price. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field amount number The amount open in the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @field profit number The realized + unrealized profits. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field roi number The ROI based on the used margin and realized + unrealized profits. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [1] string The market of the position. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @field [2] boolean Set on true when the direction is long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [3] boolean Set on true when the direction is short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [4] number The average enter price. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [5] number The amount open in the position. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @field [6] number The realized + unrealized profits. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @field [7] number The ROI based on the used margin and realized + unrealized profits. Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot

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

