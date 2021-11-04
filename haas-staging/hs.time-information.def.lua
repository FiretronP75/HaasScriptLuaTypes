--- Time Information

--- The optional parameters of AdjustTimestamp.
--- @shape OptionalParametersOf_AdjustTimestamp
--- @field unix number | nil The unix timestamp, by default the current time..
--- @field addSeconds number | nil Number of seconds to add.
--- @field addMinutes number | nil Number of minutes to add.
--- @field addHours number | nil Number of hours to add.
--- @field addDays number | nil Number of days to add.
--- @field addMonths number | nil Number of months to add.
--- @field addYears number | nil Number of years to add.

--- Adjusts an Unix timestamp.
--- @param unix number Optional - The unix timestamp, by default the current time.. Suggestions: Input
--- @param addSeconds number Optional - Number of seconds to add. Suggestions: Input
--- @param addMinutes number Optional - Number of minutes to add. Suggestions: Input
--- @param addHours number Optional - Number of hours to add. Suggestions: Input
--- @param addDays number Optional - Number of days to add. Suggestions: Input
--- @param addMonths number Optional - Number of months to add. Suggestions: Input
--- @param addYears number Optional - Number of years to add. Suggestions: Input
--- @return number Returns the new Unix timestamp. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(unix: number): number
--- @overload fun(unix: number, addSeconds: number): number
--- @overload fun(unix: number, addSeconds: number, addMinutes: number): number
--- @overload fun(unix: number, addSeconds: number, addMinutes: number, addHours: number): number
--- @overload fun(unix: number, addSeconds: number, addMinutes: number, addHours: number, addDays: number): number
--- @overload fun(unix: number, addSeconds: number, addMinutes: number, addHours: number, addDays: number, addMonths: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_AdjustTimestamp): number
function AdjustTimestamp(unix, addSeconds, addMinutes, addHours, addDays, addMonths, addYears) end

--- Converts a timestamps to the close timestamp of the candle.
--- @param unix number The timestamp to round. Set on 0 for current. Suggestions: Input
--- @param interval number The interval on which the candle is build. Suggestions: InputInterval, CurrentInterval
--- @return number Returns the close timestamp of the candle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function CloseTime(unix, interval) end

--- The optional parameters of CreateTimestamp.
--- @shape OptionalParametersOf_CreateTimestamp
--- @field year number | nil The year of the timestamp, by default the current time.
--- @field month number | nil The month of the timestamp, by default the current time.
--- @field day number | nil The date of the timestamp, by default the current time.
--- @field hour number | nil The hour of the timestamp, by default the current time.
--- @field minute number | nil The minute of the timestamp, by default the current time.
--- @field second number | nil The seconds of the timestamp, by default the current time.

--- Creates an Unix timestamp from the specified value.
--- @param year number Optional - The year of the timestamp, by default the current time. Suggestions: Input
--- @param month number Optional - The month of the timestamp, by default the current time. Suggestions: Input
--- @param day number Optional - The date of the timestamp, by default the current time. Suggestions: Input
--- @param hour number Optional - The hour of the timestamp, by default the current time. Suggestions: Input
--- @param minute number Optional - The minute of the timestamp, by default the current time. Suggestions: Input
--- @param second number Optional - The seconds of the timestamp, by default the current time. Suggestions: Input
--- @return number Returns the Unix timestamp. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(year: number): number
--- @overload fun(year: number, month: number): number
--- @overload fun(year: number, month: number, day: number): number
--- @overload fun(year: number, month: number, day: number, hour: number): number
--- @overload fun(year: number, month: number, day: number, hour: number, minute: number): number
--- @overload fun(optionalParameters: OptionalParametersOf_CreateTimestamp): number
function CreateTimestamp(year, month, day, hour, minute, second) end

--- The optional parameters of CurrentDate.
--- @shape OptionalParametersOf_CurrentDate
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the date of the month of the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the date of the month value. A number from 1 to 31. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentDate): number
function CurrentDate(unix) end

--- The optional parameters of CurrentDay.
--- @shape OptionalParametersOf_CurrentDay
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the day of the week of the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the day of the week value. A number from 1 to 7, starting on Sunday. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentDay): number
function CurrentDay(unix) end

--- The optional parameters of CurrentHour.
--- @shape OptionalParametersOf_CurrentHour
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the hour the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the hour value. A number from 0 to 23. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentHour): number
function CurrentHour(unix) end

--- The optional parameters of CurrentMinute.
--- @shape OptionalParametersOf_CurrentMinute
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the minute the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the minute value. A number from 0 to 59. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentMinute): number
function CurrentMinute(unix) end

--- The optional parameters of CurrentMonth.
--- @shape OptionalParametersOf_CurrentMonth
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the month of the year of the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the month of the year value. A number from 1 to 12. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentMonth): number
function CurrentMonth(unix) end

--- The optional parameters of CurrentSecond.
--- @shape OptionalParametersOf_CurrentSecond
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the second the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the second value. A number from 0 to 59. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentSecond): number
function CurrentSecond(unix) end

--- The optional parameters of CurrentWeek.
--- @shape OptionalParametersOf_CurrentWeek
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the week of the year of the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the week of the year value. A number from 1 to 53. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentWeek): number
function CurrentWeek(unix) end

--- The optional parameters of CurrentYear.
--- @shape OptionalParametersOf_CurrentYear
--- @field unix number | nil An unix timestamp, by default the current time.

--- Gets the year the current time or requested time. Based on UTC.
--- @param unix number Optional - An unix timestamp, by default the current time. Suggestions: Input
--- @return number Returns the year. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_CurrentYear): number
function CurrentYear(unix) end

--- The optional parameters of FormatDateTime.
--- @shape OptionalParametersOf_FormatDateTime
--- @field unix number | nil The unix datetime number to format.
--- @field dateDelimiter string | nil The characters between the year and month, and between the month and day.
--- @field dateTimeDelimiter string | nil The characters between the date and time.
--- @field timeDelimiter string | nil The characters between the hour and minute, and between the minute and second.
--- @field includeSeconds boolean | nil If true, the seconds will be included in the formatted time.
--- @field includeTime boolean | nil If true, the formatted time will be included.
--- @field includeYear boolean | nil If true, the year will be included in the formatted date.

--- Formats a unix datetime number (to "YYYY-MM-DD at HH:MM" by default).
--- @param unix number Optional - The unix datetime number to format. Suggestions: FormatDateTime, Time
--- @param dateDelimiter string Optional - The characters between the year and month, and between the month and day.
--- @param dateTimeDelimiter string Optional - The characters between the date and time.
--- @param timeDelimiter string Optional - The characters between the hour and minute, and between the minute and second.
--- @param includeSeconds boolean Optional - If true, the seconds will be included in the formatted time.
--- @param includeTime boolean Optional - If true, the formatted time will be included.
--- @param includeYear boolean Optional - If true, the year will be included in the formatted date.
--- @return string The formatted unix datetime number. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(): string
--- @overload fun(unix: number): string
--- @overload fun(unix: number, dateDelimiter: string): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string, timeDelimiter: string): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string, timeDelimiter: string, includeSeconds: boolean): string
--- @overload fun(unix: number, dateDelimiter: string, dateTimeDelimiter: string, timeDelimiter: string, includeSeconds: boolean, includeTime: boolean): string
--- @overload fun(optionalParameters: OptionalParametersOf_FormatDateTime): string
function FormatDateTime(unix, dateDelimiter, dateTimeDelimiter, timeDelimiter, includeSeconds, includeTime, includeYear) end

--- The optional parameters of GetTimer.
--- @shape OptionalParametersOf_GetTimer
--- @field key string | nil Optional key if using multiple timers.

--- Gets the elapsed time for a timer.
--- @param key string Optional - Optional key if using multiple timers. Suggestions: Input, Load
--- @return number Returns the elapsed time in milliseconds. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_GetTimer): number
function GetTimer(key) end

--- Calculates the number of minutes before a new candle opens.
--- @param interval number Interval in minutes. Suggestions: InputInterval, CurrentInterval
--- @return number Returns the number of minutes before a new candle opens. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function MinutesTillCandleClose(interval) end

--- Converts a timestamps to the open timestamp of the candle
--- @param unix number The timestamp to round. Set on 0 for current. Suggestions: Input
--- @param interval number The interval on which the candle is build. Suggestions: InputInterval, CurrentInterval
--- @return number Returns the open timestamp of the candle. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function OpenTime(unix, interval) end

--- The optional parameters of StartTimer.
--- @shape OptionalParametersOf_StartTimer
--- @field key string | nil Optional key if using multiple timers.

--- Starts a timer.
--- @param key string Optional - Optional key if using multiple timers. Suggestions: Input, Load
--- @return void
--- @overload fun(): void
--- @overload fun(optionalParameters: OptionalParametersOf_StartTimer): void
function StartTimer(key) end

--- The optional parameters of StopTimer.
--- @shape OptionalParametersOf_StopTimer
--- @field key string | nil Optional key if using multiple timers.

--- Stops a timer.
--- @param key string Optional - Optional key if using multiple timers. Suggestions: Input, Load
--- @return number Returns the elapsed time in milliseconds. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
--- @overload fun(): number
--- @overload fun(optionalParameters: OptionalParametersOf_StopTimer): number
function StopTimer(key) end

--- Gets the current unix timestamp. Based on UTC.
--- @return number Returns the current unix timestamp. Output Suggestions: Equals, IsBiggerOrSmallerThan, IsSmallerThan, IsBiggerThan, Compare, Add, Sum, Sub, Mul, Mult, Div, AddPerc, AddPercentage, SubPerc, SubPercentage, Plot
function Time() end

