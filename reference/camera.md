# Camera

Script API functions in the `camera` group.

### `camera_get_default_fov`

`camera_get_default_fov(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function camera_get_default_fov(t_entity_id) end
```

### `camera_get_fov`

`camera_get_fov(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function camera_get_fov(t_entity_id) end
```

### `camera_get_world_to_screen_position`

`camera_get_world_to_screen_position(t_world_position)`

```lua
---@param t_world_position vec3
---@return vec2
function camera_get_world_to_screen_position(t_world_position) end
```

### `camera_reset_fov`

`camera_reset_fov(t_entity_id)`

```lua
---@param t_entity_id integer
function camera_reset_fov(t_entity_id) end
```

### `camera_set_default_fov`

`camera_set_default_fov(t_entity_id, t_default_fov)`

```lua
---@param t_entity_id integer
---@param t_default_fov number
function camera_set_default_fov(t_entity_id, t_default_fov) end
```

### `camera_set_fov`

`camera_set_fov(t_entity_id, t_fov)`

```lua
---@param t_entity_id integer
---@param t_fov number
function camera_set_fov(t_entity_id, t_fov) end
```
