# Billboard

Script API functions in the `billboard` group.

### `billboard_get_constant_screen_size`

`billboard_get_constant_screen_size(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function billboard_get_constant_screen_size(t_entity_id) end
```

### `billboard_get_is_unique_instance`

`billboard_get_is_unique_instance(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function billboard_get_is_unique_instance(t_entity_id) end
```

### `billboard_get_material_file`

`billboard_get_material_file(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function billboard_get_material_file(t_entity_id) end
```

### `billboard_get_type`

`billboard_get_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function billboard_get_type(t_entity_id) end
```

### `billboard_get_uniform_bool`

`billboard_get_uniform_bool(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return boolean
function billboard_get_uniform_bool(t_entity_id, t_uniform_name) end
```

### `billboard_get_uniform_float`

`billboard_get_uniform_float(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return number
function billboard_get_uniform_float(t_entity_id, t_uniform_name) end
```

### `billboard_get_uniform_vec2`

`billboard_get_uniform_vec2(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return vec2
function billboard_get_uniform_vec2(t_entity_id, t_uniform_name) end
```

### `billboard_get_uniform_vec3`

`billboard_get_uniform_vec3(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return vec3
function billboard_get_uniform_vec3(t_entity_id, t_uniform_name) end
```

### `billboard_get_uniform_vec4`

`billboard_get_uniform_vec4(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return vec4
function billboard_get_uniform_vec4(t_entity_id, t_uniform_name) end
```

### `billboard_set_constant_screen_size`

`billboard_set_constant_screen_size(t_entity_id, t_constant)`

```lua
---@param t_entity_id integer
---@param t_constant boolean
function billboard_set_constant_screen_size(t_entity_id, t_constant) end
```

### `billboard_set_material_file`

`billboard_set_material_file(t_entity_id, t_file)`

```lua
---@param t_entity_id integer
---@param t_file string
function billboard_set_material_file(t_entity_id, t_file) end
```

### `billboard_set_type`

`billboard_set_type(t_entity_id, t_billboard_type)`

```lua
---@param t_entity_id integer
---@param t_billboard_type integer
function billboard_set_type(t_entity_id, t_billboard_type) end
```

### `billboard_set_uniform_bool`

`billboard_set_uniform_bool(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value boolean
function billboard_set_uniform_bool(t_entity_id, t_uniform_name, t_value) end
```

### `billboard_set_uniform_float`

`billboard_set_uniform_float(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value number
function billboard_set_uniform_float(t_entity_id, t_uniform_name, t_value) end
```

### `billboard_set_uniform_vec2`

`billboard_set_uniform_vec2(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec2
function billboard_set_uniform_vec2(t_entity_id, t_uniform_name, t_value) end
```

### `billboard_set_uniform_vec3`

`billboard_set_uniform_vec3(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec3
function billboard_set_uniform_vec3(t_entity_id, t_uniform_name, t_value) end
```

### `billboard_set_uniform_vec4`

`billboard_set_uniform_vec4(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec4
function billboard_set_uniform_vec4(t_entity_id, t_uniform_name, t_value) end
```

### `billboard_set_unique_instance`

`billboard_set_unique_instance(t_entity_id, t_unique)`

```lua
---@param t_entity_id integer
---@param t_unique boolean
function billboard_set_unique_instance(t_entity_id, t_unique) end
```
