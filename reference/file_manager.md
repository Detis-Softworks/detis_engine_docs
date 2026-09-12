# File_manager

Script API functions in the `file_manager` group.

### `file_manager_get_absolute_path_relative_to_executable`

`file_manager_get_absolute_path_relative_to_executable(t_file_path)`

```lua
---@param t_file_path string
---@return string
function file_manager_get_absolute_path_relative_to_executable(t_file_path) end
```

### `file_manager_get_documents_path`

`file_manager_get_documents_path()`

```lua
---@return string
function file_manager_get_documents_path() end
```

### `file_manager_get_ini_bool`

`file_manager_get_ini_bool(t_table_1, t_section, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_default_value boolean
---@return boolean
function file_manager_get_ini_bool(t_table_1, t_section, t_key, t_default_value) end
```

### `file_manager_get_ini_float`

`file_manager_get_ini_float(t_table_1, t_section, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_default_value number?
---@return number
function file_manager_get_ini_float(t_table_1, t_section, t_key, t_default_value) end
```

### `file_manager_get_ini_int`

`file_manager_get_ini_int(t_table_1, t_section, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_default_value integer?
---@return integer
function file_manager_get_ini_int(t_table_1, t_section, t_key, t_default_value) end
```

### `file_manager_get_ini_string`

`file_manager_get_ini_string(t_table_1, t_section, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_default_value string?
---@return string
function file_manager_get_ini_string(t_table_1, t_section, t_key, t_default_value) end
```

### `file_manager_get_ini_vec2`

`file_manager_get_ini_vec2(t_table_1, t_section, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_default_value vec2
---@return vec2
function file_manager_get_ini_vec2(t_table_1, t_section, t_key, t_default_value) end
```

### `file_manager_get_ini_vec3`

`file_manager_get_ini_vec3(t_table_1, t_section, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_default_value vec3
---@return vec3
function file_manager_get_ini_vec3(t_table_1, t_section, t_key, t_default_value) end
```

### `file_manager_get_json_bool`

`file_manager_get_json_bool(t_table_1, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_default_value boolean
---@return boolean
function file_manager_get_json_bool(t_table_1, t_key, t_default_value) end
```

### `file_manager_get_json_float`

`file_manager_get_json_float(t_table_1, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_default_value number?
---@return number
function file_manager_get_json_float(t_table_1, t_key, t_default_value) end
```

### `file_manager_get_json_int`

`file_manager_get_json_int(t_table_1, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_default_value integer?
---@return integer
function file_manager_get_json_int(t_table_1, t_key, t_default_value) end
```

### `file_manager_get_json_string`

`file_manager_get_json_string(t_table_1, t_key, t_default_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_default_value string?
---@return string
function file_manager_get_json_string(t_table_1, t_key, t_default_value) end
```

### `file_manager_get_json_string_array`

`file_manager_get_json_string_array(t_table_1, t_key)`

```lua
---@param t_table_1 table
---@param t_key string
---@return table
function file_manager_get_json_string_array(t_table_1, t_key) end
```

### `file_manager_get_json_vec3`

`file_manager_get_json_vec3(t_table_1, t_key)`

```lua
---@param t_table_1 table
---@param t_key string
---@return vec3
function file_manager_get_json_vec3(t_table_1, t_key) end
```

### `file_manager_get_relative_path`

`file_manager_get_relative_path(t_file_path)`

```lua
---@param t_file_path string
---@return string
function file_manager_get_relative_path(t_file_path) end
```

### `file_manager_get_trimmed_string`

`file_manager_get_trimmed_string(t_value)`

```lua
---@param t_value string
---@return string
function file_manager_get_trimmed_string(t_value) end
```

### `file_manager_get_user_path`

`file_manager_get_user_path()`

```lua
---@return string
function file_manager_get_user_path() end
```

### `file_manager_load_ini`

`file_manager_load_ini(t_file_path)`

```lua
---@param t_file_path string
---@return table
function file_manager_load_ini(t_file_path) end
```

### `file_manager_load_json`

`file_manager_load_json(t_file_path)`

```lua
---@param t_file_path string
function file_manager_load_json(t_file_path) end
```

### `file_manager_save_ini`

`file_manager_save_ini(t_table_1, t_file_path)`

```lua
---@param t_table_1 table
---@param t_file_path string
---@return boolean
function file_manager_save_ini(t_table_1, t_file_path) end
```

### `file_manager_save_json`

`file_manager_save_json(t_table_1, t_file_path)`

```lua
---@param t_table_1 table
---@param t_file_path string
---@return boolean
function file_manager_save_json(t_table_1, t_file_path) end
```

### `file_manager_set_ini_bool`

`file_manager_set_ini_bool(t_table_1, t_section, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_value boolean
---@return table
function file_manager_set_ini_bool(t_table_1, t_section, t_key, t_value) end
```

### `file_manager_set_ini_float`

`file_manager_set_ini_float(t_table_1, t_section, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_value number
---@return table
function file_manager_set_ini_float(t_table_1, t_section, t_key, t_value) end
```

### `file_manager_set_ini_int`

`file_manager_set_ini_int(t_table_1, t_section, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_value integer
---@return table
function file_manager_set_ini_int(t_table_1, t_section, t_key, t_value) end
```

### `file_manager_set_ini_string`

`file_manager_set_ini_string(t_table_1, t_section, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_section string
---@param t_key string
---@param t_value string
---@return table
function file_manager_set_ini_string(t_table_1, t_section, t_key, t_value) end
```

### `file_manager_set_json_bool`

`file_manager_set_json_bool(t_table_1, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_value boolean
function file_manager_set_json_bool(t_table_1, t_key, t_value) end
```

### `file_manager_set_json_float`

`file_manager_set_json_float(t_table_1, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_value number
function file_manager_set_json_float(t_table_1, t_key, t_value) end
```

### `file_manager_set_json_int`

`file_manager_set_json_int(t_table_1, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_value integer
function file_manager_set_json_int(t_table_1, t_key, t_value) end
```

### `file_manager_set_json_string`

`file_manager_set_json_string(t_table_1, t_key, t_value)`

```lua
---@param t_table_1 table
---@param t_key string
---@param t_value string
function file_manager_set_json_string(t_table_1, t_key, t_value) end
```

### `file_manager_set_json_vec3`

`file_manager_set_json_vec3(t_table_1, t_key)`

```lua
---@param t_table_1 table
---@param t_key string
function file_manager_set_json_vec3(t_table_1, t_key) end
```
