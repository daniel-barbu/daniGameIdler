# daniGameIdler
daniGameIdler works by exploiting [SteamAchievementManager](https://github.com/gibbed/SteamAchievementManager), which it requires. 

### How to use
1. Download daniGameIdler from [here](https://github.com/daniel-barbu/daniGameIdler/releases/latest), extract `daniGameIdler.bat` and `ids.txt` to a **folder without spaces in it's name**. 
2. Download `SteamAchievementManager-x.x.xx.zip` from [here](https://github.com/gibbed/SteamAchievementManager/releases/latest), extract `SAM.API.dll` and `SAM.Game.exe` to the same folder.
3. Edit `ids.txt` like so:
   1. The delay and the repetitions are up to you, but make sure they are in the correct format
   2. Go to your [badges page](https://steamcommunity.com/id/<YOUR-ID>/badges/) on Steam and run [`getGameIds.js`](https://github.com/daniel-barbu/daniGameIdler/raw/master/geteGameIds.js) in the console.
4. Run `daniGameIdler.bat`.

### Known Issues
- the folder in which the files are placed must not contain spaces
