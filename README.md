# daniGameIdler
daniGameIdler works by exploiting [SteamAchievementManager](https://github.com/gibbed/SteamAchievementManager), which it requires. 

### installation
1. Download daniGameIdler from [here](https://github.com/daniel-barbu/daniGameIdler/archive/master.zip), extract `daniGameIdler.bat` and `ids.txt` to a **folder without spaces in it's name**. 
2. Download `SteamAchievementManager-x.x.xx.zip` from [here](https://github.com/gibbed/SteamAchievementManager/releases), extract `SAM.API.dll` and `SAM.Game.exe` to the same folder.
3. Edit the `ids.txt` like so:
	 1. in a browser, go to your badges page on Steam
	 2. ctrl+f and search for the word 'play'
	 3. ctrl+click the games found to open them in new tabs
	 4. copy the last number in the urls to the list
4. Run `daniGameIdler.bat`.

### Known Issues
- the folder in which the files are placed must not contain spaces
