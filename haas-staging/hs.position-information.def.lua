--- Position Information

--- The optional parameters of AdjustVPosition.
--- @shape OptionalParametersOf_AdjustVPosition
--- @field positionId string | nil Unique position identifier.

--- Adjusts a virtual bot position by processing a simulated order using the defined specifications. Works similarly to PlaceExitLongOrder/PlaceExitShortOrder, but will NOT create a real order; only simulated!
--- @param price number The close price of the position. Suggestions: UserPositionContainer
--- @param amount number The amount to adjust: negative value reduces, positive value adds. Suggestions: UserPositionContainer
--- @param positionId string Optional - Unique position identifier. Suggestions: NewGuid, Load
--- @return void
--- @overload fun(price: number, amount: number): void
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_AdjustVPosition): void
function AdjustVPosition(price, amount, positionId) end

--- The optional parameters of CloseVPosition.
--- @shape OptionalParametersOf_CloseVPosition
--- @field positionId string | nil Unique position identifier.

--- Closes a virtual bot position entirely by processing a simulated order using the defined specifications. Works similarly to DoExitPosition and PlaceExitPositionOrder, but will NOT create a real order; only simulated! Use this to "clean up" bot positions if required.
--- @param price number The enter price of the position. Suggestions: UserPositionContainer
--- @param positionId string Optional - Unique position identifier. Suggestions: NewGuid, Load
--- @return void
--- @overload fun(price: number): void
--- @overload fun(price: number, optionalParameters: OptionalParametersOf_CloseVPosition): void
function CloseVPosition(price, positionId) end

--- The optional parameters of CreatePosition.
--- @shape OptionalParametersOf_CreatePosition
--- @field market string | nil The market of the position.
--- @field leverage number | nil The leverage of the position. -1 for default.
--- @field positionId string | nil Unique position identifier.

--- Creates a bot position by processing a simulated order using the defined specifications. By doing this, profit/loss and position details can be used by the script. Use the returned position ID with PositionContainer() to extract position data.
--- @param direction Enum The direction of the position. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold
--- @param price number The enter price of the position. Suggestions: UserPositionContainer
--- @param amount number The size of the position. Suggestions: UserPositionContainer, MaxExitLongAmount, MaxExitShortAmount
--- @param market string Optional - The market of the position. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param leverage number Optional - The leverage of the position. -1 for default. Suggestions: Input, Leverage
--- @param positionId string Optional - Unique position identifier. Suggestions: NewGuid, Load
--- @return string Returns the position ID. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(direction: Enum, price: number, amount: number): string
--- @overload fun(direction: Enum, price: number, amount: number, market: string): string
--- @overload fun(direction: Enum, price: number, amount: number, market: string, leverage: number): string
--- @overload fun(direction: Enum, price: number, amount: number, optionalParameters: OptionalParametersOf_CreatePosition): string
function CreatePosition(direction, price, amount, market, leverage, positionId) end

--- Gets all open positions and returns them as PositionContainers.
--- @return any Returns an array of PositionContainers. Output Suggestions: PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
function GetAllOpenPositions() end

--- The optional parameters of GetPositionAmount.
--- @shape OptionalParametersOf_GetPositionAmount
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Gets the total amount open in a specific position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return number Returns the total amount open in a specific position. Output Suggestions: PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionAmount): number
function GetPositionAmount(positionId) end

--- The optional parameters of GetPositionDirection.
--- @shape OptionalParametersOf_GetPositionDirection
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Gets the direction of a specific position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return Enum Returns PositionLong, PositionShort or NoPosition. Output Suggestions: Equals, PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @overload fun(): Enum
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionDirection): Enum
function GetPositionDirection(positionId) end

--- The optional parameters of GetPositionEnterPrice.
--- @shape OptionalParametersOf_GetPositionEnterPrice
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field includeClosed boolean | nil True for total position amount (default), false for only open amount.

--- Gets the average enter price of an open position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param includeClosed boolean Optional - True for total position amount (default), false for only open amount. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return number Returns the average enter price. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(positionId: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionEnterPrice): number
function GetPositionEnterPrice(positionId, includeClosed) end

--- The optional parameters of GetPositionMarket.
--- @shape OptionalParametersOf_GetPositionMarket
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Gets the market of an open position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return string Returns the account, market & leverage as a single string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString, PlaceBuyOrder, PlaceSellOrder, PlaceExitLongOrder, PlaceExitShortOrder
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionMarket): string
function GetPositionMarket(positionId) end

--- The optional parameters of GetPositionProfit.
--- @shape OptionalParametersOf_GetPositionProfit
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field targetPrice number | nil Optional target price. Default is the best bid/ask.

--- Gets the total realized plus unrealized profit of a specific position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param targetPrice number Optional - Optional target price. Default is the best bid/ask. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number Returns the total realized plus unrealized profit of a specific position. On spot/margin the result will be in the quote currency. For leverage its in the underlying currency. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(positionId: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionProfit): number
function GetPositionProfit(positionId, targetPrice) end

--- The optional parameters of GetPositionROI.
--- @shape OptionalParametersOf_GetPositionROI
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field targetPrice number | nil Optional target price. Default is the best bid/ask.

--- Calculates the ROI based on used margin and unrealized + realized profits.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param targetPrice number Optional - Optional target price. Default is the best bid/ask. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices, GetBodyHighPrices, GetBodyLowPrices
--- @return number Returns the ROI as a percentage. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(positionId: string): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetPositionROI): number
function GetPositionROI(positionId, targetPrice) end

--- The optional parameters of IsPositionClosed.
--- @shape OptionalParametersOf_IsPositionClosed
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.

--- Checks whether or not a position is closed.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @return boolean Returns true if position is closed, otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_IsPositionClosed): boolean
function IsPositionClosed(positionId) end

--- The optional parameters of LongAmount.
--- @shape OptionalParametersOf_LongAmount
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the total amount open in a long position.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the total amount open in a long position. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_LongAmount): number
function LongAmount(market) end

--- The object returned by PositionContainer.
--- @class ResultOf_PositionContainer
--- @field positionId string The position identifier. Suggestions: PlaceExitPositionOrder
--- @field market string The market of the position. Suggestions: ClosePrices, Prices, AskPrices, BuyPrices, BidPrices, SellPrices
--- @field isLong boolean Set on true when the direction is long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field isShort boolean Set on true when the direction is short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field enterPrice number The average enter price. Suggestions: AddPerc, AddPercentage, SubPerc, SubPercentage, IsBiggerThan, IsSmallerThan
--- @field amount number The amount open in the position. Suggestions: PlaceExitLongOrder, PlaceExitShortOrder, PlaceSellOrder, PlaceBuyOrder
--- @field profit number The realized + unrealized profits. Suggestions: IsBiggerThan, IsSmallerThan
--- @field roi number The ROI based on the used margin and realized + unrealized profits. Suggestions: IsBiggerThan, IsSmallerThan
--- @field openTime number Timestamp (in unix) when the position was opened. Suggestions: IsBiggerThan, IsSmallerThan
--- @field updatedTime number Timestamp (in unix) when the position was last updated. Suggestions: IsBiggerThan, IsSmallerThan
--- @field closeTime number Timestamp (in unix) when the position was closed. If position is still open, value will be 0. Suggestions: IsBiggerThan, IsSmallerThan
--- @field [1] string The position identifier. Suggestions: PlaceExitPositionOrder
--- @field [2] string The market of the position. Suggestions: ClosePrices, Prices, AskPrices, BuyPrices, BidPrices, SellPrices
--- @field [3] boolean Set on true when the direction is long. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [4] boolean Set on true when the direction is short. Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @field [5] number The average enter price. Suggestions: AddPerc, AddPercentage, SubPerc, SubPercentage, IsBiggerThan, IsSmallerThan
--- @field [6] number The amount open in the position. Suggestions: PlaceExitLongOrder, PlaceExitShortOrder, PlaceSellOrder, PlaceBuyOrder
--- @field [7] number The realized + unrealized profits. Suggestions: IsBiggerThan, IsSmallerThan
--- @field [8] number The ROI based on the used margin and realized + unrealized profits. Suggestions: IsBiggerThan, IsSmallerThan
--- @field [9] number Timestamp (in unix) when the position was opened. Suggestions: IsBiggerThan, IsSmallerThan
--- @field [10] number Timestamp (in unix) when the position was last updated. Suggestions: IsBiggerThan, IsSmallerThan
--- @field [11] number Timestamp (in unix) when the position was closed. If position is still open, value will be 0. Suggestions: IsBiggerThan, IsSmallerThan

--- The optional parameters of PositionContainer.
--- @shape OptionalParametersOf_PositionContainer
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field includeClosed boolean | nil True for total position amount (default), false for only open amount. Affects enterPrice value in returned object.

--- Gets all the information from the open bot position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param includeClosed boolean Optional - True for total position amount (default), false for only open amount. Affects enterPrice value in returned object. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return ResultOf_PositionContainer Returns an array with position information.
--- @overload fun(): ResultOf_PositionContainer
--- @overload fun(positionId: string): ResultOf_PositionContainer
--- @overload fun(optionalParameters: OptionalParametersOf_PositionContainer): ResultOf_PositionContainer
function PositionContainer(positionId, includeClosed) end

--- The optional parameters of ShortAmount.
--- @shape OptionalParametersOf_ShortAmount
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.

--- Gets the total amount open in a short position.
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @return number Returns the total amount open in a short position. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_ShortAmount): number
function ShortAmount(market) end

