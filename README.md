# README #
This project generates Luanalysis Type Definitions for the HaasScript Language so code editors can autocomplete and type check your
scripts. If you do not want to run the project, you can simply download the output here:
https://github.com/FiretronP75/HaasScriptLuaTypes/releases

### To use the lua definitions output: ###
1. Install JetBrains PyCharm Community (it is free) (or any paid JetBrains product).
2. In the settings, install the Luanalysis plugin.
3. Open a folder containing your haas scripts.
4. Copy the lua definitions into the same folder.
5. The plugin should pick them up automatically.

### To run the project: ###
1. Clone the git repository.
2. Install Node 10 or greater.
3. Install Yarn.
4. Open a terminal in the project root.
5. Run `yarn`.
6. Run `yarn start`.
7. Read and follow the help output in the console (pasted here for convenience):
   * This script requires 4 parameters: environment, file extension, interface key, user id.
   Environment may be "production" or "staging". Anything other than "staging" (case-insensitive) assumes "production".
   File extension may be anything, but "lua" or "hs" is recommended.
   Interface key and user id can be copied from a web browser session that has not expired yet.
   Example: `yarn start prod lua 30w3jrv4pa-fj209-qj0934-295cn-qv9r0cev fm02q9rf0q2fqr2cv98r4v8q9tv8rq48`


### To find interface key and user id: ###
1. Open Haas cloud server in a browser.
2. Hard refresh with ctrl+F5 to ensure the latest version.
3. Open browser's developer tools.
4. Select the Network tab of the tools.
5. Clear any filters.
6. In Haas, open the Web Editor.
7. In Haas, open a script.
8. In the Network tab of the browser tools, filter on "command".
9. Click on the only remaining network transaction.
10. Select Headers tab if not already selected.
11. Your key and id are at the bottom of the panel.
    * Note that they will expire when logged out.
    * Note that they are different in production and staging.
    * Note that most people do not have access to staging.
