--- Charting

--- Converts HEX to RGBA with opacity.
--- @param color string | ColorEnum Color string in format: hex (#000000), rgba(r,g,b,a) or rgb(r,g,b). Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow
--- @param opacity number Opacity level from 0 - 100.
--- @return string Returns a RGBA color string. Output Suggestions: LineOptions, PlotHorizontalLine, PlotHorizontalZone, PlotVerticalLine, PlotVerticalZone
function ChangeColorOpacity(color, opacity) end

--- The optional parameters of ChartAddAxisLabel.
--- @shape OptionalParametersOf_ChartAddAxisLabel
--- @field color string | nil The label fill color.
--- @field textColor string | nil The text color.

--- Adds a label on the y-axis.
--- @param chartId number The chart index on which to add the label.
--- @param side Enum The axis side on which to add the label. Suggestions: RightAxis, LeftAxis
--- @param text string The text on the label.
--- @param value number The y-axis value on which to place the label. Suggestions: Input
--- @param color string | ColorEnum Optional - The label fill color. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param textColor string | ColorEnum Optional - The text color. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
--- @overload fun(chartId: number, side: Enum, text: string, value: number): void
--- @overload fun(chartId: number, side: Enum, text: string, value: number, color: string | ColorEnum): void
--- @overload fun(chartId: number, side: Enum, text: string, value: number, optionalParameters: OptionalParametersOf_ChartAddAxisLabel): void
function ChartAddAxisLabel(chartId, side, text, value, color, textColor) end

--- The optional parameters of ChartSetAxisOptions.
--- @shape OptionalParametersOf_ChartSetAxisOptions
--- @field low number | nil Low prices array.
--- @field high number | nil High prices array.
--- @field visible boolean | nil Set axis visible/hidden.
--- @field type Enum | nil Set axis type.

--- Gives control over axis settings such as low, high and visibility.
--- @param chartId number The chart index on which to apply the settings.
--- @param side Enum The side of the chart on which to apply the settings. Suggestions: RightAxis, LeftAxis
--- @param low number Optional - Low prices array.
--- @param high number Optional - High prices array.
--- @param visible boolean Optional - Set axis visible/hidden.
--- @param type Enum Optional - Set axis type. Suggestions: LeftAxis, RightAxis
--- @return void
--- @overload fun(chartId: number, side: Enum): void
--- @overload fun(chartId: number, side: Enum, low: number): void
--- @overload fun(chartId: number, side: Enum, low: number, high: number): void
--- @overload fun(chartId: number, side: Enum, low: number, high: number, visible: boolean): void
--- @overload fun(chartId: number, side: Enum, optionalParameters: OptionalParametersOf_ChartSetAxisOptions): void
function ChartSetAxisOptions(chartId, side, low, high, visible, type) end

--- The optional parameters of ChartSetOptions.
--- @shape OptionalParametersOf_ChartSetOptions
--- @field title string | nil Chart title.
--- @field height number | nil Chart height. Below 1 will be treated as percentage (0.5-50%).
--- @field style Enum | nil Price plot style.

--- Gives control over chart options such as title and height.
--- @param chartId number The chart index on which to apply the options.
--- @param title string Optional - Chart title.
--- @param height number Optional - Chart height. Below 1 will be treated as percentage (0.5-50%).
--- @param style Enum Optional - Price plot style. Suggestions: Candlestick, CandlestickHLC, CloseLine, HLC, OHLC, Mountain, Line, HeikinAshi, Spread, SpreadCandle
--- @return void
--- @overload fun(chartId: number): void
--- @overload fun(chartId: number, title: string): void
--- @overload fun(chartId: number, title: string, height: number): void
--- @overload fun(chartId: number, optionalParameters: OptionalParametersOf_ChartSetOptions): void
function ChartSetOptions(chartId, title, height, style) end

--- The optional parameters of LineOptions.
--- @shape OptionalParametersOf_LineOptions
--- @field color string | nil The color of the line.
--- @field style Enum | nil The style of the line (Spiked, Smooth, Step and others).
--- @field deco Enum | nil The line decoration (Solid, Dashed, Dotted).
--- @field width number | nil The width of the line.
--- @field offset number | nil A positive offset will move the data points x number of candles. A negative number will move the data points back.
--- @field side Enum | nil Axis side to snap on.
--- @field id string | nil Unique identifier.
--- @field behind boolean | nil If true, the line will be plotted behind the price chart, if enabled.
--- @field ignoreOnAxis boolean | nil If true, the line will not be taken into consideration when calculating the range on the y-axis.
--- @field drawTrailingLine boolean | nil If true, a dotted line will be drawn from the last data point to the y-axis.

--- Creates a line options object to be used for Plot().
--- @param color string | ColorEnum Optional - The color of the line. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param style Enum Optional - The style of the line (Spiked, Smooth, Step and others). Suggestions: Spiked, Smooth, Step, StepAfter, StepBefore
--- @param deco Enum Optional - The line decoration (Solid, Dashed, Dotted). Suggestions: Solid, Dashed, Dotted
--- @param width number Optional - The width of the line.
--- @param offset number Optional - A positive offset will move the data points x number of candles. A negative number will move the data points back. Suggestions: Input
--- @param side Enum Optional - Axis side to snap on. Suggestions: RightAxis, LeftAxis
--- @param id string Optional - Unique identifier. Suggestions: Load, NewGuid
--- @param behind boolean Optional - If true, the line will be plotted behind the price chart, if enabled.
--- @param ignoreOnAxis boolean Optional - If true, the line will not be taken into consideration when calculating the range on the y-axis.
--- @param drawTrailingLine boolean Optional - If true, a dotted line will be drawn from the last data point to the y-axis.
--- @return any Creates a line options object. Output Suggestions: Plot
--- @overload fun(): any
--- @overload fun(color: string | ColorEnum): any
--- @overload fun(color: string | ColorEnum, style: Enum): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum, width: number): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum, width: number, offset: number): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum, width: number, offset: number, side: Enum): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum, width: number, offset: number, side: Enum, id: string): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum, width: number, offset: number, side: Enum, id: string, behind: boolean): any
--- @overload fun(color: string | ColorEnum, style: Enum, deco: Enum, width: number, offset: number, side: Enum, id: string, behind: boolean, ignoreOnAxis: boolean): any
--- @overload fun(optionalParameters: OptionalParametersOf_LineOptions): any
function LineOptions(color, style, deco, width, offset, side, id, behind, ignoreOnAxis, drawTrailingLine) end

--- The optional parameters of MarkCandle.
--- @shape OptionalParametersOf_MarkCandle
--- @field depth number | nil Amount of candles to mark.

--- Changes the color of a single candle.
--- @param chartId number The chart index on which to mark the candle.
--- @param depth number Optional - Amount of candles to mark.
--- @return void
--- @overload fun(chartId: number): void
--- @overload fun(chartId: number, optionalParameters: OptionalParametersOf_MarkCandle): void
function MarkCandle(chartId, depth) end

--- The optional parameters of Plot.
--- @shape OptionalParametersOf_Plot
--- @field colorOrOptions any | nil Line options object or a color string.

--- Creates a data line on the chart. The line can be styled accordingly. A positive chartId will place the line below the main price chart. A negative index above.
--- @param chartId number Index on which to plot the line.
--- @param lineName string The name of the lines. This needs to be unique per index.
--- @param value number | table Value of the data point.
--- @param colorOrOptions any | ColorEnum Optional - Line options object or a color string. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity, LineOptions
--- @return string Returns a line guid which can be used to manipulate the style. Output Suggestions: StringContains, StringExplode, StringSplit, StringFromQuery, StringIndexOf, StringJoin, SubString, PlotBands, PlotBars, PlotDoubleColor, PlotHistogram, PlotCircle, PlotCloud, PlotStackedArea
--- @overload fun(chartId: number, lineName: string, value: number | table): string
--- @overload fun(chartId: number, lineName: string, value: number | table, optionalParameters: OptionalParametersOf_Plot): string
function Plot(chartId, lineName, value, colorOrOptions) end

--- Creates a band between 2 lines.
--- @param lineGuid1 string The upper line guid returned by Plot(). Suggestions: Plot
--- @param lineGuid2 string The lower line guid returned by Plot(). Suggestions: Plot
--- @param fillColor string | ColorEnum Inner color of the bands. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
function PlotBands(lineGuid1, lineGuid2, fillColor) end

--- The optional parameters of PlotBars.
--- @shape OptionalParametersOf_PlotBars
--- @field baseValue number | nil The value from where the bars are drawn. Default is 0.
--- @field fillColor string | nil The inner color of the bars. Default is none.

--- Changes a line to bars.
--- @param lineGuid string Line guid returned by Plot(). Suggestions: Plot
--- @param baseValue number Optional - The value from where the bars are drawn. Default is 0.
--- @param fillColor string | ColorEnum Optional - The inner color of the bars. Default is none. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
--- @overload fun(lineGuid: string): void
--- @overload fun(lineGuid: string, baseValue: number): void
--- @overload fun(lineGuid: string, optionalParameters: OptionalParametersOf_PlotBars): void
function PlotBars(lineGuid, baseValue, fillColor) end

--- The optional parameters of PlotBBandsChart.
--- @shape OptionalParametersOf_PlotBBandsChart
--- @field lower number | table | nil Lower band data. Optional, if not set only a band is plotted.

--- Takes care of the plotting side of a BBANDS (like) calculation and chart.
--- @param chartIndex number Chart index on which to plot. Suggestions: Input
--- @param name string Name of the line. Suggestions: Input, Load
--- @param upper number | table Upper band data. Suggestions: ABANDS, BBANDS, DONCHIAN, KELTNER
--- @param middle number | table Middle or lower band data. Suggestions: ABANDS, BBANDS, DONCHIAN, KELTNER
--- @param lower number | table Optional - Lower band data. Optional, if not set only a band is plotted. Suggestions: ABANDS, BBANDS, DONCHIAN, KELTNER
--- @return void
--- @overload fun(chartIndex: number, name: string, upper: number | table, middle: number | table): void
--- @overload fun(chartIndex: number, name: string, upper: number | table, middle: number | table, optionalParameters: OptionalParametersOf_PlotBBandsChart): void
function PlotBBandsChart(chartIndex, name, upper, middle, lower) end

--- Draws a horizontal zone with buy and sell lines on the chart.
--- @param chartId number The chart index on which to plot the data.
--- @param start number The lowest value of the zone. Suggestions: Input
--- @param endValue number The highest value of the zone. Suggestions: Input
--- @return void
function PlotBuySellZone(chartId, start, endValue) end

--- The optional parameters of PlotCircle.
--- @shape OptionalParametersOf_PlotCircle
--- @field fillColor string | nil The inner color of the circles. Default is none.

--- Changes the line into circles.
--- @param lineGuid string Line guid returned by Plot(). Suggestions: Plot
--- @param fillColor string | ColorEnum Optional - The inner color of the circles. Default is none. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
--- @overload fun(lineGuid: string): void
--- @overload fun(lineGuid: string, optionalParameters: OptionalParametersOf_PlotCircle): void
function PlotCircle(lineGuid, fillColor) end

--- Creates a cloud with double colors between 2 lines.
--- @param lineGuid1 string The first line guid returned by Plot(). Suggestions: Plot
--- @param lineGuid2 string The second line guid returned by Plot(). Suggestions: Plot
--- @param opacity number The opacity of the inner cloud color.
--- @return void
function PlotCloud(lineGuid1, lineGuid2, opacity) end

--- The optional parameters of PlotDoubleColor.
--- @shape OptionalParametersOf_PlotDoubleColor
--- @field fillColor string | nil The inner color between the line and the base value. Default is none.

--- Changes the color of the line based on a base value.
--- @param lineGuid string Line guid returned by Plot(). Suggestions: Plot
--- @param baseValue number The value where the line changes color.
--- @param secondColor string | ColorEnum The color of the line below the base value. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param fillColor string | ColorEnum Optional - The inner color between the line and the base value. Default is none. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
--- @overload fun(lineGuid: string, baseValue: number, secondColor: string | ColorEnum): void
--- @overload fun(lineGuid: string, baseValue: number, secondColor: string | ColorEnum, optionalParameters: OptionalParametersOf_PlotDoubleColor): void
function PlotDoubleColor(lineGuid, baseValue, secondColor, fillColor) end

--- The optional parameters of PlotHistogram.
--- @shape OptionalParametersOf_PlotHistogram
--- @field fillRaisingBars boolean | nil Fills the raising bars. Default is false.

--- Change the line into a histogram.
--- @param lineGuid string Line guid returned by Plot(). Suggestions: Plot
--- @param secondColor string | ColorEnum The color of the negative bars. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param fillRaisingBars boolean Optional - Fills the raising bars. Default is false.
--- @return void
--- @overload fun(lineGuid: string, secondColor: string | ColorEnum): void
--- @overload fun(lineGuid: string, secondColor: string | ColorEnum, optionalParameters: OptionalParametersOf_PlotHistogram): void
function PlotHistogram(lineGuid, secondColor, fillRaisingBars) end

--- The optional parameters of PlotHistogramSignals.
--- @shape OptionalParametersOf_PlotHistogramSignals
--- @field shortSignal number | table | nil Optional, short data line.
--- @field longSignal number | table | nil Optional, long data line.

--- Takes care of the plotting side of a MACD (like) calculation and chart.
--- @param chartIndex number Chart index on which to plot. Suggestions: Input
--- @param name string Name of the line. Suggestions: Input, Load
--- @param histogram number | table Histogram data. Suggestions: MACD, MACDEXT, MACDFIX
--- @param shortSignal number | table Optional - Optional, short data line. Suggestions: MACD, MACDEXT, MACDFIX
--- @param longSignal number | table Optional - Optional, long data line. Suggestions: MACD, MACDEXT, MACDFIX
--- @return void
--- @overload fun(chartIndex: number, name: string, histogram: number | table): void
--- @overload fun(chartIndex: number, name: string, histogram: number | table, shortSignal: number | table): void
--- @overload fun(chartIndex: number, name: string, histogram: number | table, optionalParameters: OptionalParametersOf_PlotHistogramSignals): void
function PlotHistogramSignals(chartIndex, name, histogram, shortSignal, longSignal) end

--- The optional parameters of PlotHorizontalLine.
--- @shape OptionalParametersOf_PlotHorizontalLine
--- @field lineDecoration Enum | nil Line decoration style. Default is Solid.
--- @field side Enum | nil Axis side on which to snap the line. Default is RightAxis.
--- @field id string | nil Unique identifier.

--- Draws a horizontal line on the chart.
--- @param chartId number The chart index on which to plot the data.
--- @param name string Name of the line. This needs to be unique per index.
--- @param color string | ColorEnum The line color. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param value number The y-axis value on which to place the line. Suggestions: Input
--- @param lineDecoration Enum Optional - Line decoration style. Default is Solid. Suggestions: Solid, Dashed, Dotted
--- @param side Enum Optional - Axis side on which to snap the line. Default is RightAxis. Suggestions: RightAxis, LeftAxis
--- @param id string Optional - Unique identifier.
--- @return void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, value: number): void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, value: number, lineDecoration: Enum): void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, value: number, lineDecoration: Enum, side: Enum): void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, value: number, optionalParameters: OptionalParametersOf_PlotHorizontalLine): void
function PlotHorizontalLine(chartId, name, color, value, lineDecoration, side, id) end

--- The optional parameters of PlotHorizontalZone.
--- @shape OptionalParametersOf_PlotHorizontalZone
--- @field side Enum | nil Axis side on which to snap the line. Default is RightAxis.

--- Draws a horizontal zone on the chart.
--- @param chartId number The chart index on which to plot the data.
--- @param name string Name of the zone. This needs to be unique per index.
--- @param color string | ColorEnum The zone inner color. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param start number The lowest value of the zone. Suggestions: Input
--- @param endValue number The highest value of the zone. Suggestions: Input
--- @param side Enum Optional - Axis side on which to snap the line. Default is RightAxis. Suggestions: RightAxis, LeftAxis
--- @return void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, start: number, endValue: number): void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, start: number, endValue: number, optionalParameters: OptionalParametersOf_PlotHorizontalZone): void
function PlotHorizontalZone(chartId, name, color, start, endValue, side) end

--- Plots the line with a buy and sell zone on the chart.
--- @param chartIndex number Chart index on which to plot. Suggestions: Input
--- @param name string Name of the line. Suggestions: Input, Load
--- @param source number | table Value to plot. Suggestions: RSI
--- @param start number The lowest value of the zone. Suggestions: Input
--- @param endValue number The highest value of the zone. Suggestions: Input
--- @return void
function PlotLineBuySellZone(chartIndex, name, source, start, endValue) end

--- Plots a pivot cross above or below the chart when detected.
--- @param leftStrength number Amount of bars before the pivot point that must be lower(Pivot Low)/higher(Pivot High) than the pivot price. Suggestions: Input
--- @param rightStrength number Amount of bars after the pivot point that must be lower(Pivot Low)/higher(Pivot High) than the pivot price. Suggestions: Input
--- @return void
function PlotPivot(leftStrength, rightStrength) end

--- The optional parameters of PlotPrice.
--- @shape OptionalParametersOf_PlotPrice
--- @field interval number | nil The interval which to plot.
--- @field style Enum | nil The price plot style.
--- @field upColor string | nil The outer color of the up candle.
--- @field upFill boolean | nil The inner color of the up candle.
--- @field downColor string | nil The outer color of the down candle.
--- @field downFill boolean | nil The inner color of the down candle.
--- @field markColor string | nil The outer color of the marked candle.
--- @field markFill boolean | nil The inner color of the marked candle.

--- Creates a price plot. Candlestick by default.
--- @param chartId number The chart index on which to plot the price data.
--- @param market string The market returned by PriceMarket(), InputAccountMarket() or InputMarket() for example. Suggestions: InputAccountMarket, InputMarket, InputPriceSourceMarket, PriceMarket
--- @param interval number Optional - The interval which to plot. Suggestions: InputInterval, CurrentInterval
--- @param style Enum Optional - The price plot style. Suggestions: Candlestick, CandlestickHLC, CloseLine, HLC, OHLC, Mountain, Line, HeikinAshi, Spread, SpreadCandle
--- @param upColor string | ColorEnum Optional - The outer color of the up candle. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param upFill boolean Optional - The inner color of the up candle.
--- @param downColor string | ColorEnum Optional - The outer color of the down candle. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param downFill boolean Optional - The inner color of the down candle.
--- @param markColor string | ColorEnum Optional - The outer color of the marked candle. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param markFill boolean Optional - The inner color of the marked candle.
--- @return void
--- @overload fun(chartId: number, market: string): void
--- @overload fun(chartId: number, market: string, interval: number): void
--- @overload fun(chartId: number, market: string, interval: number, style: Enum): void
--- @overload fun(chartId: number, market: string, interval: number, style: Enum, upColor: string | ColorEnum): void
--- @overload fun(chartId: number, market: string, interval: number, style: Enum, upColor: string | ColorEnum, upFill: boolean): void
--- @overload fun(chartId: number, market: string, interval: number, style: Enum, upColor: string | ColorEnum, upFill: boolean, downColor: string | ColorEnum): void
--- @overload fun(chartId: number, market: string, interval: number, style: Enum, upColor: string | ColorEnum, upFill: boolean, downColor: string | ColorEnum, downFill: boolean): void
--- @overload fun(chartId: number, market: string, interval: number, style: Enum, upColor: string | ColorEnum, upFill: boolean, downColor: string | ColorEnum, downFill: boolean, markColor: string | ColorEnum): void
--- @overload fun(chartId: number, market: string, optionalParameters: OptionalParametersOf_PlotPrice): void
function PlotPrice(chartId, market, interval, style, upColor, upFill, downColor, downFill, markColor, markFill) end

--- The optional parameters of PlotShape.
--- @shape OptionalParametersOf_PlotShape
--- @field chartId number | nil Index on which to plot the line.
--- @field shape Enum | nil The shape type.
--- @field color string | nil The color of the shape.
--- @field size number | nil Size of the shape.
--- @field aboveCandle boolean | nil If true, the shape will be drawn above the candle else below.
--- @field text string | nil Text above or below the candle or shape.
--- @field textColor string | nil The color of the text.
--- @field offset number | nil A positive offset will move the data points x number of candles. A negative number will move the data points back.

--- Draws a shape above the candle or first line on the chart.
--- @param chartId number Optional - Index on which to plot the line.
--- @param shape Enum Optional - The shape type. Suggestions: ShapeAdd, ShapeCircle, ShapeCross, ShapeDiamond, ShapeDash, ShapeSquare, ShapeTriangleDown, ShapeTriangleUp, ShapeText
--- @param color string | ColorEnum Optional - The color of the shape. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param size number Optional - Size of the shape.
--- @param aboveCandle boolean Optional - If true, the shape will be drawn above the candle else below.
--- @param text string Optional - Text above or below the candle or shape. Suggestions: Input, Load
--- @param textColor string | ColorEnum Optional - The color of the text. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param offset number Optional - A positive offset will move the data points x number of candles. A negative number will move the data points back. Suggestions: Input
--- @return void
--- @overload fun(): void
--- @overload fun(chartId: number): void
--- @overload fun(chartId: number, shape: Enum): void
--- @overload fun(chartId: number, shape: Enum, color: string | ColorEnum): void
--- @overload fun(chartId: number, shape: Enum, color: string | ColorEnum, size: number): void
--- @overload fun(chartId: number, shape: Enum, color: string | ColorEnum, size: number, aboveCandle: boolean): void
--- @overload fun(chartId: number, shape: Enum, color: string | ColorEnum, size: number, aboveCandle: boolean, text: string): void
--- @overload fun(chartId: number, shape: Enum, color: string | ColorEnum, size: number, aboveCandle: boolean, text: string, textColor: string | ColorEnum): void
--- @overload fun(optionalParameters: OptionalParametersOf_PlotShape): void
function PlotShape(chartId, shape, color, size, aboveCandle, text, textColor, offset) end

--- The optional parameters of PlotShapes.
--- @shape OptionalParametersOf_PlotShapes
--- @field fillColor string | nil The inner color of the circles. Default is none.

--- Changes the line into a specific shape.
--- @param lineGuid string Line guid returned by Plot(). Suggestions: Plot
--- @param shape Enum The shape type. Suggestions: ShapeAdd, ShapeCircle, ShapeCross, ShapeDiamond, ShapeDash, ShapeSquare, ShapeTriangleDown, ShapeTriangleUp, ShapeText
--- @param fillColor string | ColorEnum Optional - The inner color of the circles. Default is none. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
--- @overload fun(lineGuid: string, shape: Enum): void
--- @overload fun(lineGuid: string, shape: Enum, optionalParameters: OptionalParametersOf_PlotShapes): void
function PlotShapes(lineGuid, shape, fillColor) end

--- Creates a small signal bar chart. A positive chartId will place the line below the main price chart. A negative index above.
--- @param chartId number Index on which to plot the line.
--- @param color string | ColorEnum The color of the signal block. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
function PlotSignalBar(chartId, color) end

--- Creates a small signal bar chart based on the signal enum. A positive chartId will place the line below the main price chart. A negative index above.
--- @param chartId number Index on which to plot the line.
--- @param signal Enum The signal to plot. Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer, EasyABANDS, EasyADOSC, EasyAO, EasyAPO, EasyAROON, EasyAROONOSC, EasyBBANDS, EasyBOP, EasyCCI, EasyCMO, EasyCOPPOCK, EasyCRSI, EasyDMI, EasyDONCHIAN, EasyDPO, EasyDX, EasyICHIMOKU, EasyIMI, EasyKELTNER, EasyKRI, EasyLINEARREG, EasyMA, EasyMACD, EasyMFI, EasyMOM, EasyOBV, EasyPPO, EasyROC, EasyRSI, EasySSTOCH, EasySTOCH, EasySTOCHF, EasyTRIX, EasyTSI, EasyUDRSI, EasyWILLR, EasyZLMA, EasyAlice, EasyCDL, EasySlowRSI, EasyFastRSI, EasyBBANDSB, EasyBBANDSW, EasySTOCHRSI, EasyFIBONACCI, EasyKST, EasySAR, EasyDynamicLongShortLevels, EasyFixedLongShortLevels, EasyULTOSC
--- @return Enum Returns the input signal for continuation. Output Suggestions: Equals, DoSignal, PlotSignalEnum, ConvertSignal, MapSignal, IgnoreSignalIf, UseSignalIf, ReverseSignal, SignalWeight, SignalToBool, SignalMapper, SignalProperties, GetWeightedConsensusSignal, GetUnanimousSignal, GetConsensusSignal, IndicatorContainer, TradeBotContainer
function PlotSignalEnum(chartId, signal) end

--- Creates a stacked area chart from a line guid collection.
--- @param lineGuids any Line guid collection returned by multiple Plot()'s. Suggestions: Plot
--- @return void
function PlotStackedArea(lineGuids) end

--- The optional parameters of PlotVerticalLine.
--- @shape OptionalParametersOf_PlotVerticalLine
--- @field lineDecoration Enum | nil Line decoration style. Default is Solid.

--- Draws a vertical line on the chart.
--- @param chartId number The chart index on which to plot the data.
--- @param name string Name of the line. This needs to be unique per index.
--- @param color string | ColorEnum The line color. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param unix number The x-axis timestamp on which to place the line. Suggestions: Input
--- @param lineDecoration Enum Optional - Line decoration style. Default is Solid. Suggestions: Solid, Dashed, Dotted
--- @return void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, unix: number): void
--- @overload fun(chartId: number, name: string, color: string | ColorEnum, unix: number, optionalParameters: OptionalParametersOf_PlotVerticalLine): void
function PlotVerticalLine(chartId, name, color, unix, lineDecoration) end

--- Draws a vertical zone on the chart.
--- @param chartId number The chart index on which to plot the data.
--- @param name string Name of the zone. This needs to be unique per index.
--- @param color string | ColorEnum The zone inner color. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param start number The lowest value of the zone on the y-axis. Suggestions: Input
--- @param endValue number The highest value of the zone on the y-axis. Suggestions: Input
--- @return void
function PlotVerticalZone(chartId, name, color, start, endValue) end

--- The optional parameters of PlotVolume.
--- @shape OptionalParametersOf_PlotVolume
--- @field upColor string | nil The outer color of the up candle volume bars.
--- @field downColor string | nil The outer color of the down candle volume bars.
--- @field upFill boolean | nil The inner color of the up candle volume bars.
--- @field downFill boolean | nil The inner color of the down candle volume bars.
--- @field side Enum | nil The axis side to snap.

--- Creates volume bars. The bars can be styles accordingly. A positive chartId will place the line below the main price chart. A negative index above.
--- @param chartId number Index on which to plot the line.
--- @param upColor string | ColorEnum Optional - The outer color of the up candle volume bars. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param downColor string | ColorEnum Optional - The outer color of the down candle volume bars. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @param upFill boolean Optional - The inner color of the up candle volume bars.
--- @param downFill boolean Optional - The inner color of the down candle volume bars.
--- @param side Enum Optional - The axis side to snap. Suggestions: RightAxis, LeftAxis
--- @return void
--- @overload fun(chartId: number): void
--- @overload fun(chartId: number, upColor: string | ColorEnum): void
--- @overload fun(chartId: number, upColor: string | ColorEnum, downColor: string | ColorEnum): void
--- @overload fun(chartId: number, upColor: string | ColorEnum, downColor: string | ColorEnum, upFill: boolean): void
--- @overload fun(chartId: number, upColor: string | ColorEnum, downColor: string | ColorEnum, upFill: boolean, downFill: boolean): void
--- @overload fun(chartId: number, optionalParameters: OptionalParametersOf_PlotVolume): void
function PlotVolume(chartId, upColor, downColor, upFill, downFill, side) end

--- Configures the opacity for stacked area chart. A values between
--- @param chartId number Index on which to plot the line.
--- @param opacity number Opacity level from 0 - 100.
--- @return void
function SetStackedAreaOpacity(chartId, opacity) end

