# Script

Script API functions in the `script` group.

### `script_call_function`

`script_call_function(t_entity_id, t_function_name)`

```lua
---@param t_entity_id integer
---@param t_function_name string
---@return boolean
function script_call_function(t_entity_id, t_function_name) end
```

### `script_get_file_path`

`script_get_file_path(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function script_get_file_path(t_entity_id) end
```

### `script_get_has_parameter`

`script_get_has_parameter(t_entity_id, t_param_name)`

```lua
---@param t_entity_id integer
---@param t_param_name string
---@return boolean
function script_get_has_parameter(t_entity_id, t_param_name) end
```

### `script_get_parameter`

`script_get_parameter(t_entity_id, t_param_name)`

```lua
---@param t_entity_id integer
---@param t_param_name string
---@return string
function script_get_parameter(t_entity_id, t_param_name) end
```

### `script_reload`

`script_reload(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function script_reload(t_entity_id) end
```

### `script_set_file_path`

`script_set_file_path(t_entity_id, t_file_path)`

```lua
---@param t_entity_id integer
---@param t_file_path string
function script_set_file_path(t_entity_id, t_file_path) end
```

### `script_set_parameter`

`script_set_parameter(t_entity_id, t_param_name, t_param_value)`

```lua
---@param t_entity_id integer
---@param t_param_name string
---@param t_param_value string
function script_set_parameter(t_entity_id, t_param_name, t_param_value) end
```
