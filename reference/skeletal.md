# Skeletal

Script API functions in the `skeletal` group.

### `skeletal_get_socket_names`

`skeletal_get_socket_names(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function skeletal_get_socket_names(t_entity_id) end
```

### `skeletal_get_socket_world_position`

`skeletal_get_socket_world_position(t_entity_id, t_socket_name)`

```lua
---@param t_entity_id integer
---@param t_socket_name string
---@return vec3
function skeletal_get_socket_world_position(t_entity_id, t_socket_name) end
```

### `skeletal_get_socket_world_rotation`

`skeletal_get_socket_world_rotation(t_entity_id, t_socket_name)`

```lua
---@param t_entity_id integer
---@param t_socket_name string
---@return vec3
function skeletal_get_socket_world_rotation(t_entity_id, t_socket_name) end
```
