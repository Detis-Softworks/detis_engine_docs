# Vec3

Script API functions in the `vec3` group.

### `vec3`

`vec3(t_x, t_y, t_z, ...)`

```lua
---@param t_x number
---@param t_y number
---@param t_z number
---@return vec3
function vec3(t_x, t_y, t_z, ...) end
```

### `vec3_add`

`vec3_add(t_a, t_b)`

```lua
---@param t_a vec3
---@param t_b vec3
---@return vec3
function vec3_add(t_a, t_b) end
```

### `vec3_sub`

`vec3_sub(t_a, t_b)`

```lua
---@param t_a vec3
---@param t_b vec3
---@return vec3
function vec3_sub(t_a, t_b) end
```

### `vec3_mul`

`vec3_mul(t_vec, t_scalar)`

```lua
---@param t_vec vec3
---@param t_scalar number|vec3
---@return vec3
function vec3_mul(t_vec, t_scalar) end
```

### `vec3_div`

`vec3_div(t_vec, t_scalar)`

```lua
---@param t_vec vec3
---@param t_scalar number|vec3
---@return vec3
function vec3_div(t_vec, t_scalar) end
```

### `vec3_dot`

`vec3_dot(t_a, t_b)`

```lua
---@param t_a vec3
---@param t_b vec3
---@return number
function vec3_dot(t_a, t_b) end
```

### `vec3_cross`

`vec3_cross(t_a, t_b)`

```lua
---@param t_a vec3
---@param t_b vec3
---@return vec3
function vec3_cross(t_a, t_b) end
```

### `vec3_length`

`vec3_length(t_vec)`

```lua
---@param t_vec vec3
---@return number
function vec3_length(t_vec) end
```

### `vec3_length_squared`

`vec3_length_squared(t_vec)`

```lua
---@param t_vec vec3
---@return number
function vec3_length_squared(t_vec) end
```

### `vec3_normalize`

`vec3_normalize(t_vec)`

```lua
---@param t_vec vec3
---@return vec3
function vec3_normalize(t_vec) end
```

### `vec3_distance`

`vec3_distance(t_a, t_b)`

```lua
---@param t_a vec3
---@param t_b vec3
---@return number
function vec3_distance(t_a, t_b) end
```

### `vec3_lerp`

`vec3_lerp(t_a, t_b, t_t)`

```lua
---@param t_a vec3
---@param t_b vec3
---@param t_t number
---@return vec3
function vec3_lerp(t_a, t_b, t_t) end
```

### `vec3_reflect`

`vec3_reflect(t_incident, t_normal)`

```lua
---@param t_incident vec3
---@param t_normal vec3
---@return vec3
function vec3_reflect(t_incident, t_normal) end
```

### `vec3_refract`

`vec3_refract(t_incident, t_normal, t_eta)`

```lua
---@param t_incident vec3
---@param t_normal vec3
---@param t_eta number
---@return vec3
function vec3_refract(t_incident, t_normal, t_eta) end
```
