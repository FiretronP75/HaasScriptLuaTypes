--- Array Helpers

--- Adds an element to an existing array.
--- @param input any Source data.
--- @param element any Element which to add to the array.
--- @return any Returns the input array.
function ArrayAdd(input, element) end

--- The optional parameters of ArrayAny.
--- @shape OptionalParametersOf_ArrayAny
--- @field value any | nil Optional value to match.

--- Returns true if the array contains any element or an element matches a specific value.
--- @param input any Source data.
--- @param value any Optional - Optional value to match.
--- @return boolean Returns true if the input has any elements or if 'value' is defined when any of the elements matches the value. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(input: any): boolean
--- @overload fun(input: any, optionalParameters: OptionalParametersOf_ArrayAny): boolean
function ArrayAny(input, value) end

--- Concatenates two arrays.
--- @param array1 any First array.
--- @param array2 any Second array.
--- @return any Returns the concatenated array.
function ArrayConcat(array1, array2) end

--- The optional parameters of ArrayContains.
--- @shape OptionalParametersOf_ArrayContains
--- @field value any | nil Optional value to match.

--- Returns true if the array contains any element or an element matches a specific value.
--- @param input any Source data.
--- @param value any Optional - Optional value to match.
--- @return boolean Returns true if the input has any elements or if 'value' is defined when any of the elements matches the value. Output Suggestions: Or, And, IsTrue, IsFalse, Not, BoolToSignal, IfElse, Switch, IfElseIf, DoBuy, DoLong, DoSell, DoShort, DoExitPosition, DoFlipPosition, DoSignal, PlaceBuyOrder, PlaceSellOrder, PlaceGoLongOrder, PlaceGoShortOrder, PlaceExitLongOrder, PlaceExitShortOrder, PlaceExitPositionOrder, PlaceCancelledOrder
--- @overload fun(input: any): boolean
--- @overload fun(input: any, optionalParameters: OptionalParametersOf_ArrayContains): boolean
function ArrayContains(input, value) end

--- Returns a new list with only unique elements. In other words; removes all duplicates.
--- @param input any Source data.
--- @return any Returns the unique values of the input.
function ArrayDistinct(input) end

--- The optional parameters of ArrayFilter.
--- @shape OptionalParametersOf_ArrayFilter
--- @field filterType Enum | nil The type of filter to use. Default is ArrayFilterInclusiveType.

--- Returns a new list with elements that only matches the value. Matching-rules specified by filterType.
--- @param input any Source data.
--- @param value any Value to match.
--- @param filterType Enum Optional - The type of filter to use. Default is ArrayFilterInclusiveType. Suggestions: ArrayFilterInclusiveType, ArrayFilterExclusiveType, ArrayFilterLessThanType, ArrayFilterGreaterThanType
--- @return any Returns the list.
--- @overload fun(input: any, value: any): any
--- @overload fun(input: any, value: any, optionalParameters: OptionalParametersOf_ArrayFilter): any
function ArrayFilter(input, value, filterType) end

--- The optional parameters of ArrayFind.
--- @shape OptionalParametersOf_ArrayFind
--- @field filterType Enum | nil The type of filter to use. Default is ArrayFilterInclusiveType.

--- Returns a new list of indices of the matching values. Matching-rules specified by filterType.
--- @param input any Source data.
--- @param value any Value to match.
--- @param filterType Enum Optional - The type of filter to use. Default is ArrayFilterInclusiveType. Suggestions: ArrayFilterInclusiveType, ArrayFilterExclusiveType, ArrayFilterLessThanType, ArrayFilterGreaterThanType
--- @return any Returns the list.
--- @overload fun(input: any, value: any): any
--- @overload fun(input: any, value: any, optionalParameters: OptionalParametersOf_ArrayFind): any
function ArrayFind(input, value, filterType) end

--- Gets the value on a specific index. A negative index will take from the end of the array.
--- @param input any Source data.
--- @param index number The index to get. Suggestions: Input
--- @return any Return the value on that index. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function ArrayGet(input, index) end

--- Gets the value on a specific index. A negative index will take from the end of the array.
--- @param input any Source data.
--- @param index number The index to get. Suggestions: Input
--- @return any Return the value on that index. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function ArrayIndex(input, index) end

--- The optional parameters of ArrayLast.
--- @shape OptionalParametersOf_ArrayLast
--- @field offset number | nil The offset from the last index.

--- Gets the last value of the array with an optional offset.
--- @param input any Source data.
--- @param offset number Optional - The offset from the last index. Suggestions: Input
--- @return any Return the last value of the array taking the offset into account. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input: any): any
--- @overload fun(input: any, optionalParameters: OptionalParametersOf_ArrayLast): any
function ArrayLast(input, offset) end

--- Remove an item from the end of an array.
--- @param input any Source data.
--- @return any Returns the input array.
function ArrayPop(input) end

--- Removes an element from a specified index.
--- @param input any Source data.
--- @param index number Index of the element to remove. Suggestions: Input
--- @return any Returns the input array.
function ArrayRemove(input, index) end

--- Replaces a specific value with another value.
--- @param input any Source data.
--- @param oldValue any The old value.
--- @param newValue any The new value.
--- @return any The input with replaced values.
function ArrayReplace(input, oldValue, newValue) end

--- Remove an item from the beginning of an array.
--- @param input any Source data.
--- @return any The input without the first value
function ArrayShift(input) end

--- The optional parameters of ArraySort.
--- @shape OptionalParametersOf_ArraySort
--- @field descendValueing boolean | nil The order of the sort. If set to true, order will be descending. Otherwise ascending.

--- Sorts the array values in ascending or descending order.
--- @param input any Source data.
--- @param descendValueing boolean Optional - The order of the sort. If set to true, order will be descending. Otherwise ascending. Suggestions: And, IsTrue, IsFalse, Not, Or, Equals, IsBiggerThan, IsSmallerThan, IsBiggerOrSmallerThan, IsAnyOrderOpen, IsOrderFilled, IsOrderOpen, IsTradeAmountEnough
--- @return any Returns the sorted array.
--- @overload fun(input: any): any
--- @overload fun(input: any, optionalParameters: OptionalParametersOf_ArraySort): any
function ArraySort(input, descendValueing) end

--- The optional parameters of ArraySum.
--- @shape OptionalParametersOf_ArraySum
--- @field key string | nil The key of the data to be summed.

--- Computes the sum of the array. Can be used in combination with a list of numbers or container results like GetAllOpenOrders() or GetAllFinishedOrders().
--- @param input any Source data.
--- @param key string Optional - The key of the data to be summed.
--- @return number Returns the sum of the array. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input: any): number
--- @overload fun(input: any, optionalParameters: OptionalParametersOf_ArraySum): number
function ArraySum(input, key) end

--- Adds an element to the beginning of an array.
--- @param input any Source data.
--- @param element any Element which to add to the array.
--- @return any The input with the element added in front of the array
function ArrayUnshift(input, element) end

--- The optional parameters of Count.
--- @shape OptionalParametersOf_Count
--- @field value any | nil Optional value to match.

--- Gets the length of an array or the number of occurrences within the array of a specific value.
--- @param input any Source data.
--- @param value any Optional - Optional value to match.
--- @return number Returns the length of an array or the number of occurrences within the array of a specific value. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(input: any): number
--- @overload fun(input: any, optionalParameters: OptionalParametersOf_Count): number
function Count(input, value) end

--- The optional parameters of Grab.
--- @shape OptionalParametersOf_Grab
--- @field count number | nil Number of items to grab.

--- Grabs a range from the array. If count is not set, return all after the offset.
--- @param input any Source data.
--- @param offset number Offset from start. Suggestions: Input
--- @param count number Optional - Number of items to grab. Suggestions: Input
--- @return any Specified range from the array.
--- @overload fun(input: any, offset: number): any
--- @overload fun(input: any, offset: number, optionalParameters: OptionalParametersOf_Grab): any
function Grab(input, offset, count) end

--- Gets an offset amount of the given array.
--- @param input any Source data.
--- @param offset number Number of record to remove. Suggestions: Input
--- @return any Returns the given array with the offset amount of data removed from it.
function Offset(input, offset) end

--- The optional parameters of Range.
--- @shape OptionalParametersOf_Range
--- @field count number | nil Number of items to grab.

--- Grabs a range from the array. If count is not set, return all after the offset.
--- @param input any Source data.
--- @param offset number Offset from start. Suggestions: Input
--- @param count number Optional - Number of items to grab. Suggestions: Input
--- @return any Specified range from the array.
--- @overload fun(input: any, offset: number): any
--- @overload fun(input: any, offset: number, optionalParameters: OptionalParametersOf_Range): any
function Range(input, offset, count) end

--- The optional parameters of SourceManager.
--- @shape OptionalParametersOf_SourceManager
--- @field interval number | nil The interval on which the data is based. Default is the selected main interval.
--- @field cap number | nil Maximum size of the collection.
--- @field initialValues number[] | nil The initial values when source in initialized

--- Stores numeric values in a collection. Only adds the new value when the candle on the specified interval closed. This results in interval based data.
--- @param newValue number This value will be added in front of the collection when the candle closed.
--- @param interval number Optional - The interval on which the data is based. Default is the selected main interval. Suggestions: InputInterval, CurrentInterval
--- @param cap number Optional - Maximum size of the collection.
--- @param initialValues number[] Optional - The initial values when source in initialized
--- @return number[] Returns the numeric collection. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(newValue: number): number[]
--- @overload fun(newValue: number, interval: number): number[]
--- @overload fun(newValue: number, interval: number, cap: number): number[]
--- @overload fun(newValue: number, optionalParameters: OptionalParametersOf_SourceManager): number[]
function SourceManager(newValue, interval, cap, initialValues) end

