# Module

Script API functions in the `module` group.

### `call_function_handle`

`call_function_handle(t_table_1, ...)`

```lua
---@param t_table_1 table
function call_function_handle(t_table_1, ...) end
```

### `module_call_function`

`module_call_function(t_module_name, t_function_name, ...)`

```lua
---@param t_module_name string
---@param t_function_name string
function module_call_function(t_module_name, t_function_name, ...) end
```

### `module_get`

`module_get(t_module_name)`

```lua
---@param t_module_name string
---@return integer
function module_get(t_module_name) end
```

### `module_get_function`

`module_get_function(t_module_name, t_function_name)`

```lua
---@param t_module_name string
---@param t_function_name string
---@return table
function module_get_function(t_module_name, t_function_name) end
```

### `module_get_is_valid`

`module_get_is_valid(t_module_name)`

```lua
---@param t_module_name string
---@return boolean
function module_get_is_valid(t_module_name) end
```
