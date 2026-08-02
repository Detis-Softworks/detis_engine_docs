# Transform

Script API functions in the `transform` group.

### `transform_get_local_forward`

`transform_get_local_forward(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_local_forward(t_entity_id) end
```

### `transform_get_local_matrix`

`transform_get_local_matrix(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function transform_get_local_matrix(t_entity_id) end
```

### `transform_get_local_position`

`transform_get_local_position(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_local_position(t_entity_id) end
```

### `transform_get_local_right`

`transform_get_local_right(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_local_right(t_entity_id) end
```

### `transform_get_local_rotation`

`transform_get_local_rotation(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_local_rotation(t_entity_id) end
```

### `transform_get_local_rotation_quat`

`transform_get_local_rotation_quat(t_entity_id)`

```lua
---@param t_entity_id integer
---@return quat
function transform_get_local_rotation_quat(t_entity_id) end
```

### `transform_get_local_scale`

`transform_get_local_scale(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_local_scale(t_entity_id) end
```

### `transform_get_local_up`

`transform_get_local_up(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_local_up(t_entity_id) end
```

### `transform_get_world_forward`

`transform_get_world_forward(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_world_forward(t_entity_id) end
```

### `transform_get_world_matrix`

`transform_get_world_matrix(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function transform_get_world_matrix(t_entity_id) end
```

### `transform_get_world_position`

`transform_get_world_position(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_world_position(t_entity_id) end
```

### `transform_get_world_right`

`transform_get_world_right(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_world_right(t_entity_id) end
```

### `transform_get_world_rotation`

`transform_get_world_rotation(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_world_rotation(t_entity_id) end
```

### `transform_get_world_rotation_quat`

`transform_get_world_rotation_quat(t_entity_id)`

```lua
---@param t_entity_id integer
---@return quat
function transform_get_world_rotation_quat(t_entity_id) end
```

### `transform_get_world_scale`

`transform_get_world_scale(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_world_scale(t_entity_id) end
```

### `transform_get_world_up`

`transform_get_world_up(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function transform_get_world_up(t_entity_id) end
```

### `transform_local_to_world_direction`

`transform_local_to_world_direction(t_entity_id, t_local_direction)`

```lua
---@param t_entity_id integer
---@param t_local_direction vec3
---@return vec3
function transform_local_to_world_direction(t_entity_id, t_local_direction) end
```

### `transform_local_to_world_point`

`transform_local_to_world_point(t_entity_id, t_local_point)`

```lua
---@param t_entity_id integer
---@param t_local_point vec3
---@return vec3
function transform_local_to_world_point(t_entity_id, t_local_point) end
```

### `transform_look_at_local`

`transform_look_at_local(t_entity_id, t_target, t_up)`

```lua
---@param t_entity_id integer
---@param t_target vec3
---@param t_up vec3
function transform_look_at_local(t_entity_id, t_target, t_up) end
```

### `transform_look_at_world`

`transform_look_at_world(t_entity_id, t_target, t_up)`

```lua
---@param t_entity_id integer
---@param t_target vec3
---@param t_up vec3
function transform_look_at_world(t_entity_id, t_target, t_up) end
```

### `transform_remove_parent`

`transform_remove_parent(t_entity_id)`

```lua
---@param t_entity_id integer
function transform_remove_parent(t_entity_id) end
```

### `transform_set_interpolation_active`

`transform_set_interpolation_active(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function transform_set_interpolation_active(t_entity_id, t_enabled) end
```

### `transform_set_local_matrix`

`transform_set_local_matrix(t_entity_id, t_value)`

```lua
---@param t_entity_id integer
---@param t_value number
function transform_set_local_matrix(t_entity_id, t_value) end
```

### `transform_set_local_position`

`transform_set_local_position(t_entity_id, t_position)`

```lua
---@param t_entity_id integer
---@param t_position vec3
function transform_set_local_position(t_entity_id, t_position) end
```

### `transform_set_local_rotation`

`transform_set_local_rotation(t_entity_id, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_rotation vec3
function transform_set_local_rotation(t_entity_id, t_rotation) end
```

### `transform_set_local_rotation_quat`

`transform_set_local_rotation_quat(t_entity_id, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_rotation quat
function transform_set_local_rotation_quat(t_entity_id, t_rotation) end
```

### `transform_set_local_scale`

`transform_set_local_scale(t_entity_id, t_scale)`

```lua
---@param t_entity_id integer
---@param t_scale vec3
function transform_set_local_scale(t_entity_id, t_scale) end
```

### `transform_set_parent`

`transform_set_parent(t_entity_id, t_parent_id)`

```lua
---@param t_entity_id integer
---@param t_parent_id integer
function transform_set_parent(t_entity_id, t_parent_id) end
```

### `transform_set_parent_preserve_world`

`transform_set_parent_preserve_world(t_entity_id, t_parent_id)`

```lua
---@param t_entity_id integer
---@param t_parent_id integer
function transform_set_parent_preserve_world(t_entity_id, t_parent_id) end
```

### `transform_set_world_position`

`transform_set_world_position(t_entity_id, t_position)`

```lua
---@param t_entity_id integer
---@param t_position vec3
function transform_set_world_position(t_entity_id, t_position) end
```

### `transform_set_world_rotation`

`transform_set_world_rotation(t_entity_id, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_rotation vec3
function transform_set_world_rotation(t_entity_id, t_rotation) end
```

### `transform_set_world_rotation_quat`

`transform_set_world_rotation_quat(t_entity_id, t_quat)`

```lua
---@param t_entity_id integer
---@param t_quat quat
function transform_set_world_rotation_quat(t_entity_id, t_quat) end
```

### `transform_set_world_scale`

`transform_set_world_scale(t_entity_id, t_scale)`

```lua
---@param t_entity_id integer
---@param t_scale vec3
function transform_set_world_scale(t_entity_id, t_scale) end
```

### `transform_world_to_local_direction`

`transform_world_to_local_direction(t_entity_id, t_world_direction)`

```lua
---@param t_entity_id integer
---@param t_world_direction vec3
---@return vec3
function transform_world_to_local_direction(t_entity_id, t_world_direction) end
```

### `transform_world_to_local_point`

`transform_world_to_local_point(t_entity_id, t_world_point)`

```lua
---@param t_entity_id integer
---@param t_world_point vec3
---@return vec3
function transform_world_to_local_point(t_entity_id, t_world_point) end
```
