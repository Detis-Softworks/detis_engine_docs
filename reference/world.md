# World

Script API functions in the `world` group.

### `world_broadcast_message`

`world_broadcast_message(t_message)`

```lua
---@param t_message string
function world_broadcast_message(t_message) end
```

### `world_call_entity_script_function`

`world_call_entity_script_function(t_entity_id, t_function_name)`

```lua
---@param t_entity_id integer
---@param t_function_name string
function world_call_entity_script_function(t_entity_id, t_function_name) end
```

### `world_call_script_function`

`world_call_script_function(t_function_name)`

```lua
---@param t_function_name string
function world_call_script_function(t_function_name) end
```

### `world_clone_entity`

`world_clone_entity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function world_clone_entity(t_entity_id) end
```

### `world_create_entity`

`world_create_entity(t_name)`

```lua
---@param t_name string?
---@return integer
function world_create_entity(t_name) end
```

### `world_despawn_entity`

`world_despawn_entity(t_entity_id, t_pool_name)`

```lua
---@param t_entity_id integer
---@param t_pool_name string
function world_despawn_entity(t_entity_id, t_pool_name) end
```

### `world_destroy_entity`

`world_destroy_entity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function world_destroy_entity(t_entity_id) end
```

### `world_get_current_camera`

`world_get_current_camera()`

```lua
---@return integer
function world_get_current_camera() end
```

### `world_get_current_world_file_path`

`world_get_current_world_file_path()`

```lua
---@return string
function world_get_current_world_file_path() end
```

### `world_get_entities`

`world_get_entities()`

```lua
---@return table
function world_get_entities() end
```

### `world_get_entities_by_name`

`world_get_entities_by_name(t_name_pattern)`

```lua
---@param t_name_pattern string
---@return table
function world_get_entities_by_name(t_name_pattern) end
```

### `world_get_entities_by_tag`

`world_get_entities_by_tag(t_tag)`

```lua
---@param t_tag string
---@return table
function world_get_entities_by_tag(t_tag) end
```

### `world_get_entities_with_component`

`world_get_entities_with_component(t_component_type)`

```lua
---@param t_component_type string
---@return table
function world_get_entities_with_component(t_component_type) end
```

### `world_get_entity_by_hierarchy_path`

`world_get_entity_by_hierarchy_path(t_entity_hierarchy_path)`

```lua
---@param t_entity_hierarchy_path string
---@return integer
function world_get_entity_by_hierarchy_path(t_entity_hierarchy_path) end
```

### `world_get_entity_by_id`

`world_get_entity_by_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function world_get_entity_by_id(t_entity_id) end
```

### `world_get_entity_by_name`

`world_get_entity_by_name(t_entity_name)`

```lua
---@param t_entity_name string
---@return integer
function world_get_entity_by_name(t_entity_name) end
```

### `world_get_entity_count`

`world_get_entity_count()`

```lua
---@return integer
function world_get_entity_count() end
```

### `world_get_entity_hierarchy_path`

`world_get_entity_hierarchy_path(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function world_get_entity_hierarchy_path(t_entity_id) end
```

### `world_get_function`

`world_get_function(t_function_name)`

```lua
---@param t_function_name string
---@return table
function world_get_function(t_function_name) end
```

### `world_get_has_script_parameter`

`world_get_has_script_parameter(t_param_name)`

```lua
---@param t_param_name string
---@return boolean
function world_get_has_script_parameter(t_param_name) end
```

### `world_get_script_parameter`

`world_get_script_parameter(t_param_name)`

```lua
---@param t_param_name string
---@return integer
function world_get_script_parameter(t_param_name) end
```

### `world_load_from_file`

`world_load_from_file(t_file_path)`

```lua
---@param t_file_path string
---@return boolean
function world_load_from_file(t_file_path) end
```

### `world_set_current_camera`

`world_set_current_camera(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function world_set_current_camera(t_entity_id) end
```

### `world_set_script_parameter`

`world_set_script_parameter(t_param_name, t_str_value)`

```lua
---@param t_param_name string
---@param t_str_value string|boolean|number
function world_set_script_parameter(t_param_name, t_str_value) end
```

### `world_spawn_entity`

`world_spawn_entity(t_pool_name, t_entity_name)`

```lua
---@param t_pool_name string
---@param t_entity_name string
---@return integer
function world_spawn_entity(t_pool_name, t_entity_name) end
```
