--- Enumerations Order Types

--- Standard limit order type enum with a default timeout of 10 minutes. Used by SetOrderType() or PlaceOrders commands.
--- @class LimitOrderType : Enum
LimitOrderType = {}

--- MakerOrCancel order type enum with a standard timeout of 10 minutes. When the exchange does not support this type, a normal limit order will be executed. Used by SetOrderType() or PlaceOrders commands.
--- @class MakerOrCancelOrderType : Enum
MakerOrCancelOrderType = {}

--- Standard market order type. Used by SetOrderType() or PlaceOrders commands.
--- @class MarketOrderType : Enum
MarketOrderType = {}

--- Enumeration, returns an order type enum. Used by SetOrderType() or PlaceOrders commands.
--- @class NoTimeOutOrderType : Enum
NoTimeOutOrderType = {}

--- Stop-Limit order type enum with a standard timeout of 10 minutes. When the exchange does not support this type, an error will be thrown and bot execution is stopped. Used by SetOrderType() or PlaceOrders commands.
--- @class StopLimitOrderType : Enum
StopLimitOrderType = {}

--- Stop-Market order type enum. When the exchange does not support this type, an error will be thrown and bot execution is stopped. Used by SetOrderType() or PlaceOrders commands.
--- @class StopMarketOrderType : Enum
StopMarketOrderType = {}

--- Take-profit limit order type enum with a standard timeout of 10 minutes. When the exchange does not support this type, an error will be thrown and bot execution is stopped. Used by SetOrderType() or PlaceOrders commands.
--- @class TakeProfitLimitOrderType : Enum
TakeProfitLimitOrderType = {}

--- Take-Profit-Market order type enum. When the exchange does not support this type, an error will be thrown and bot execution is stopped. Used by SetOrderType() or PlaceOrders commands.
--- @class TakeProfitMarketOrderType : Enum
TakeProfitMarketOrderType = {}

