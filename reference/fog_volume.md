# Fog_volume

Script API functions in the `fog_volume` group.

### `fog_volume_get_backface_visibility`

`fog_volume_get_backface_visibility(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function fog_volume_get_backface_visibility(t_entity_id) end
```

### `fog_volume_get_color`

`fog_volume_get_color(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function fog_volume_get_color(t_entity_id) end
```

### `fog_volume_get_density`

`fog_volume_get_density(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function fog_volume_get_density(t_entity_id) end
```

### `fog_volume_get_end`

`fog_volume_get_end(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function fog_volume_get_end(t_entity_id) end
```

### `fog_volume_get_falloff_exp`

`fog_volume_get_falloff_exp(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function fog_volume_get_falloff_exp(t_entity_id) end
```

### `fog_volume_get_height_factor`

`fog_volume_get_height_factor(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function fog_volume_get_height_factor(t_entity_id) end
```

### `fog_volume_get_height_start`

`fog_volume_get_height_start(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function fog_volume_get_height_start(t_entity_id) end
```

### `fog_volume_get_start`

`fog_volume_get_start(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function fog_volume_get_start(t_entity_id) end
```

### `fog_volume_set_backface_visibility`

`fog_volume_set_backface_visibility(t_entity_id, t_backface_visibility)`

```lua
---@param t_entity_id integer
---@param t_backface_visibility boolean
function fog_volume_set_backface_visibility(t_entity_id, t_backface_visibility) end
```

### `fog_volume_set_color`

`fog_volume_set_color(t_entity_id, t_color)`

```lua
---@param t_entity_id integer
---@param t_color vec3
function fog_volume_set_color(t_entity_id, t_color) end
```

### `fog_volume_set_density`

`fog_volume_set_density(t_entity_id, t_density)`

```lua
---@param t_entity_id integer
---@param t_density number
function fog_volume_set_density(t_entity_id, t_density) end
```

### `fog_volume_set_end`

`fog_volume_set_end(t_entity_id, t_fog_end)`

```lua
---@param t_entity_id integer
---@param t_fog_end number
function fog_volume_set_end(t_entity_id, t_fog_end) end
```

### `fog_volume_set_falloff_exp`

`fog_volume_set_falloff_exp(t_entity_id, t_falloff_exp)`

```lua
---@param t_entity_id integer
---@param t_falloff_exp number
function fog_volume_set_falloff_exp(t_entity_id, t_falloff_exp) end
```

### `fog_volume_set_height_factor`

`fog_volume_set_height_factor(t_entity_id, t_height_factor)`

```lua
---@param t_entity_id integer
---@param t_height_factor number
function fog_volume_set_height_factor(t_entity_id, t_height_factor) end
```

### `fog_volume_set_height_start`

`fog_volume_set_height_start(t_entity_id, t_height_start)`

```lua
---@param t_entity_id integer
---@param t_height_start number
function fog_volume_set_height_start(t_entity_id, t_height_start) end
```

### `fog_volume_set_start`

`fog_volume_set_start(t_entity_id, t_fog_start)`

```lua
---@param t_entity_id integer
---@param t_fog_start number
function fog_volume_set_start(t_entity_id, t_fog_start) end
```
