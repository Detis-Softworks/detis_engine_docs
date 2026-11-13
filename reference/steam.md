# Steam

Script API functions in the `steam` group.

### `steam_clear_achievement`

`steam_clear_achievement(t_achievement_name)`

```lua
---@param t_achievement_name string
function steam_clear_achievement(t_achievement_name) end
```

### `steam_clear_rich_presence`

`steam_clear_rich_presence()`

```lua
function steam_clear_rich_presence() end
```

### `steam_delete_save_file`

`steam_delete_save_file(t_file_name)`

```lua
---@param t_file_name string
---@return boolean
function steam_delete_save_file(t_file_name) end
```

### `steam_get_is_achievement_unlocked`

`steam_get_is_achievement_unlocked(t_achievement_name)`

```lua
---@param t_achievement_name string
---@return boolean
function steam_get_is_achievement_unlocked(t_achievement_name) end
```

### `steam_get_is_initialized`

`steam_get_is_initialized()`

```lua
---@return boolean
function steam_get_is_initialized() end
```

### `steam_get_persona_name`

`steam_get_persona_name()`

```lua
---@return string
function steam_get_persona_name() end
```

### `steam_get_stat_float`

`steam_get_stat_float(t_stat_name)`

```lua
---@param t_stat_name string
---@return number
function steam_get_stat_float(t_stat_name) end
```

### `steam_get_stat_int`

`steam_get_stat_int(t_stat_name)`

```lua
---@param t_stat_name string
---@return integer
function steam_get_stat_int(t_stat_name) end
```

### `steam_get_steam_id`

`steam_get_steam_id()`

```lua
---@return string
function steam_get_steam_id() end
```

### `steam_set_achievement`

`steam_set_achievement(t_achievement_name)`

```lua
---@param t_achievement_name string
function steam_set_achievement(t_achievement_name) end
```

### `steam_set_rich_presence`

`steam_set_rich_presence(t_presence_key, t_presence_value)`

```lua
---@param t_presence_key string
---@param t_presence_value string
function steam_set_rich_presence(t_presence_key, t_presence_value) end
```

### `steam_set_stat_float`

`steam_set_stat_float(t_stat_name, t_stat_value)`

```lua
---@param t_stat_name string
---@param t_stat_value number
function steam_set_stat_float(t_stat_name, t_stat_value) end
```

### `steam_set_stat_int`

`steam_set_stat_int(t_stat_name, t_stat_value)`

```lua
---@param t_stat_name string
---@param t_stat_value integer
function steam_set_stat_int(t_stat_name, t_stat_value) end
```

### `steam_store_stats`

`steam_store_stats()`

```lua
function steam_store_stats() end
```

### `steam_sync_saves`

`steam_sync_saves()`

```lua
---@return boolean
function steam_sync_saves() end
```
