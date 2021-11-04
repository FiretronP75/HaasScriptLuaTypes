--- Trade Actions (Unmanaged)

--- The optional parameters of PlaceBuyOrder.
--- @shape OptionalParametersOf_PlaceBuyOrder
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum | nil The type of order. Default is limit.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field positionId string | nil Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout.
--- @field triggerPrice number | nil Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange.

--- Places a (limit) buy order for the given amount and price. Returns the order identifier (text).
--- @param price number The price on which to execute the order. If the order is a market order, this field will be ignored. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param amount number The amount to execute. Suggestions: TradeAmount, Input, MaxLongAmount
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param type Enum Optional - The type of order. Default is limit. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param positionId string Optional - Optional unique internal identifier that can be used to maintain multiple separate positions. Suggestions: Load, NewGuid
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout. Suggestions: Input
--- @param triggerPrice number Optional - Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange. Suggestions: Input
--- @return string Unique order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(price: number, amount: number): string
--- @overload fun(price: number, amount: number, market: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string, timeout: number): string
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_PlaceBuyOrder): string
function PlaceBuyOrder(price, amount, market, type, note, positionId, timeout, triggerPrice) end

--- The optional parameters of PlaceCancelledOrder.
--- @shape OptionalParametersOf_PlaceCancelledOrder
--- @field price number | nil The price on which to execute. Be defaults the best ask or bid price is used.

--- Executes the remaining amount of a canceled order.
--- @param orderId string Unique order identifier. Returned by the PlaceOrder commands.
--- @param price number Optional - The price on which to execute. Be defaults the best ask or bid price is used. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @return string Returns an new order identifier. Empty if no order is executed. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(orderId: string): string
--- @overload fun(orderId: string, optionalParameters: OptionalParametersOf_PlaceCancelledOrder): string
function PlaceCancelledOrder(orderId, price) end

--- The optional parameters of PlaceExitLongOrder.
--- @shape OptionalParametersOf_PlaceExitLongOrder
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum | nil The type of order. Default is limit.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field positionId string | nil Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout.
--- @field triggerPrice number | nil Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange.

--- Places a (limit) exit long order for the given amount and price. Returns the order identifier (text).
--- @param price number The price on which to execute the order. If the order is a market order, this field will be ignored. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param amount number The amount to execute. Suggestions: TradeAmount, Input, LongAmount
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param type Enum Optional - The type of order. Default is limit. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param positionId string Optional - Optional unique internal identifier that can be used to maintain multiple separate positions. Suggestions: Load, NewGuid
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout. Suggestions: Input
--- @param triggerPrice number Optional - Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange. Suggestions: Input
--- @return string Unique order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(price: number, amount: number): string
--- @overload fun(price: number, amount: number, market: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string, timeout: number): string
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_PlaceExitLongOrder): string
function PlaceExitLongOrder(price, amount, market, type, note, positionId, timeout, triggerPrice) end

--- The optional parameters of PlaceExitPositionOrder.
--- @shape OptionalParametersOf_PlaceExitPositionOrder
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field price number | nil The price on which to execute. Be defaults the best ask or bid price is used.
--- @field type Enum | nil Order type used for the order.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes except for NoTimeOutOrderType.

--- Places exit orders for a specific bot position.
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param price number Optional - The price on which to execute. Be defaults the best ask or bid price is used. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param type Enum Optional - Order type used for the order. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes except for NoTimeOutOrderType. Suggestions: Input
--- @return string Returns an order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(positionId: string): string
--- @overload fun(positionId: string, price: number): string
--- @overload fun(positionId: string, price: number, type: Enum): string
--- @overload fun(positionId: string, price: number, type: Enum, note: string): string
--- @overload fun(optionalParameters: OptionalParametersOf_PlaceExitPositionOrder): string
function PlaceExitPositionOrder(positionId, price, type, note, timeout) end

--- The optional parameters of PlaceExitShortOrder.
--- @shape OptionalParametersOf_PlaceExitShortOrder
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum | nil The type of order. Default is limit.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field positionId string | nil Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout.
--- @field triggerPrice number | nil Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange.

--- Places a (limit) exit short order for the given amount and price. Returns the order identifier (text).
--- @param price number The price on which to execute the order. If the order is a market order, this field will be ignored. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param amount number The amount to execute. Suggestions: TradeAmount, Input, ShortAmount
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param type Enum Optional - The type of order. Default is limit. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param positionId string Optional - Optional unique internal identifier that can be used to maintain multiple separate positions. Suggestions: Load, NewGuid
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout. Suggestions: Input
--- @param triggerPrice number Optional - Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange. Suggestions: Input
--- @return string Unique order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(price: number, amount: number): string
--- @overload fun(price: number, amount: number, market: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string, timeout: number): string
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_PlaceExitShortOrder): string
function PlaceExitShortOrder(price, amount, market, type, note, positionId, timeout, triggerPrice) end

--- The optional parameters of PlaceGoLongOrder.
--- @shape OptionalParametersOf_PlaceGoLongOrder
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum | nil The type of order. Default is limit.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field positionId string | nil Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout.
--- @field triggerPrice number | nil Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange.

--- Places a (limit) go long order for the given amount and price. Returns the order identifier (text).
--- @param price number The price on which to execute the order. If the order is a market order, this field will be ignored. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param amount number The amount to execute. Suggestions: TradeAmount, Input, MaxLongAmount
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param type Enum Optional - The type of order. Default is limit. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param positionId string Optional - Optional unique internal identifier that can be used to maintain multiple separate positions. Suggestions: Load, NewGuid
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout. Suggestions: Input
--- @param triggerPrice number Optional - Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange. Suggestions: Input
--- @return string Unique order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(price: number, amount: number): string
--- @overload fun(price: number, amount: number, market: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string, timeout: number): string
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_PlaceGoLongOrder): string
function PlaceGoLongOrder(price, amount, market, type, note, positionId, timeout, triggerPrice) end

--- The optional parameters of PlaceGoShortOrder.
--- @shape OptionalParametersOf_PlaceGoShortOrder
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum | nil The type of order. Default is limit.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field positionId string | nil Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout.
--- @field triggerPrice number | nil Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange.

--- Places a (limit) go short order for the given amount and price. Returns the order identifier (text).
--- @param price number The price on which to execute the order. If the order is a market order, this field will be ignored. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param amount number The amount to execute. Suggestions: TradeAmount, Input, MaxShortAmount
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param type Enum Optional - The type of order. Default is limit. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param positionId string Optional - Optional unique internal identifier that can be used to maintain multiple separate positions. Suggestions: Load, NewGuid
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout. Suggestions: Input
--- @param triggerPrice number Optional - Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange. Suggestions: Input
--- @return string Unique order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(price: number, amount: number): string
--- @overload fun(price: number, amount: number, market: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string, timeout: number): string
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_PlaceGoShortOrder): string
function PlaceGoShortOrder(price, amount, market, type, note, positionId, timeout, triggerPrice) end

--- The optional parameters of PlaceSellOrder.
--- @shape OptionalParametersOf_PlaceSellOrder
--- @field market string | nil The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example.
--- @field type Enum | nil The type of order. Default is limit.
--- @field note string | nil A note for the order. Visible in the open orders and history.
--- @field positionId string | nil Optional unique internal identifier that can be used to maintain multiple separate positions.
--- @field timeout number | nil The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout.
--- @field triggerPrice number | nil Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange.

--- Places a (limit) sell order for the given amount and price. Returns the order identifier (text).
--- @param price number The price on which to execute the order. If the order is a market order, this field will be ignored. Suggestions: AskPrices, BuyPrices, BidPrices, SellPrices, OpenPrices, HighPrices, LowPrices, ClosePrices, Prices, HLPrices, HLCPrices, OCPrices, HeikenClosePrices, OHLCPrices
--- @param amount number The amount to execute. Suggestions: TradeAmount, Input, MaxShortAmount
--- @param market string Optional - The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param type Enum Optional - The type of order. Default is limit. Suggestions: MarketOrderType, LimitOrderType, MakerOrCancelOrderType, NoTimeOutOrderType, MakerOrCancelOrderType, StopLimitOrderType, StopMarketOrderType, TakeProfitLimitOrderType, TakeProfitMarketOrderType
--- @param note string Optional - A note for the order. Visible in the open orders and history. Suggestions: Input, Load
--- @param positionId string Optional - Optional unique internal identifier that can be used to maintain multiple separate positions. Suggestions: Load, NewGuid
--- @param timeout number Optional - The order timeout in seconds. By default the timeout is 600 seconds / 10 minutes. Using a negative value will disable the timeout. Suggestions: Input
--- @param triggerPrice number Optional - Trigger price, used for conditional orders. This parameter must only be set when using native order types that are supported by the exchange. Suggestions: Input
--- @return string Unique order identifier. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(price: number, amount: number): string
--- @overload fun(price: number, amount: number, market: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string): string
--- @overload fun(price: number, amount: number, market: string, type: Enum, note: string, positionId: string, timeout: number): string
--- @overload fun(price: number, amount: number, optionalParameters: OptionalParametersOf_PlaceSellOrder): string
function PlaceSellOrder(price, amount, market, type, note, positionId, timeout, triggerPrice) end

