# Defold Localization example

This is example how to use google sheet table for localization.

1. You will need credentials.json to download from google sheets.
[Make credentials](docs/credentials.md)

2. Copy localization folder in your project

 - Add files to .gitignore
```
/localization/load_localization/node_modules
/localization/load_localization/package-lock.json
/localization/load_localization/token.json
/localization/load_localization/credentials.json
/localization/load_localization/localization/**
```

- Install node dependencies.
```
cd localization/load_localization
npm install
```


3. Config index.js

	Paste your spreadsheet id to config_sheet variable.
Use you sheet name and range
```js
async function main(auth) {
    console.log("start");
    const sheets = google.sheets({version: 'v4', auth});
	//https://docs.google.com/spreadsheets/d/1BUmB7w0f4RVaqfJtRp3ix_3HKL0V5Izu-I9MB9NhCX4
    const config_sheet = "1BUmB7w0f4RVaqfJtRp3ix_3HKL0V5Izu-I9MB9NhCX4"
    let localization = await download_localization(sheets, "localization!A8:L1000", auth, config_sheet);
```
4. Download localization
```
cd ./localization/load_localization
node index.js
```
You will have 6 files.
- Font forge scripts to exclude symbols from ttf file.
	font_forge_all.txt
	font_forge_small.txt
- Localization data in json format. You will need localization_compact.json for your game.
	localization.json 
	localization_compact.json
- Symbols list in txt format. To include symbols in defold .font files
	symbol_list.txt
	symbol_list_small.txt

5.
