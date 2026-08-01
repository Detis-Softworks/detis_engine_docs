# Quat

Script API functions in the `quat` group.

### `quat`

`quat(t_w, t_x, t_y, t_z, ...)`

```lua
---@param t_w number
---@param t_x number
---@param t_y number
---@param t_z number
---@return quat
function quat(t_w, t_x, t_y, t_z, ...) end
```

### `quat_identity`

`quat_identity()`

```lua
---@return quat
function quat_identity() end
```

### `quat_from_euler`

`quat_from_euler(t_euler)`

```lua
---@param t_euler vec3
---@return quat
function quat_from_euler(t_euler) end
```

### `quat_from_axis_angle`

`quat_from_axis_angle(t_axis, t_angle)`

```lua
---@param t_axis vec3
---@param t_angle number
---@return quat
function quat_from_axis_angle(t_axis, t_angle) end
```

### `quat_from_look_at`

`quat_from_look_at(t_direction, t_up)`

```lua
---@param t_direction vec3
---@param t_up vec3
---@return quat
function quat_from_look_at(t_direction, t_up) end
```

### `quat_mul`

`quat_mul(t_a, t_b)`

```lua
---@param t_a quat
---@param t_b quat
---@return quat
function quat_mul(t_a, t_b) end
```

### `quat_conjugate`

`quat_conjugate(t_quat)`

```lua
---@param t_quat quat
---@return quat
function quat_conjugate(t_quat) end
```

### `quat_inverse`

`quat_inverse(t_quat)`

```lua
---@param t_quat quat
---@return quat
function quat_inverse(t_quat) end
```

### `quat_normalize`

`quat_normalize(t_quat)`

```lua
---@param t_quat quat
---@return quat
function quat_normalize(t_quat) end
```

### `quat_length`

`quat_length(t_quat)`

```lua
---@param t_quat quat
---@return number
function quat_length(t_quat) end
```

### `quat_dot`

`quat_dot(t_a, t_b)`

```lua
---@param t_a quat
---@param t_b quat
---@return number
function quat_dot(t_a, t_b) end
```

### `quat_slerp`

`quat_slerp(t_a, t_b, t_t)`

```lua
---@param t_a quat
---@param t_b quat
---@param t_t number
---@return quat
function quat_slerp(t_a, t_b, t_t) end
```

### `quat_to_euler`

`quat_to_euler(t_quat)`

```lua
---@param t_quat quat
---@return vec3
function quat_to_euler(t_quat) end
```

### `quat_to_axis_angle`

`quat_to_axis_angle(t_quat)`

```lua
---@param t_quat quat
---@return vec3
function quat_to_axis_angle(t_quat) end
```

### `quat_to_mat3`

`quat_to_mat3(t_quat)`

```lua
---@param t_quat quat
---@return mat3
function quat_to_mat3(t_quat) end
```

### `quat_to_mat4`

`quat_to_mat4(t_quat)`

```lua
---@param t_quat quat
---@return mat4
function quat_to_mat4(t_quat) end
```

### `quat_rotate_vec3`

`quat_rotate_vec3(t_quat, t_vec)`

```lua
---@param t_quat quat
---@param t_vec vec3
---@return vec3
function quat_rotate_vec3(t_quat, t_vec) end
```
