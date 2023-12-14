--- Technical Analysis Helpers

--- Checks if a crossover occurs between value1 and value2.
--- @param value1 number | number[] | table Source value(s) 1.
--- @param value2 number | number[] | table Source value(s) 2.
--- @return boolean Returns true if a crossover occurs between value1 and value2. Otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function CrossOver(value1, value2) end

--- Calculates the number of ticks since the last crossover.
--- @param value1 number | number[] | table Source value(s) 1.
--- @param value2 number | number[] | table Source value(s) 2.
--- @return number | number[] Returns the number of ticks since the last crossover. Return value of 1 represents the crossunder happening 'now'. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function CrossOverSince(value1, value2) end

--- Checks if a crossunder occurs between value1 and value2.
--- @param value1 number | number[] | table Source value(s) 1.
--- @param value2 number | number[] | table Source value(s) 2.
--- @return boolean Returns true if a crossunder occurs between value1 and value2. Otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function CrossUnder(value1, value2) end

--- Calculates the number of ticks since the last crossunder.
--- @param value1 number | number[] | table Source value(s) 1.
--- @param value2 number | number[] | table Source value(s) 2.
--- @return number | number[] Returns the number of ticks since the last crossunder. Return value of 1 represents the crossunder happening 'now'. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function CrossUnderSince(value1, value2) end

--- Calculates the amount of swing in percentages.
--- @param input1 number | number[] | table Source value(s) 1.
--- @param input2 number | number[] | table Source value(s) 2.
--- @return number[] Returns the amount of swing in percentages. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function GetSwing(input1, input2) end

--- Checks if the values are decreasing towards the newest within the lookback period.
--- @param array number[] Source values.
--- @param lookback number | number[] Lookback value. Suggestions: Input
--- @return boolean Returns true if the values are decreasing towards the newest within the lookback period. Otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsFalling(array, lookback) end

--- Counts the number of falling ticks.
--- @param array number[] Source values.
--- @param lookback number | number[] Lookback value. Suggestions: Input
--- @return number | number[] Returns the number of ticks the data is falling. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function IsFallingSince(array, lookback) end

--- Checks if the values are increasing towards the newest within the lookback period.
--- @param array number[] Source values.
--- @param lookback number | number[] Lookback value. Suggestions: Input
--- @return boolean Returns true if the values are increasing towards the newest within the lookback period. Otherwise false. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
function IsRising(array, lookback) end

--- Counts the number of rising ticks.
--- @param array number[] Source values.
--- @param lookback number | number[] Lookback value. Suggestions: Input
--- @return number | number[] Returns the number of ticks the data is rising. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function IsRisingSince(array, lookback) end

