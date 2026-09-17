# Soundscape_zone

Script API functions in the `soundscape_zone` group.

### `soundscape_zone_get_fade_duration`

`soundscape_zone_get_fade_duration(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function soundscape_zone_get_fade_duration(t_entity_id) end
```

### `soundscape_zone_get_priority`

`soundscape_zone_get_priority(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function soundscape_zone_get_priority(t_entity_id) end
```

### `soundscape_zone_get_profile`

`soundscape_zone_get_profile(t_entity_id)`

```lua
---@param t_entity_id integer
function soundscape_zone_get_profile(t_entity_id) end
```

### `soundscape_zone_get_show_debug_box`

`soundscape_zone_get_show_debug_box(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function soundscape_zone_get_show_debug_box(t_entity_id) end
```

### `soundscape_zone_set_fade_duration`

`soundscape_zone_set_fade_duration(t_entity_id, t_fade_duration)`

```lua
---@param t_entity_id integer
---@param t_fade_duration number
function soundscape_zone_set_fade_duration(t_entity_id, t_fade_duration) end
```

### `soundscape_zone_set_priority`

`soundscape_zone_set_priority(t_entity_id, t_priority)`

```lua
---@param t_entity_id integer
---@param t_priority integer
function soundscape_zone_set_priority(t_entity_id, t_priority) end
```

### `soundscape_zone_set_profile`

`soundscape_zone_set_profile(t_entity_id)`

```lua
---@param t_entity_id integer
function soundscape_zone_set_profile(t_entity_id) end
```

### `soundscape_zone_set_show_debug_box`

`soundscape_zone_set_show_debug_box(t_entity_id, t_show_debug_box)`

```lua
---@param t_entity_id integer
---@param t_show_debug_box boolean
function soundscape_zone_set_show_debug_box(t_entity_id, t_show_debug_box) end
```
