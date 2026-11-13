# Steam

Achievements, stats, rich presence, and cloud saves.

All of the above can be handled directly in Lua. It's a good practice to call **`steam_get_is_initialized()`** first. It returns false when Steam is off, and the other calls then do nothing useful.

## App id

Steam stays off until the game has an app id. In **`content/config/default_game.ini`**, under **`[Core]`**:

```ini
[Core]
steam_app_id = 0
title = Detis Game
```

**`0`** leaves Steam off. That is what you want for a build that is not on Steam. Set **`steam_app_id`** to your Steam app id when you ship on Steam. If the player did not start the game from the Steam client, the engine asks Steam to relaunch it and then exits.

> **Note:** A file named **`steam_appid.txt`** next to the executable overrides **`steam_app_id`** and skips that relaunch. Use it for a local test. Leave the ini at **`0`**.

## Who is playing

```lua
if steam_get_is_initialized() then
    local player_name = steam_get_persona_name()
    local steam_id = steam_get_steam_id()
end
```

**`steam_get_steam_id()`** returns the id as a string.

## Achievements and stats

The name is the API name from your Steam app. Unlocking stores immediately:

```lua
if steam_get_is_initialized() then
    if not steam_get_is_achievement_unlocked("WIN_THE_GAME") then
        steam_set_achievement("WIN_THE_GAME")
    end
end
```

**`steam_clear_achievement("WIN_THE_GAME")`** clears it. That also stores immediately.

Stats wait until you store them. Use **`steam_set_stat_int`** or **`steam_set_stat_float`** to match the stat on your Steam app, then call **`steam_store_stats()`**:

```lua
if steam_get_is_initialized() then
    local wins = steam_get_stat_int("WINS")
    steam_set_stat_int("WINS", wins + 1)
    steam_store_stats()
end
```

A wrong name or the wrong number type is rejected. The log says which stat or achievement failed.

## Rich presence

This is the line friends see. The key and the value are the ones you set up for your Steam app.

```lua
if steam_get_is_initialized() then
    steam_set_rich_presence("status", "Playing")
end
```

**`steam_clear_rich_presence()`** clears it. The engine also clears it on shutdown.

## Cloud saves

Cloud sync uses one folder:

| Platform | Saves folder |
|----------|----------------|
| Windows | `Documents/My Games/<title>/game/saves/` |
| Linux | `~/.<title>/game/saves/` |

**`<title>`** is the **`title`** value in that ini. **`title = Detis Game`** puts the folder at **`Documents/My Games/Detis Game`**, and the saves in the table are **`Documents/My Games/Detis Game/game/saves/`**. **`game_get_settings_user_path()`** returns **`Documents/My Games/Detis Game/`**, with a slash on the end. See [Project layout](/getting_started/project_layout.md).

```lua
local user_root = game_get_settings_user_path()
local save_path = user_root .. "game/saves/slot_01.json"
local save_table = {
    note = "checkpoint",
}
local wrote = file_manager_save_json(save_table, save_path)
if wrote then
    steam_sync_saves()
end
```

**`steam_sync_saves()`** uploads and downloads files in that folder. The newer file wins. The engine also syncs when Steam starts, and again on shutdown.

**`steam_delete_save_file`** takes a name relative to that folder, not a full path. A subfolder is allowed: **`"chapter/slot_01.json"`**.

```lua
local deleted = steam_delete_save_file("slot_01.json")
```

> **Note:** **`steam_sync_saves`** returns false when Steam is off or cloud is disabled for the app. **`steam_delete_save_file`** still deletes the local file in that case.

## Overlay

Opening the Steam overlay pauses the game. Closing it resumes only if the overlay was what paused. A pause you already had stays paused. Read it with **`game_get_is_paused()`**.

Signatures for every **`steam_*`** call are in **`engine/stubs/engine_stubs.lua`**.

## Continue reading

**Previous:** [In-game UI](script_gui.md): HUD and menus in **`on_draw`**.

**Next:** [Debug draw](script_debug_draw.md): one-frame world wireframes from Lua.
