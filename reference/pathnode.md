# Pathnode

Script API functions in the `pathnode` group.

### `pathnode_add_connection`

`pathnode_add_connection(t_entity_id, t_target_id)`

```lua
---@param t_entity_id integer
---@param t_target_id integer
function pathnode_add_connection(t_entity_id, t_target_id) end
```

### `pathnode_remove_connection`

`pathnode_remove_connection(t_entity_id, t_target_id)`

```lua
---@param t_entity_id integer
---@param t_target_id integer
function pathnode_remove_connection(t_entity_id, t_target_id) end
```

### `pathnode_get_connections`

`pathnode_get_connections(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function pathnode_get_connections(t_entity_id) end
```

### `pathnode_set_is_patrol`

`pathnode_set_is_patrol(t_entity_id, t_is_patrol)`

```lua
---@param t_entity_id integer
---@param t_is_patrol boolean
function pathnode_set_is_patrol(t_entity_id, t_is_patrol) end
```

### `pathnode_get_is_patrol`

`pathnode_get_is_patrol(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function pathnode_get_is_patrol(t_entity_id) end
```
