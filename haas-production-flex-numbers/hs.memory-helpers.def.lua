--- Memory Helpers

--- Deletes a value on a specific key.
--- @param key string Unique identifier.
--- @return void
function Delete(key) end

--- Initialize a file that can be exported later. Rows are written with WriteExportData, which only records during a backtest. Cloud servers allow up to 25 export files per script.
--- @param name string Unique name of the file.
--- @param headers string[] Header definition.
--- @return void
function InitExportData(name, headers) end

--- The optional parameters of Load.
--- @shape OptionalParametersOf_Load
--- @field defaultValue any | nil Default value for when no data is saved on the key. Default is nil.

--- Loads a value saved on the specified key. When nothing is saved on the key, the default value is returned and saved on it; when the saved value cannot be read (e.g. the read timed out), the run ends and the next run tries again.
--- @param key string Unique identifier.
--- @param defaultValue any Optional - Default value for when no data is saved on the key. Default is nil.
--- @return any Returns the saved value or nil.
--- @overload fun(key: string): any
--- @overload fun(key: string, optionalParameters: OptionalParametersOf_Load): any
function Load(key, defaultValue) end

--- The optional parameters of Log.
--- @shape OptionalParametersOf_Log
--- @field color string | ColorEnum | nil The color of the log message.

--- Create a message in the log.
--- @param message any Message to log.
--- @param color string | ColorEnum Optional - The color of the log message. Suggestions: Aqua, Black, Blue, Cyan, DarkGray, DarkGreen, Fuchsia, Gold, Gray, Green, Maroon, Olive, Orange, Purple, Red, SkyBlue, Teal, White, Yellow, ChangeColorOpacity
--- @return void
--- @overload fun(message: any): void
--- @overload fun(message: any, optionalParameters: OptionalParametersOf_Log): void
function Log(message, color) end

--- Create an error message in the log.
--- @param message any Error to log.
--- @return void
function LogError(message) end

--- Logs a warning and shows the bot as Insufficient funds for this update.
--- @param message any Warning to log.
--- @return void
function LogWalletError(message) end

--- Create a warning message in the log.
--- @param message any Warning to log.
--- @return void
function LogWarning(message) end

--- Saves a value on a specific key. This value can be retrieved with Load(). A maximum of 10.000 keys can be stored.
--- @param key string Unique identifier.
--- @param value any The value to store.
--- @return void
function Save(key, value) end

--- Write data to a file that can be exported later. Only records during a backtest. Self-hosted file size is unlimited, use with caution; cloud servers cap a file at 250,000 rows.
--- @param name string Name of the file to write the data to.
--- @vararg any The values to write to the file, converted to text. Needs to match the number of headers defined in InitExportData.
--- @return void
function WriteExportData(name, ...) end

