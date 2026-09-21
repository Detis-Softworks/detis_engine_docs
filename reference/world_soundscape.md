# World_soundscape

Script API functions in the `world_soundscape` group.

### `world_soundscape_get_active_zone`

`world_soundscape_get_active_zone()`

```lua
---@return integer
function world_soundscape_get_active_zone() end
```

### `world_soundscape_get_is_paused`

`world_soundscape_get_is_paused()`

```lua
---@return boolean
function world_soundscape_get_is_paused() end
```

### `world_soundscape_get_profile`

`world_soundscape_get_profile()`

```lua
function world_soundscape_get_profile() end
```

### `world_soundscape_notify_profile_changed`

`world_soundscape_notify_profile_changed()`

```lua
function world_soundscape_notify_profile_changed() end
```

### `world_soundscape_reload_active_profile`

`world_soundscape_reload_active_profile(t_fade_seconds)`

```lua
---@param t_fade_seconds number
function world_soundscape_reload_active_profile(t_fade_seconds) end
```

### `world_soundscape_set_paused`

`world_soundscape_set_paused(t_paused)`

```lua
---@param t_paused boolean
function world_soundscape_set_paused(t_paused) end
```

### `world_soundscape_set_profile`

`world_soundscape_set_profile()`

```lua
function world_soundscape_set_profile() end
```
