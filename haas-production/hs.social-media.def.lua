--- Social Media

--- Send a text message to Discord.
--- @param message string The content of the message. Suggestions: Input, Load
--- @return void
function BroadcastToDiscord(message) end

--- Send a text message to your Telegram.
--- @param message string The content of the message. Suggestions: Input, Load
--- @return void
function BroadcastToTelegram(message) end

--- Sends a notification to your browser and configured push channels (Discord, Telegram). Has no effect during backtests.
--- @param title string The notification title. Suggestions: Input, Load
--- @param message string The notification message. Suggestions: Input, Load
--- @return void
function SendNotification(title, message) end

