# Music

Script API functions in the `music` group.

### `music_get_duration`

`music_get_duration()`

```lua
---@return number
function music_get_duration() end
```

### `music_get_file_path`

`music_get_file_path()`

```lua
---@return string
function music_get_file_path() end
```

### `music_get_is_paused`

`music_get_is_paused()`

```lua
---@return boolean
function music_get_is_paused() end
```

### `music_get_is_playing`

`music_get_is_playing()`

```lua
---@return boolean
function music_get_is_playing() end
```

### `music_get_time`

`music_get_time()`

```lua
---@return number
function music_get_time() end
```

### `music_get_volume`

`music_get_volume()`

```lua
---@return number
function music_get_volume() end
```

### `music_play`

`music_play(t_file_path, t_looping, t_fade_duration)`

```lua
---@param t_file_path string
---@param t_looping boolean
---@param t_fade_duration number
function music_play(t_file_path, t_looping, t_fade_duration) end
```

### `music_set_paused`

`music_set_paused(t_paused)`

```lua
---@param t_paused boolean
function music_set_paused(t_paused) end
```

### `music_set_time`

`music_set_time(t_time_seconds)`

```lua
---@param t_time_seconds number
function music_set_time(t_time_seconds) end
```

### `music_set_volume`

`music_set_volume(t_volume)`

```lua
---@param t_volume number
function music_set_volume(t_volume) end
```

### `music_stop`

`music_stop(t_fade_duration)`

```lua
---@param t_fade_duration number
function music_stop(t_fade_duration) end
```
