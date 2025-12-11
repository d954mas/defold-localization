# Defold Localization example

This is example how to use google sheet table for localization.

1.You will need credentials.json to download from google sheets.
[Make credentials](docs/credentials.md)

2. Copy localization folder in your project
2.1 Add files to .gitignore
```
/localization/load_localization/node_modules
/localization/load_localization/package-lock.json
/localization/load_localization/token.json
/localization/load_localization/credentials.json
/localization/load_localization/localization/**
```
2.2 Install node dependencies.
cd localization/load_localization
npm install
---