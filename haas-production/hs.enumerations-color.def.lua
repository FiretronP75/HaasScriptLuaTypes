--- Enumerations Color

--- The optional parameters of Aqua.
--- @shape OptionalParametersOf_Aqua
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Aqua, Aqua() or with a specific opacity Aqua(10).
--- @class Aqua : ColorEnum
--- @return string Returns hex string of aqua (#00FFFF). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Aqua): string
--- @overload fun(opacity: number): string
Aqua = {}

--- The optional parameters of Black.
--- @shape OptionalParametersOf_Black
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Black, Black() or with a specific opacity Black(10).
--- @class Black : ColorEnum
--- @return string Returns hex string of black (#000000). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Black): string
--- @overload fun(opacity: number): string
Black = {}

--- The optional parameters of Blue.
--- @shape OptionalParametersOf_Blue
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Blue, Blue() or with a specific opacity Blue(10).
--- @class Blue : ColorEnum
--- @return string Returns hex string of blue (#0000CC). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Blue): string
--- @overload fun(opacity: number): string
Blue = {}

--- The optional parameters of Color.
--- @shape OptionalParametersOf_Color
--- @field a number | nil The alpha component value for the new color. Valid values are 0 through 255.

--- Creates an RGBA color string.
--- @param r number The red component value for the new color. Valid values are 0 through 255. Suggestions: Input
--- @param g number The green component value for the new color. Valid values are 0 through 255. Suggestions: Input
--- @param b number The blue component value for the new color. Valid values are 0 through 255. Suggestions: Input
--- @param a number Optional - The alpha component value for the new color. Valid values are 0 through 255. Suggestions: Input
--- @return string Returns an RGBA color string. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString
--- @overload fun(r: number, g: number, b: number): string
--- @overload fun(r: number, g: number, b: number, optionalParameters: OptionalParametersOf_Color): string
function Color(r, g, b, a) end

--- The optional parameters of Cyan.
--- @shape OptionalParametersOf_Cyan
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Cyan, Cyan() or with a specific opacity Cyan(10).
--- @class Cyan : ColorEnum
--- @return string Returns hex string of cyan (#00CCCC). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Cyan): string
--- @overload fun(opacity: number): string
Cyan = {}

--- The optional parameters of DarkGray.
--- @shape OptionalParametersOf_DarkGray
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as DarkGray, DarkGray() or with a specific opacity DarkGray(10).
--- @class DarkGray : ColorEnum
--- @return string Returns hex string of darkgray (#808080). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_DarkGray): string
--- @overload fun(opacity: number): string
DarkGray = {}

--- The optional parameters of DarkGreen.
--- @shape OptionalParametersOf_DarkGreen
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as DarkGreen, DarkGreen() or with a specific opacity DarkGreen(10).
--- @class DarkGreen : ColorEnum
--- @return string Returns hex string of darkgreen (#008000). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_DarkGreen): string
--- @overload fun(opacity: number): string
DarkGreen = {}

--- The optional parameters of Fuchsia.
--- @shape OptionalParametersOf_Fuchsia
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Fuchsia, Fuchsia() or with a specific opacity Fuchsia(10).
--- @class Fuchsia : ColorEnum
--- @return string Returns hex string of fuchsia (#FF00FF). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Fuchsia): string
--- @overload fun(opacity: number): string
Fuchsia = {}

--- The optional parameters of Gold.
--- @shape OptionalParametersOf_Gold
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Gold, Gold() or with a specific opacity Gold(10).
--- @class Gold : ColorEnum
--- @return string Returns hex string of gold (#CC9900). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Gold): string
--- @overload fun(opacity: number): string
Gold = {}

--- The optional parameters of Gray.
--- @shape OptionalParametersOf_Gray
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Gray, Gray() or with a specific opacity Gray(10).
--- @class Gray : ColorEnum
--- @return string Returns hex string of gray (#C0C0C0). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Gray): string
--- @overload fun(opacity: number): string
Gray = {}

--- The optional parameters of Green.
--- @shape OptionalParametersOf_Green
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Green, Green() or with a specific opacity Green(10).
--- @class Green : ColorEnum
--- @return string Returns hex string of green (#00FF00). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Green): string
--- @overload fun(opacity: number): string
Green = {}

--- The optional parameters of Maroon.
--- @shape OptionalParametersOf_Maroon
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Maroon, Maroon() or with a specific opacity Maroon(10).
--- @class Maroon : ColorEnum
--- @return string Returns hex string of maroon (#800000). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Maroon): string
--- @overload fun(opacity: number): string
Maroon = {}

--- The optional parameters of Olive.
--- @shape OptionalParametersOf_Olive
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Olive, Olive() or with a specific opacity Olive(10).
--- @class Olive : ColorEnum
--- @return string Returns hex string of olive (#808000). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Olive): string
--- @overload fun(opacity: number): string
Olive = {}

--- The optional parameters of Orange.
--- @shape OptionalParametersOf_Orange
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Orange, Orange() or with a specific opacity Orange(10).
--- @class Orange : ColorEnum
--- @return string Returns hex string of orange (#FF8000). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Orange): string
--- @overload fun(opacity: number): string
Orange = {}

--- The optional parameters of Purple.
--- @shape OptionalParametersOf_Purple
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Purple, Purple() or with a specific opacity Purple(10).
--- @class Purple : ColorEnum
--- @return string Returns hex string of purple (#FF1a8c). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Purple): string
--- @overload fun(opacity: number): string
Purple = {}

--- The optional parameters of Red.
--- @shape OptionalParametersOf_Red
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Red, Red() or with a specific opacity Red(10).
--- @class Red : ColorEnum
--- @return string Returns hex string of red (#FF0000). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Red): string
--- @overload fun(opacity: number): string
Red = {}

--- The optional parameters of SkyBlue.
--- @shape OptionalParametersOf_SkyBlue
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as SkyBlue, SkyBlue() or with a specific opacity SkyBlue(10).
--- @class SkyBlue : ColorEnum
--- @return string Returns hex string of skyblue (#33CCFF). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_SkyBlue): string
--- @overload fun(opacity: number): string
SkyBlue = {}

--- The optional parameters of Teal.
--- @shape OptionalParametersOf_Teal
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Teal, Teal() or with a specific opacity Teal(10).
--- @class Teal : ColorEnum
--- @return string Returns hex string of teal (#008080). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Teal): string
--- @overload fun(opacity: number): string
Teal = {}

--- The optional parameters of White.
--- @shape OptionalParametersOf_White
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as White, White() or with a specific opacity White(10).
--- @class White : ColorEnum
--- @return string Returns hex string of white (#FFFFFF). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_White): string
--- @overload fun(opacity: number): string
White = {}

--- The optional parameters of Yellow.
--- @shape OptionalParametersOf_Yellow
--- @field opacity number | nil The color opacity, 0-100. By default 100.

--- Enumeration, returns a color hex string. Can be used as Yellow, Yellow() or with a specific opacity Yellow(10).
--- @class Yellow : ColorEnum
--- @return string Returns hex string of yellow (#FFFF00). Output Suggestions: Plot, LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone, ChangeColorOpacity
--- @overload fun(): string
--- @overload fun(optionalParameters: OptionalParametersOf_Yellow): string
--- @overload fun(opacity: number): string
Yellow = {}

