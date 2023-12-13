# HaasScript Lua Type Definitions Generator
This project generates Luanalysis Type Definitions for the HaasScript Language so code editors can autocomplete and type check your
scripts. If you do not want to run the project, you can simply download the zip files of the output here:
https://github.com/FiretronP75/HaasScriptLuaTypes/releases
* Most people should use production definitions.
* You do not want staging definitions unless you test on the Haas Cloud staging server.

## To use the lua definitions output:
1. Install IntelliJ IDEA Community Edition or PyCharm Community from JetBrains. They are free. Or use any paid JetBrains product.
2. In the settings, install the Luanalysis plugin.
3. Open a folder containing your haas scripts.
4. Copy the (unzipped) lua definitions into the same folder or a sub folder. Use either production or staging, not both.
5. The Luanalysis plugin should pick them up automatically. You will now see code hints and type errors in your scripts.

## To run the project:
1. Clone the git repository.
2. Install Node 10 or greater.
3. Install Yarn.
4. Open a terminal in the project root.
5. Run `yarn`.
6. Run `yarn start`.
7. Read and follow the help output in the console (pasted here for convenience):
  > This script requires 4 parameters: environment, file extension, interface key, user id.
  >
  > Environment may be "production" or "staging". Anything other than "staging" (case-insensitive) assumes "production".
  >
  > File extension may be anything, but "lua" or "hs" is recommended.
  >
  > Interface key and user id can be copied from a web browser session that has not expired yet.
  >
  > Example: `yarn start prod lua 30w3jrv4pa-fj209-qj0934-295cn-qv9r0cev fm02q9rf0q2fqr2cv98r4v8q9tv8rq48`

## To find your interface key and user id:
1. Open Haas cloud server in your browser.
2. Hard refresh with ctrl+F5 to ensure you have the latest version.
3. Open your browser's developer tools.
4. Select the Network tab of the developer tools.
5. Clear any filters on the network transactions list.
6. In Haas cloud server, open the Web Editor.
   * (or reload the page if the Web Editor is already open)
7. In Haas cloud server, open any one of your saved scripts.
8. In the Network tab of your browser's developer tools, filter on "command".
9. Click on the only remaining network transaction.
10. Select the Payload tab of the network details.
11. Your `interfacekey` and `userid` should be in the Payload panel.
12. Right click on each and choose "Copy value".
  > * Note that they will expire when logged out.
  > * Note that they are different in production and staging.
  > * If you need staging definitions, do these steps again on the staging server.
