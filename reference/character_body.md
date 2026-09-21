# Character_body

Script API functions in the `character_body` group.

### `character_body_get_can_jump`

`character_body_get_can_jump(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function character_body_get_can_jump(t_entity_id) end
```

### `character_body_get_capsule_height`

`character_body_get_capsule_height(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_capsule_height(t_entity_id) end
```

### `character_body_get_capsule_radius`

`character_body_get_capsule_radius(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_capsule_radius(t_entity_id) end
```

### `character_body_get_fall_speed`

`character_body_get_fall_speed(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_fall_speed(t_entity_id) end
```

### `character_body_get_gravity`

`character_body_get_gravity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function character_body_get_gravity(t_entity_id) end
```

### `character_body_get_ground_normal`

`character_body_get_ground_normal(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function character_body_get_ground_normal(t_entity_id) end
```

### `character_body_get_jump_speed`

`character_body_get_jump_speed(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_jump_speed(t_entity_id) end
```

### `character_body_get_linear_damping`

`character_body_get_linear_damping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_linear_damping(t_entity_id) end
```

### `character_body_get_linear_velocity`

`character_body_get_linear_velocity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function character_body_get_linear_velocity(t_entity_id) end
```

### `character_body_get_max_penetration_depth`

`character_body_get_max_penetration_depth(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_max_penetration_depth(t_entity_id) end
```

### `character_body_get_max_slope`

`character_body_get_max_slope(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_max_slope(t_entity_id) end
```

### `character_body_get_on_ground`

`character_body_get_on_ground(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function character_body_get_on_ground(t_entity_id) end
```

### `character_body_get_step_height`

`character_body_get_step_height(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function character_body_get_step_height(t_entity_id) end
```

### `character_body_get_up_vector`

`character_body_get_up_vector(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function character_body_get_up_vector(t_entity_id) end
```

### `character_body_jump`

`character_body_jump(t_entity_id, t_direction)`

```lua
---@param t_entity_id integer
---@param t_direction vec3
function character_body_jump(t_entity_id, t_direction) end
```

### `character_body_reset`

`character_body_reset(t_entity_id)`

```lua
---@param t_entity_id integer
function character_body_reset(t_entity_id) end
```

### `character_body_set_capsule_height`

`character_body_set_capsule_height(t_entity_id, t_height)`

```lua
---@param t_entity_id integer
---@param t_height number
function character_body_set_capsule_height(t_entity_id, t_height) end
```

### `character_body_set_capsule_radius`

`character_body_set_capsule_radius(t_entity_id, t_radius)`

```lua
---@param t_entity_id integer
---@param t_radius number
function character_body_set_capsule_radius(t_entity_id, t_radius) end
```

### `character_body_set_capsule_shape`

`character_body_set_capsule_shape(t_entity_id, t_height, t_offset_y)`

```lua
---@param t_entity_id integer
---@param t_height number
---@param t_offset_y number
---@return boolean
function character_body_set_capsule_shape(t_entity_id, t_height, t_offset_y) end
```

### `character_body_set_fall_speed`

`character_body_set_fall_speed(t_entity_id, t_fall_speed)`

```lua
---@param t_entity_id integer
---@param t_fall_speed number
function character_body_set_fall_speed(t_entity_id, t_fall_speed) end
```

### `character_body_set_gravity`

`character_body_set_gravity(t_entity_id, t_gravity)`

```lua
---@param t_entity_id integer
---@param t_gravity vec3
function character_body_set_gravity(t_entity_id, t_gravity) end
```

### `character_body_set_jump_speed`

`character_body_set_jump_speed(t_entity_id, t_jump_speed)`

```lua
---@param t_entity_id integer
---@param t_jump_speed number
function character_body_set_jump_speed(t_entity_id, t_jump_speed) end
```

### `character_body_set_linear_damping`

`character_body_set_linear_damping(t_entity_id, t_damping)`

```lua
---@param t_entity_id integer
---@param t_damping number
function character_body_set_linear_damping(t_entity_id, t_damping) end
```

### `character_body_set_linear_velocity`

`character_body_set_linear_velocity(t_entity_id, t_velocity)`

```lua
---@param t_entity_id integer
---@param t_velocity vec3
function character_body_set_linear_velocity(t_entity_id, t_velocity) end
```

### `character_body_set_max_penetration_depth`

`character_body_set_max_penetration_depth(t_entity_id, t_depth)`

```lua
---@param t_entity_id integer
---@param t_depth number
function character_body_set_max_penetration_depth(t_entity_id, t_depth) end
```

### `character_body_set_max_slope`

`character_body_set_max_slope(t_entity_id, t_max_slope_degrees)`

```lua
---@param t_entity_id integer
---@param t_max_slope_degrees number
function character_body_set_max_slope(t_entity_id, t_max_slope_degrees) end
```

### `character_body_set_step_height`

`character_body_set_step_height(t_entity_id, t_step_height)`

```lua
---@param t_entity_id integer
---@param t_step_height number
function character_body_set_step_height(t_entity_id, t_step_height) end
```

### `character_body_set_up_vector`

`character_body_set_up_vector(t_entity_id, t_up_vector)`

```lua
---@param t_entity_id integer
---@param t_up_vector vec3
function character_body_set_up_vector(t_entity_id, t_up_vector) end
```

### `character_body_set_velocity_for_time_interval`

`character_body_set_velocity_for_time_interval(t_entity_id, t_velocity, t_time_interval)`

```lua
---@param t_entity_id integer
---@param t_velocity vec3
---@param t_time_interval number
function character_body_set_velocity_for_time_interval(t_entity_id, t_velocity, t_time_interval) end
```

### `character_body_set_walk_direction`

`character_body_set_walk_direction(t_entity_id, t_direction)`

```lua
---@param t_entity_id integer
---@param t_direction vec3
function character_body_set_walk_direction(t_entity_id, t_direction) end
```

### `character_body_set_world_yaw`

`character_body_set_world_yaw(t_entity_id, t_yaw_radians)`

```lua
---@param t_entity_id integer
---@param t_yaw_radians number
function character_body_set_world_yaw(t_entity_id, t_yaw_radians) end
```

### `character_body_warp`

`character_body_warp(t_entity_id, t_position)`

```lua
---@param t_entity_id integer
---@param t_position vec3
function character_body_warp(t_entity_id, t_position) end
```
