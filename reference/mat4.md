# Mat4

Script API functions in the `mat4` group.

### `mat4`

`mat4(t_diagonal, ...)`

```lua
---@param t_diagonal number
---@return mat4
function mat4(t_diagonal, ...) end
```

### `mat4_identity`

`mat4_identity()`

```lua
---@return mat4
function mat4_identity() end
```

### `mat4_translate`

`mat4_translate(t_mat, t_translation)`

```lua
---@param t_mat mat4
---@param t_translation vec3
---@return mat4
function mat4_translate(t_mat, t_translation) end
```

### `mat4_rotate`

`mat4_rotate(t_mat, t_angle, t_axis)`

```lua
---@param t_mat mat4
---@param t_angle number
---@param t_axis vec3
---@return mat4
function mat4_rotate(t_mat, t_angle, t_axis) end
```

### `mat4_scale`

`mat4_scale(t_mat, t_scale)`

```lua
---@param t_mat mat4
---@param t_scale vec3
---@return mat4
function mat4_scale(t_mat, t_scale) end
```

### `mat4_look_at`

`mat4_look_at(t_eye, t_center, t_up)`

```lua
---@param t_eye vec3
---@param t_center vec3
---@param t_up vec3
---@return mat4
function mat4_look_at(t_eye, t_center, t_up) end
```

### `mat4_perspective`

`mat4_perspective(t_fovy, t_aspect, t_near_val, t_far_val)`

```lua
---@param t_fovy number
---@param t_aspect number
---@param t_near_val number
---@param t_far_val number
---@return mat4
function mat4_perspective(t_fovy, t_aspect, t_near_val, t_far_val) end
```

### `mat4_ortho`

`mat4_ortho(t_left, t_right, t_bottom, t_top, t_near_val, t_far_val)`

```lua
---@param t_left number
---@param t_right number
---@param t_bottom number
---@param t_top number
---@param t_near_val number
---@param t_far_val number
---@return mat4
function mat4_ortho(t_left, t_right, t_bottom, t_top, t_near_val, t_far_val) end
```

### `mat4_from_quat`

`mat4_from_quat(t_quat)`

```lua
---@param t_quat quat
---@return mat4
function mat4_from_quat(t_quat) end
```

### `mat4_mul`

`mat4_mul(t_a, t_b)`

```lua
---@param t_a mat4
---@param t_b mat4
---@return mat4
function mat4_mul(t_a, t_b) end
```

### `mat4_mul_vec4`

`mat4_mul_vec4(t_mat, t_vec)`

```lua
---@param t_mat mat4
---@param t_vec vec4
---@return vec4
function mat4_mul_vec4(t_mat, t_vec) end
```

### `mat4_transpose`

`mat4_transpose(t_mat)`

```lua
---@param t_mat mat4
---@return mat4
function mat4_transpose(t_mat) end
```

### `mat4_inverse`

`mat4_inverse(t_mat)`

```lua
---@param t_mat mat4
---@return mat4
function mat4_inverse(t_mat) end
```

### `mat4_determinant`

`mat4_determinant(t_mat)`

```lua
---@param t_mat mat4
---@return number
function mat4_determinant(t_mat) end
```
