# daniGameIdler
daniGameIdler is a batch program that quickly goes through your Steam games to simulate playing in order to recieve card drops which you can then sell on the Community Market. It does not require downloading the games.  
It works by exploiting [SteamAchievementManager](https://github.com/gibbed/SteamAchievementManager), which it requires. 

### How to use
1. Download `daniGameIdler.rar` from [here](https://github.com/daniel-barbu/daniGameIdler/releases/latest), extract its contents to a **folder without spaces in its name**.
2. Download `SteamAchievementManager-x.x.xx.zip` from [here](https://github.com/gibbed/SteamAchievementManager/releases/latest), extract `SAM.API.dll` and `SAM.Game.exe` to the same folder.
3. Edit `ids.txt` like so:
   1. The delay and the repetitions are up to you, but make sure they are in the correct format.
   2. To get the game ids go to your [badges page](https://steamcommunity.com/id/<YOUR-ID>/badges/) on Steam and run [`getGameIds.js`](https://github.com/daniel-barbu/daniGameIdler/raw/master/getGameIds.js) in the console.
4. Run `daniGameIdler.bat`.

### Known Issues
* The folder in which the files are placed must not contain spaces in its name.
* If you stop receiving cards it might be a good idea to set all your [privacy settings](https://steamcommunity.com/id/me/edit/settings) to public.
* A SteamAchievementManager window will pop-up every x seconds.  
  To have your desired windows always on top use [AlwaysOnTop](https://github.com/daniel-barbu/AlwaysOnTop).

### Screenshot
![screenshot.png did not load correctly](/screenshot.png)
