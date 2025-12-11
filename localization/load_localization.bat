if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
cd ./load_localization
node index.js

copy  /y .\localization\localization_compact.json ..\..\custom\localization\localization.json
pause