# Vec4

Script API functions in the `vec4` group.

### `vec4`

`vec4(t_x, t_y, t_z, t_w)`

```lua
---@param t_x number
---@param t_y number
---@param t_z number
---@param t_w number
---@return vec4
function vec4(t_x, t_y, t_z, t_w) end
```

### `vec4_add`

`vec4_add(t_a, t_b)`

```lua
---@param t_a vec4
---@param t_b vec4
---@return vec4
function vec4_add(t_a, t_b) end
```

### `vec4_distance`

`vec4_distance(t_a, t_b)`

```lua
---@param t_a vec4
---@param t_b vec4
---@return number
function vec4_distance(t_a, t_b) end
```

### `vec4_div`

`vec4_div(t_vec, t_scalar)`

```lua
---@param t_vec vec4
---@param t_scalar number|vec4
---@return vec4
function vec4_div(t_vec, t_scalar) end
```

### `vec4_dot`

`vec4_dot(t_a, t_b)`

```lua
---@param t_a vec4
---@param t_b vec4
---@return number
function vec4_dot(t_a, t_b) end
```

### `vec4_length`

`vec4_length(t_vec)`

```lua
---@param t_vec vec4
---@return number
function vec4_length(t_vec) end
```

### `vec4_length_squared`

`vec4_length_squared(t_vec)`

```lua
---@param t_vec vec4
---@return number
function vec4_length_squared(t_vec) end
```

### `vec4_lerp`

`vec4_lerp(t_a, t_b, t_t)`

```lua
---@param t_a vec4
---@param t_b vec4
---@param t_t number
---@return vec4
function vec4_lerp(t_a, t_b, t_t) end
```

### `vec4_mul`

`vec4_mul(t_vec, t_scalar)`

```lua
---@param t_vec vec4
---@param t_scalar number|vec4
---@return vec4
function vec4_mul(t_vec, t_scalar) end
```

### `vec4_normalize`

`vec4_normalize(t_vec)`

```lua
---@param t_vec vec4
---@return vec4
function vec4_normalize(t_vec) end
```

### `vec4_sub`

`vec4_sub(t_a, t_b)`

```lua
---@param t_a vec4
---@param t_b vec4
---@return vec4
function vec4_sub(t_a, t_b) end
```
