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

--- Stop-Limit order type enum with a standard timeout of 10 minutes. In live trading, when the exchange does not declare this type, the order is refused before it is sent: it fails with "Requested order type '...' is not supported by ..." and the bot keeps running. Backtests do not check this and simulate the order anyway. Used by the PlaceOrders commands together with a triggerPrice. SetOrderType() refuses it, because managed trading never passes a trigger price.
--- @class StopLimitOrderType : Enum
StopLimitOrderType = {}

--- Stop-Market order type enum. In live trading, when the exchange does not declare this type, the order is refused before it is sent: it fails with "Requested order type '...' is not supported by ..." and the bot keeps running. Backtests do not check this and simulate the order anyway. Used by the PlaceOrders commands together with a triggerPrice. SetOrderType() refuses it, because managed trading never passes a trigger price.
--- @class StopMarketOrderType : Enum
StopMarketOrderType = {}

--- Take-profit limit order type enum with a standard timeout of 10 minutes. In live trading, when the exchange does not declare this type, the order is refused before it is sent: it fails with "Requested order type '...' is not supported by ..." and the bot keeps running. Backtests do not check this and simulate the order anyway. Used by the PlaceOrders commands together with a triggerPrice. SetOrderType() refuses it, because managed trading never passes a trigger price.
--- @class TakeProfitLimitOrderType : Enum
TakeProfitLimitOrderType = {}

--- Take-Profit-Market order type enum. In live trading, when the exchange does not declare this type, the order is refused before it is sent: it fails with "Requested order type '...' is not supported by ..." and the bot keeps running. Backtests do not check this and simulate the order anyway. Used by the PlaceOrders commands together with a triggerPrice. SetOrderType() refuses it, because managed trading never passes a trigger price.
--- @class TakeProfitMarketOrderType : Enum
TakeProfitMarketOrderType = {}

