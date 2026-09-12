# Animation

Script API functions in the `animation` group.

### `animation_add`

`animation_add(t_entity_id, t_file_path)`

```lua
---@param t_entity_id integer
---@param t_file_path string
function animation_add(t_entity_id, t_file_path) end
```

### `animation_get_current_name`

`animation_get_current_name(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function animation_get_current_name(t_entity_id) end
```

### `animation_get_duration`

`animation_get_duration(t_entity_id, t_animation_name)`

```lua
---@param t_entity_id integer
---@param t_animation_name string
---@return number
function animation_get_duration(t_entity_id, t_animation_name) end
```

### `animation_get_is_finished`

`animation_get_is_finished(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function animation_get_is_finished(t_entity_id) end
```

### `animation_get_is_looping`

`animation_get_is_looping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function animation_get_is_looping(t_entity_id) end
```

### `animation_get_is_paused`

`animation_get_is_paused(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function animation_get_is_paused(t_entity_id) end
```

### `animation_get_is_playing`

`animation_get_is_playing(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function animation_get_is_playing(t_entity_id) end
```

### `animation_get_socket_names`

`animation_get_socket_names()`

```lua
function animation_get_socket_names() end
```

### `animation_get_socket_world_position`

`animation_get_socket_world_position()`

```lua
function animation_get_socket_world_position() end
```

### `animation_get_socket_world_rotation`

`animation_get_socket_world_rotation()`

```lua
function animation_get_socket_world_rotation() end
```

### `animation_get_speed`

`animation_get_speed(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function animation_get_speed(t_entity_id) end
```

### `animation_get_time`

`animation_get_time(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function animation_get_time(t_entity_id) end
```

### `animation_play`

`animation_play(t_entity_id, t_animation_name, t_boolean_3, t_number_4, t_number_5)`

```lua
---@param t_entity_id integer
---@param t_animation_name string
---@param t_boolean_3 boolean
---@param t_number_4 number
---@param t_number_5 number
function animation_play(t_entity_id, t_animation_name, t_boolean_3, t_number_4, t_number_5) end
```

### `animation_remove`

`animation_remove(t_entity_id, t_animation_name)`

```lua
---@param t_entity_id integer
---@param t_animation_name string
function animation_remove(t_entity_id, t_animation_name) end
```

### `animation_set_looping`

`animation_set_looping(t_entity_id, t_looping)`

```lua
---@param t_entity_id integer
---@param t_looping boolean
function animation_set_looping(t_entity_id, t_looping) end
```

### `animation_set_paused`

`animation_set_paused(t_entity_id, t_paused)`

```lua
---@param t_entity_id integer
---@param t_paused boolean
function animation_set_paused(t_entity_id, t_paused) end
```

### `animation_set_speed`

`animation_set_speed(t_entity_id, t_speed)`

```lua
---@param t_entity_id integer
---@param t_speed number
function animation_set_speed(t_entity_id, t_speed) end
```

### `animation_set_time`

`animation_set_time(t_entity_id, t_time)`

```lua
---@param t_entity_id integer
---@param t_time number
function animation_set_time(t_entity_id, t_time) end
```

### `animation_stop`

`animation_stop(t_entity_id)`

```lua
---@param t_entity_id integer
function animation_stop(t_entity_id) end
```
