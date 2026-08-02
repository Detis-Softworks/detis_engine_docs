# Particle_system

Script API functions in the `particle_system` group.

### `particle_system_clear`

`particle_system_clear(t_entity_id)`

```lua
---@param t_entity_id integer
function particle_system_clear(t_entity_id) end
```

### `particle_system_get_culling_distance`

`particle_system_get_culling_distance(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function particle_system_get_culling_distance(t_entity_id) end
```

### `particle_system_get_emission_rate`

`particle_system_get_emission_rate(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function particle_system_get_emission_rate(t_entity_id) end
```

### `particle_system_get_is_playing`

`particle_system_get_is_playing(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function particle_system_get_is_playing(t_entity_id) end
```

### `particle_system_get_lod_far_distance`

`particle_system_get_lod_far_distance(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function particle_system_get_lod_far_distance(t_entity_id) end
```

### `particle_system_get_lod_far_skip`

`particle_system_get_lod_far_skip(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function particle_system_get_lod_far_skip(t_entity_id) end
```

### `particle_system_get_lod_mid_distance`

`particle_system_get_lod_mid_distance(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function particle_system_get_lod_mid_distance(t_entity_id) end
```

### `particle_system_get_lod_mid_skip`

`particle_system_get_lod_mid_skip(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function particle_system_get_lod_mid_skip(t_entity_id) end
```

### `particle_system_get_lod_throttling`

`particle_system_get_lod_throttling(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function particle_system_get_lod_throttling(t_entity_id) end
```

### `particle_system_get_loop`

`particle_system_get_loop(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function particle_system_get_loop(t_entity_id) end
```

### `particle_system_get_material_file`

`particle_system_get_material_file(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function particle_system_get_material_file(t_entity_id) end
```

### `particle_system_get_max_particles`

`particle_system_get_max_particles(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function particle_system_get_max_particles(t_entity_id) end
```

### `particle_system_get_max_rendered`

`particle_system_get_max_rendered(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function particle_system_get_max_rendered(t_entity_id) end
```

### `particle_system_get_nearest_only`

`particle_system_get_nearest_only(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function particle_system_get_nearest_only(t_entity_id) end
```

### `particle_system_get_uniform_bool`

`particle_system_get_uniform_bool(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return boolean
function particle_system_get_uniform_bool(t_entity_id, t_uniform_name) end
```

### `particle_system_get_uniform_float`

`particle_system_get_uniform_float(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return number
function particle_system_get_uniform_float(t_entity_id, t_uniform_name) end
```

### `particle_system_get_uniform_vec3`

`particle_system_get_uniform_vec3(t_entity_id, t_uniform_name)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@return vec3
function particle_system_get_uniform_vec3(t_entity_id, t_uniform_name) end
```

### `particle_system_play`

`particle_system_play(t_entity_id)`

```lua
---@param t_entity_id integer
function particle_system_play(t_entity_id) end
```

### `particle_system_restart`

`particle_system_restart(t_entity_id)`

```lua
---@param t_entity_id integer
function particle_system_restart(t_entity_id) end
```

### `particle_system_set_culling_distance`

`particle_system_set_culling_distance(t_entity_id, t_distance)`

```lua
---@param t_entity_id integer
---@param t_distance number
function particle_system_set_culling_distance(t_entity_id, t_distance) end
```

### `particle_system_set_emission_rate`

`particle_system_set_emission_rate(t_entity_id, t_rate)`

```lua
---@param t_entity_id integer
---@param t_rate number
function particle_system_set_emission_rate(t_entity_id, t_rate) end
```

### `particle_system_set_lod_far_distance`

`particle_system_set_lod_far_distance(t_entity_id, t_distance)`

```lua
---@param t_entity_id integer
---@param t_distance number
function particle_system_set_lod_far_distance(t_entity_id, t_distance) end
```

### `particle_system_set_lod_far_skip`

`particle_system_set_lod_far_skip(t_entity_id, t_frames)`

```lua
---@param t_entity_id integer
---@param t_frames integer
function particle_system_set_lod_far_skip(t_entity_id, t_frames) end
```

### `particle_system_set_lod_mid_distance`

`particle_system_set_lod_mid_distance(t_entity_id, t_distance)`

```lua
---@param t_entity_id integer
---@param t_distance number
function particle_system_set_lod_mid_distance(t_entity_id, t_distance) end
```

### `particle_system_set_lod_mid_skip`

`particle_system_set_lod_mid_skip(t_entity_id, t_frames)`

```lua
---@param t_entity_id integer
---@param t_frames integer
function particle_system_set_lod_mid_skip(t_entity_id, t_frames) end
```

### `particle_system_set_lod_throttling`

`particle_system_set_lod_throttling(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function particle_system_set_lod_throttling(t_entity_id, t_enabled) end
```

### `particle_system_set_loop`

`particle_system_set_loop(t_entity_id, t_loop)`

```lua
---@param t_entity_id integer
---@param t_loop boolean
function particle_system_set_loop(t_entity_id, t_loop) end
```

### `particle_system_set_material_file`

`particle_system_set_material_file(t_entity_id, t_material_file)`

```lua
---@param t_entity_id integer
---@param t_material_file string
function particle_system_set_material_file(t_entity_id, t_material_file) end
```

### `particle_system_set_max_particles`

`particle_system_set_max_particles(t_entity_id, t_count)`

```lua
---@param t_entity_id integer
---@param t_count integer
function particle_system_set_max_particles(t_entity_id, t_count) end
```

### `particle_system_set_max_rendered`

`particle_system_set_max_rendered(t_entity_id, t_count)`

```lua
---@param t_entity_id integer
---@param t_count integer
function particle_system_set_max_rendered(t_entity_id, t_count) end
```

### `particle_system_set_nearest_only`

`particle_system_set_nearest_only(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function particle_system_set_nearest_only(t_entity_id, t_enabled) end
```

### `particle_system_set_uniform_bool`

`particle_system_set_uniform_bool(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value boolean
function particle_system_set_uniform_bool(t_entity_id, t_uniform_name, t_value) end
```

### `particle_system_set_uniform_float`

`particle_system_set_uniform_float(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value number
function particle_system_set_uniform_float(t_entity_id, t_uniform_name, t_value) end
```

### `particle_system_set_uniform_vec3`

`particle_system_set_uniform_vec3(t_entity_id, t_uniform_name, t_value)`

```lua
---@param t_entity_id integer
---@param t_uniform_name string
---@param t_value vec3
function particle_system_set_uniform_vec3(t_entity_id, t_uniform_name, t_value) end
```

### `particle_system_stop`

`particle_system_stop(t_entity_id)`

```lua
---@param t_entity_id integer
function particle_system_stop(t_entity_id) end
```
