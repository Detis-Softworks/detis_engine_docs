# Light

Script API functions in the `light` group.

### `light_get_angle`

`light_get_angle(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_angle(t_entity_id) end
```

### `light_get_cast_shadows`

`light_get_cast_shadows(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function light_get_cast_shadows(t_entity_id) end
```

### `light_get_cast_specular`

`light_get_cast_specular(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function light_get_cast_specular(t_entity_id) end
```

### `light_get_color`

`light_get_color(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function light_get_color(t_entity_id) end
```

### `light_get_default_lumens`

`light_get_default_lumens(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_default_lumens(t_entity_id) end
```

### `light_get_default_temperature_k`

`light_get_default_temperature_k(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_default_temperature_k(t_entity_id) end
```

### `light_get_effective_color`

`light_get_effective_color(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function light_get_effective_color(t_entity_id) end
```

### `light_get_ignore_distance_culling`

`light_get_ignore_distance_culling(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function light_get_ignore_distance_culling(t_entity_id) end
```

### `light_get_lumens`

`light_get_lumens(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_lumens(t_entity_id) end
```

### `light_get_range`

`light_get_range(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_range(t_entity_id) end
```

### `light_get_shadow_bias`

`light_get_shadow_bias(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_shadow_bias(t_entity_id) end
```

### `light_get_shadow_blur`

`light_get_shadow_blur(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_shadow_blur(t_entity_id) end
```

### `light_get_shadow_normal_bias`

`light_get_shadow_normal_bias(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_shadow_normal_bias(t_entity_id) end
```

### `light_get_temperature_k`

`light_get_temperature_k(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function light_get_temperature_k(t_entity_id) end
```

### `light_get_type`

`light_get_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function light_get_type(t_entity_id) end
```

### `light_set_angle`

`light_set_angle(t_entity_id, t_angle_degrees)`

```lua
---@param t_entity_id integer
---@param t_angle_degrees number
function light_set_angle(t_entity_id, t_angle_degrees) end
```

### `light_set_cast_shadows`

`light_set_cast_shadows(t_entity_id, t_cast_shadows)`

```lua
---@param t_entity_id integer
---@param t_cast_shadows boolean
function light_set_cast_shadows(t_entity_id, t_cast_shadows) end
```

### `light_set_cast_specular`

`light_set_cast_specular(t_entity_id, t_cast_specular)`

```lua
---@param t_entity_id integer
---@param t_cast_specular boolean
function light_set_cast_specular(t_entity_id, t_cast_specular) end
```

### `light_set_color`

`light_set_color(t_entity_id, t_color)`

```lua
---@param t_entity_id integer
---@param t_color vec3
function light_set_color(t_entity_id, t_color) end
```

### `light_set_ignore_distance_culling`

`light_set_ignore_distance_culling(t_entity_id, t_ignore_distance_culling)`

```lua
---@param t_entity_id integer
---@param t_ignore_distance_culling boolean
function light_set_ignore_distance_culling(t_entity_id, t_ignore_distance_culling) end
```

### `light_set_lumens`

`light_set_lumens(t_entity_id, t_lumens)`

```lua
---@param t_entity_id integer
---@param t_lumens number
function light_set_lumens(t_entity_id, t_lumens) end
```

### `light_set_range`

`light_set_range(t_entity_id, t_range)`

```lua
---@param t_entity_id integer
---@param t_range number
function light_set_range(t_entity_id, t_range) end
```

### `light_set_shadow_bias`

`light_set_shadow_bias(t_entity_id, t_bias)`

```lua
---@param t_entity_id integer
---@param t_bias number
function light_set_shadow_bias(t_entity_id, t_bias) end
```

### `light_set_shadow_blur`

`light_set_shadow_blur(t_entity_id, t_blur)`

```lua
---@param t_entity_id integer
---@param t_blur number
function light_set_shadow_blur(t_entity_id, t_blur) end
```

### `light_set_shadow_normal_bias`

`light_set_shadow_normal_bias(t_entity_id, t_normal_bias)`

```lua
---@param t_entity_id integer
---@param t_normal_bias number
function light_set_shadow_normal_bias(t_entity_id, t_normal_bias) end
```

### `light_set_temperature_k`

`light_set_temperature_k(t_entity_id, t_temperature_k)`

```lua
---@param t_entity_id integer
---@param t_temperature_k number
function light_set_temperature_k(t_entity_id, t_temperature_k) end
```

### `light_set_type`

`light_set_type(t_entity_id, t_light_type)`

```lua
---@param t_entity_id integer
---@param t_light_type integer
function light_set_type(t_entity_id, t_light_type) end
```
