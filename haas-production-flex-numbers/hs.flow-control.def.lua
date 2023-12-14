--- Flow Control

--- Will return 1 of 2 values based on the input boolean.
--- @param statement boolean Input boolean to check. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param value1 any If true, this value is passed on.
--- @param value2 any If false, this value is passed on.
--- @return any Return the first value if true or the second value when false. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function IfElse(statement, value1, value2) end

--- IfElseIf returns a value based on the boolean inputs.
--- @param statement1 boolean Statement one. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param statement2 boolean Statement two. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param value1 any Value1, returns if statement1 is valid.
--- @param value2 any Value2, returns if statement2 is valid.
--- @param value3 any Value3, returns is statement 1 and 2 are invalid.
--- @return any Return the first value if statement1 is true, return the second value if statement2 is true, or returns value3 when all statements are invalid. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function IfElseIf(statement1, statement2, value1, value2, value3) end

--- Will return 1 of 2 values based on the input boolean.
--- @param statement boolean Input boolean to check. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @param value1 any If true, this value is passed on.
--- @param value2 any If false, this value is passed on.
--- @return any Return the first value if true or the second value when false. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Switch(statement, value1, value2) end

