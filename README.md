# HaasScript Lua Type Definitions Generator
This project generates Luanalysis Type Definitions for the HaasScript Language so code editors can autocomplete and type check your
scripts. If you do not want to run the project, you can simply download the zip files of the output here:
https://github.com/FiretronP75/HaasScriptLuaTypes/releases

> * Most people should use production definitions.
> * You do not want staging definitions unless you test on the Haas Cloud staging server.
> * Only use 1 of the zip files of lua definitions, or Luanalysis will error about duplicates.

## To use the lua definitions output:
1. Install IntelliJ IDEA or PyCharm from JetBrains. Their core features are free. Or use any paid JetBrains product.
2. In the settings, install the Luanalysis plugin.
3. Open a folder containing your haas scripts.
4. Copy the (unzipped) lua definitions into the same folder or a sub folder. *Use only one of the zip files.*
5. The Luanalysis plugin should pick them up automatically. You will now see code hints and type errors in your scripts.
6. If the JetBrains code editor freezes, force kill and increase its memory limit in its settings in JetBrains Toolbox.

> Normally, JetBrains products will alert you that you need to give it more memory.
> But it seems to not be able to track memory used by Luanalysis.

## To run the project:
1. Clone the git repository.
2. Install Node 26 or greater.
3. Install pnpm 12.18.0 or greater.
4. Open a terminal in the project root.
5. Run `pnpm install`.
6. Run `pnpm start`.
7. Read and follow the help output in the console (pasted here for convenience):

> * This script requires 3 parameters: environment, file extension, HAR file.
> * Environment may be "production" or "staging". It only changes where the output is saved. Anything other than "staging" (case-insensitive) assumes "production".
> * File extension may be anything, but "lua" or "hs" is recommended.
> * The HAR file is exported from a logged-in web browser. The README explains how.
> * Example: `pnpm start prod lua "app.haasbot.com.har"`

## About flex-numbers:
Many of the number parameters of functions can also take a list of numbers.
But it is not clear which do and which do not.
So each run generates two versions of the definitions.
The version without "flex-numbers" in its name keeps them all as `number`.
This will give errors when you assign a list of numbers, even though it might be valid.
The version with "flex-numbers" in its name changes them all to `number | number[]`.
This will not error when you assign a list of numbers, even though it might be invalid.
I'm not sure which is better or worse. So you have to decide for yourself which you prefer.

## To export the HAR file:
The script does not connect to the Haas server. It reads a HAR file, which is a record of network traffic that you export from your own logged-in browser.

These steps should work in Chromium-based browsers, including Google Chrome, Microsoft Edge, Brave, Opera, and Vivaldi. Mozilla Firefox and Apple Safari should have a similar feature in the Network tab of their developer tools, but the exact steps will differ.

1. Open Haas cloud server in your browser and log in.
2. Open your browser's developer tools.
3. Select the Network tab of the developer tools.
4. In the filter box of the Network tab, enter `/GET_COMMANDS|INIT_DATA/` so that only the two needed requests are listed.
5. In Haas cloud server, open the Web Editor. *(or reload the page if the Web Editor is already open)*
6. Click the Export HAR icon, a small down arrow at the top of the Network tab, and save the file.
7. Pass the path of the file to `pnpm start`, with double quotes around the path so that spaces work: `pnpm start prod lua "app.haasbot.com.har"`

> * If you need staging definitions, do these steps again on the staging server.