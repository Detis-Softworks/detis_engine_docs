# Mesh

Script API functions in the `mesh` group.

### `mesh_get_casts_shadows`

`mesh_get_casts_shadows(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function mesh_get_casts_shadows(t_entity_id) end
```

### `mesh_get_file`

`mesh_get_file(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function mesh_get_file(t_entity_id) end
```

### `mesh_get_is_unique_instance`

`mesh_get_is_unique_instance(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function mesh_get_is_unique_instance(t_entity_id) end
```

### `mesh_get_material_file`

`mesh_get_material_file(t_entity_id, t_integer_2)`

```lua
---@param t_entity_id integer
---@param t_integer_2 integer
---@return string
function mesh_get_material_file(t_entity_id, t_integer_2) end
```

### `mesh_get_uniform_bool`

`mesh_get_uniform_bool(t_entity_id, t_uniform_name, t_integer_3)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_integer_3 integer
---@return boolean
function mesh_get_uniform_bool(t_entity_id, t_uniform_name, t_integer_3) end
```

### `mesh_get_uniform_float`

`mesh_get_uniform_float(t_entity_id, t_uniform_name, t_integer_3)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_integer_3 integer
---@return number
function mesh_get_uniform_float(t_entity_id, t_uniform_name, t_integer_3) end
```

### `mesh_get_uniform_vec2`

`mesh_get_uniform_vec2(t_entity_id, t_uniform_name, t_integer_3)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_integer_3 integer
---@return vec2
function mesh_get_uniform_vec2(t_entity_id, t_uniform_name, t_integer_3) end
```

### `mesh_get_uniform_vec3`

`mesh_get_uniform_vec3(t_entity_id, t_uniform_name, t_integer_3)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_integer_3 integer
---@return vec3
function mesh_get_uniform_vec3(t_entity_id, t_uniform_name, t_integer_3) end
```

### `mesh_get_uniform_vec4`

`mesh_get_uniform_vec4(t_entity_id, t_uniform_name, t_integer_3)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_integer_3 integer
---@return vec4
function mesh_get_uniform_vec4(t_entity_id, t_uniform_name, t_integer_3) end
```

### `mesh_get_visible`

`mesh_get_visible(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function mesh_get_visible(t_entity_id) end
```

### `mesh_set_casts_shadows`

`mesh_set_casts_shadows(t_entity_id, t_casts_shadows)`

```lua
---@param t_entity_id integer
---@param t_casts_shadows boolean
function mesh_set_casts_shadows(t_entity_id, t_casts_shadows) end
```

### `mesh_set_file`

`mesh_set_file(t_entity_id, t_mesh_file)`

```lua
---@param t_entity_id integer
---@param t_mesh_file string
function mesh_set_file(t_entity_id, t_mesh_file) end
```

### `mesh_set_material_file`

`mesh_set_material_file(t_entity_id, t_index, t_material_file)`

```lua
---@param t_entity_id integer
---@param t_index integer
---@param t_material_file string
function mesh_set_material_file(t_entity_id, t_index, t_material_file) end
```

### `mesh_set_uniform_bool`

`mesh_set_uniform_bool(t_entity_id, t_uniform_name, t_value, t_integer_4)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value boolean
---@param t_integer_4 integer
function mesh_set_uniform_bool(t_entity_id, t_uniform_name, t_value, t_integer_4) end
```

### `mesh_set_uniform_float`

`mesh_set_uniform_float(t_entity_id, t_uniform_name, t_value, t_integer_4)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value number
---@param t_integer_4 integer
function mesh_set_uniform_float(t_entity_id, t_uniform_name, t_value, t_integer_4) end
```

### `mesh_set_uniform_vec2`

`mesh_set_uniform_vec2(t_entity_id, t_uniform_name, t_value, t_integer_4)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec2
---@param t_integer_4 integer
function mesh_set_uniform_vec2(t_entity_id, t_uniform_name, t_value, t_integer_4) end
```

### `mesh_set_uniform_vec3`

`mesh_set_uniform_vec3(t_entity_id, t_uniform_name, t_value, t_integer_4)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec3
---@param t_integer_4 integer
function mesh_set_uniform_vec3(t_entity_id, t_uniform_name, t_value, t_integer_4) end
```

### `mesh_set_uniform_vec4`

`mesh_set_uniform_vec4(t_entity_id, t_uniform_name, t_value, t_integer_4)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec4
---@param t_integer_4 integer
function mesh_set_uniform_vec4(t_entity_id, t_uniform_name, t_value, t_integer_4) end
```

### `mesh_set_unique_instance`

`mesh_set_unique_instance(t_entity_id, t_unique)`

```lua
---@param t_entity_id integer
---@param t_unique boolean
function mesh_set_unique_instance(t_entity_id, t_unique) end
```

### `mesh_set_visible`

`mesh_set_visible(t_entity_id, t_visible)`

```lua
---@param t_entity_id integer
---@param t_visible boolean
function mesh_set_visible(t_entity_id, t_visible) end
```
