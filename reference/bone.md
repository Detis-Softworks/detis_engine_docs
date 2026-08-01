# Bone

Script API functions in the `bone` group.

### `bone_attachment_get_is_active`

`bone_attachment_get_is_active(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function bone_attachment_get_is_active(t_entity_id) end
```

### `bone_attachment_set_active`

`bone_attachment_set_active(t_entity_id, t_active)`

```lua
---@param t_entity_id integer
---@param t_active boolean
function bone_attachment_set_active(t_entity_id, t_active) end
```

### `bone_attachment_get_target_entity_id`

`bone_attachment_get_target_entity_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function bone_attachment_get_target_entity_id(t_entity_id) end
```

### `bone_attachment_set_target_entity_id`

`bone_attachment_set_target_entity_id(t_entity_id, t_target_entity_id)`

```lua
---@param t_entity_id integer
---@param t_target_entity_id integer
function bone_attachment_set_target_entity_id(t_entity_id, t_target_entity_id) end
```

### `bone_attachment_get_socket_name`

`bone_attachment_get_socket_name(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function bone_attachment_get_socket_name(t_entity_id) end
```

### `bone_attachment_set_socket_name`

`bone_attachment_set_socket_name(t_entity_id, t_socket_name)`

```lua
---@param t_entity_id integer
---@param t_socket_name string
function bone_attachment_set_socket_name(t_entity_id, t_socket_name) end
```

### `bone_attachment_set_target`

`bone_attachment_set_target(t_entity_id, t_target_entity_id, t_socket_name)`

```lua
---@param t_entity_id integer
---@param t_target_entity_id integer
---@param t_socket_name string
function bone_attachment_set_target(t_entity_id, t_target_entity_id, t_socket_name) end
```

### `bone_attachment_detach`

`bone_attachment_detach(t_entity_id)`

```lua
---@param t_entity_id integer
function bone_attachment_detach(t_entity_id) end
```

### `bone_attachment_get_local_position`

`bone_attachment_get_local_position(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function bone_attachment_get_local_position(t_entity_id) end
```

### `bone_attachment_set_local_position`

`bone_attachment_set_local_position(t_entity_id, t_position)`

```lua
---@param t_entity_id integer
---@param t_position vec3
function bone_attachment_set_local_position(t_entity_id, t_position) end
```

### `bone_attachment_get_local_rotation`

`bone_attachment_get_local_rotation(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function bone_attachment_get_local_rotation(t_entity_id) end
```

### `bone_attachment_set_local_rotation`

`bone_attachment_set_local_rotation(t_entity_id, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_rotation vec3
function bone_attachment_set_local_rotation(t_entity_id, t_rotation) end
```

### `bone_attachment_get_local_scale`

`bone_attachment_get_local_scale(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function bone_attachment_get_local_scale(t_entity_id) end
```

### `bone_attachment_set_local_scale`

`bone_attachment_set_local_scale(t_entity_id, t_scale)`

```lua
---@param t_entity_id integer
---@param t_scale vec3
function bone_attachment_set_local_scale(t_entity_id, t_scale) end
```
