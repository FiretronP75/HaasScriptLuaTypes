--- Easy Safeties

--- The optional parameters of DeactivateAfterEnterOrder.
--- @shape OptionalParametersOf_DeactivateAfterEnterOrder
--- @field positionCount number | number[] | nil Number of position allowed before the check is preformed.

--- Deactivates the bot after an enter order has been completed.
--- @param positionCount number | number[] Optional - Number of position allowed before the check is preformed. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_DeactivateAfterEnterOrder): boolean
function DeactivateAfterEnterOrder(positionCount) end

--- The optional parameters of DeactivateAfterExitOrder.
--- @shape OptionalParametersOf_DeactivateAfterExitOrder
--- @field positionCount number | number[] | nil Number of position allowed before the check is preformed.

--- Deactivates the bot after an exit order has been completed.
--- @param positionCount number | number[] Optional - Number of position allowed before the check is preformed. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_DeactivateAfterExitOrder): boolean
function DeactivateAfterExitOrder(positionCount) end

--- Deactivates the bot when the is active for a certain time.
--- @param minutes number | number[] Number of positions allowed before the bot is deactivated. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
function DeactivateAfterXActiveMinutes(minutes) end

--- Deactivates the bot if the last completed order is a number of minutes in the past. Timeout starts after the first completed order.
--- @param minutes number | number[] Number of positions allowed before the bot is deactivated. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
function DeactivateAfterXIdleMinutes(minutes) end

--- The optional parameters of DeactivateAfterXOrders.
--- @shape OptionalParametersOf_DeactivateAfterXOrders
--- @field count number | number[] | nil Number of orders allowed before the bot is deactivated.

--- Deactivates the bot after a number of orders has been completed.
--- @param count number | number[] Optional - Number of orders allowed before the bot is deactivated. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_DeactivateAfterXOrders): boolean
function DeactivateAfterXOrders(count) end

--- The optional parameters of DeactivateAfterXPositions.
--- @shape OptionalParametersOf_DeactivateAfterXPositions
--- @field count number | number[] | nil Number of positions allowed before the bot is deactivated.

--- Deactivates the bot after a number of positions has been completed.
--- @param count number | number[] Optional - Number of positions allowed before the bot is deactivated. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(): boolean
--- @overload fun(optionalParameters: OptionalParametersOf_DeactivateAfterXPositions): boolean
function DeactivateAfterXPositions(count) end

--- Deactivates the bot when there is no open position and the ROI based losses have reached a certain level.
--- @param maxLoss number | number[] Maximum allowed loss based on the ROI. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
function DeactivateOnLoss(maxLoss) end

--- Deactivates the bot when there is no open position and the ROI based profits have reached a certain level.
--- @param minProfit number | number[] Minimum profit based on the ROI. Suggestions: Input
--- @return boolean Returns true when the bot has been deactivated. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
function DeactivateOnProfit(minProfit) end

--- The optional parameters of DynamicStopLoss.
--- @shape OptionalParametersOf_DynamicStopLoss
--- @field depth number | number[] | nil Read depth. Default is 30 ticks.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Calculates the dynamic stop loss price and compares it with the current exit price.
--- @param percentage number | number[] Price pump percentage. Suggestions: Input
--- @param depth number | number[] Optional - Read depth. Default is 30 ticks. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true is the stop loss price has been breached. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], depth: number | number[]): boolean
--- @overload fun(percentage: number | number[], depth: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_DynamicStopLoss): boolean
function DynamicStopLoss(percentage, depth, positionId, direction) end

--- The optional parameters of DynamicTakeProfit.
--- @shape OptionalParametersOf_DynamicTakeProfit
--- @field depth number | number[] | nil Read depth. Default is 30 ticks.
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Calculates the dynamic take profit price and compares it with the current exit price.
--- @param percentage number | number[] Price pump percentage. Suggestions: Input
--- @param depth number | number[] Optional - Read depth. Default is 30 ticks. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true is the take profit price has been breached. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], depth: number | number[]): boolean
--- @overload fun(percentage: number | number[], depth: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_DynamicTakeProfit): boolean
function DynamicTakeProfit(percentage, depth, positionId, direction) end

--- The optional parameters of GrowingTrailingStopLoss.
--- @shape OptionalParametersOf_GrowingTrailingStopLoss
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Keeps track of the highest/lowest recorded price and adjust the stop loss accordingly. The higher the price change the more the trailing distances grows.
--- @param percentage number | number[] Trailing stop loss percentage. Suggestions: Input
--- @param growPercentage number | number[] The grow percentage. 0.035 for example. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the stop loss has been hit. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[], growPercentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], growPercentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], growPercentage: number | number[], optionalParameters: OptionalParametersOf_GrowingTrailingStopLoss): boolean
function GrowingTrailingStopLoss(percentage, growPercentage, positionId, direction) end

--- The optional parameters of ShrinkingTrailingStopLoss.
--- @shape OptionalParametersOf_ShrinkingTrailingStopLoss
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Keeps track of the highest/lowest recorded price and adjust the stop loss accordingly. The higher the price change the more the trailing distances shrinks.
--- @param percentage number | number[] Trailing stop loss percentage. Suggestions: Input
--- @param shrinkPercentage number | number[] This percentage will be added to the stop every time the stop adjust. The percentage will raise exponentially on every adjustment. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the stop loss has been hit. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[], shrinkPercentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], shrinkPercentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], shrinkPercentage: number | number[], optionalParameters: OptionalParametersOf_ShrinkingTrailingStopLoss): boolean
function ShrinkingTrailingStopLoss(percentage, shrinkPercentage, positionId, direction) end

--- The optional parameters of StopLoss.
--- @shape OptionalParametersOf_StopLoss
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Calculates the current percentage change from the average enter price and compares it with the stop loss value.
--- @param percentage number | number[] Stop loss percentage. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the stop loss has been hit. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_StopLoss): boolean
function StopLoss(percentage, positionId, direction) end

--- The optional parameters of StopLossROI.
--- @shape OptionalParametersOf_StopLossROI
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Calculates the defined position's current ROI percentage and gives a signal if the set loss is reached.
--- @param percentage number | number[] Stop loss ROI percentage. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the stop loss has been hit. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_StopLossROI): boolean
function StopLossROI(percentage, positionId, direction) end

--- The optional parameters of TakeProfit.
--- @shape OptionalParametersOf_TakeProfit
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Calculates the current percentage change from the average enter price and compares it with the take profit value.
--- @param percentage number | number[] Take profit percentage. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the take profit has been reached. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_TakeProfit): boolean
function TakeProfit(percentage, positionId, direction) end

--- The optional parameters of TakeProfitROI.
--- @shape OptionalParametersOf_TakeProfitROI
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Calculates the defined position's current ROI percentage and gives a signal if the set profit is reached.
--- @param percentage number | number[] Take profit ROI percentage. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the take profit has been reached. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_TakeProfitROI): boolean
function TakeProfitROI(percentage, positionId, direction) end

--- The optional parameters of TrailingArmStopLoss.
--- @shape OptionalParametersOf_TrailingArmStopLoss
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Keeps track of the highest/lowest recorded price and adjust the stop loss accordingly when the arm% has been reached.
--- @param percentage number | number[] Trailing stop loss percentage. Suggestions: Input
--- @param arm number | number[] The Arm percentage. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the stop loss has been hit. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[], arm: number | number[]): boolean
--- @overload fun(percentage: number | number[], arm: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], arm: number | number[], optionalParameters: OptionalParametersOf_TrailingArmStopLoss): boolean
function TrailingArmStopLoss(percentage, arm, positionId, direction) end

--- The optional parameters of TrailingStopLoss.
--- @shape OptionalParametersOf_TrailingStopLoss
--- @field positionId string | nil Optional unique identifier. Required when the bot is trading multiple position at once.
--- @field direction Enum | nil The direction of the position. PositionLong or PositionShort. By default both.

--- Keeps track of the highest/lowest recorded price and adjust the stop loss accordingly.
--- @param percentage number | number[] Trailing stop loss percentage. Suggestions: Input
--- @param positionId string Optional - Optional unique identifier. Required when the bot is trading multiple position at once. Suggestions: Load
--- @param direction Enum Optional - The direction of the position. PositionLong or PositionShort. By default both. Suggestions: PositionBought, PositionLong, PositionShort, PositionSold, NoPosition
--- @return boolean Returns true if the stop loss has been hit. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, SafetyContainer
--- @overload fun(percentage: number | number[]): boolean
--- @overload fun(percentage: number | number[], positionId: string): boolean
--- @overload fun(percentage: number | number[], optionalParameters: OptionalParametersOf_TrailingStopLoss): boolean
function TrailingStopLoss(percentage, positionId, direction) end

