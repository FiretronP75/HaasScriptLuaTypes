# HaasScript Lua Type Definitions Generator
This project generates Luanalysis Type Definitions for the HaasScript Language so code editors can autocomplete and type check your
scripts. If you do not want to run the project, you can simply download the zip files of the output here:
https://github.com/FiretronP75/HaasScriptLuaTypes/releases

> * Most people should use production definitions.
> * You do not want staging definitions unless you test on the Haas Cloud staging server.
> * Only use 1 of the 4 zip files of lua definitions, or Luanalysis will error about duplicates.

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
2. Install Node 18 or greater.
3. Install pnpm 12.18.0 or greater.
4. Open a terminal in the project root.
5. Run `pnpm install`.
6. Run `pnpm start`.
7. Read and follow the help output in the console (pasted here for convenience):

> * This script requires 5 parameters: environment, file extension, flexible numbers, saved GET_COMMANDS response, saved INIT_DATA response.
> * Environment may be "production" or "staging". Anything other than "staging" (case-insensitive) assumes "production".
> * File extension may be anything, but "lua" or "hs" is recommended.
> * Flexible numbers may be "flex-num" or "not-flex-num". Anything other than "flex-num" (case-insensitive) assumes "not-flex-num".
> * The saved responses are JSON files saved from a logged-in web browser. The README explains how.
> * Example: `pnpm start prod lua flex-num GET_COMMANDS.json INIT_DATA.json`

## About flex-num:
Many of the number parameters of functions can also take a list of numbers.
But it is not clear which do and which do not.
Using "not-flex-num" keeps them all as `number`.
This will give errors when you assign a list of numbers, even though it might be valid.
Using "flex-num" changes them all to `number | number[]`.
This will not error when you assign a list of numbers, even though it might be invalid.
I'm not sure which is better or worse. So you have to decide for yourself which you prefer.

## To save the server responses:
The script does not connect to the Haas server. It reads two responses that you save from your own logged-in browser.

1. Open Haas cloud server in your browser and log in.
2. Open your browser's developer tools.
3. Select the Network tab of the developer tools.
4. Clear any filters on the network transactions list.
5. In Haas cloud server, open the Web Editor. *(or reload the page if the Web Editor is already open)*
6. In the Network tab of your browser's developer tools, filter on "GET_COMMANDS".
7. Click on the network transaction and select the Response tab of the network details.
8. Copy the whole response into a file named `GET_COMMANDS.json`.
9. Filter on "INIT_DATA" and do the same, saving the response into a file named `INIT_DATA.json`.
10. Pass the paths of the two files to `pnpm start`.

> * Save the files as UTF-8. Other encodings, such as UTF-16, cannot be read.
> * If you need staging definitions, do these steps again on the staging server.
> * Keep the saved files out of version control. They come from your own session.
> * If a saved file cannot be read, the script warns and uses the sample data committed in this repository instead.
