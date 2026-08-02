# Mat3

Script API functions in the `mat3` group.

### `mat3`

`mat3(t_diagonal)`

```lua
---@param t_diagonal number
---@return mat3
function mat3(t_diagonal) end
```

### `mat3_determinant`

`mat3_determinant(t_mat)`

```lua
---@param t_mat mat3
---@return number
function mat3_determinant(t_mat) end
```

### `mat3_from_quat`

`mat3_from_quat(t_quat)`

```lua
---@param t_quat quat
---@return mat3
function mat3_from_quat(t_quat) end
```

### `mat3_identity`

`mat3_identity()`

```lua
---@return mat3
function mat3_identity() end
```

### `mat3_inverse`

`mat3_inverse(t_mat)`

```lua
---@param t_mat mat3
---@return mat3
function mat3_inverse(t_mat) end
```

### `mat3_mul`

`mat3_mul(t_a, t_b)`

```lua
---@param t_a mat3
---@param t_b mat3
---@return mat3
function mat3_mul(t_a, t_b) end
```

### `mat3_mul_vec3`

`mat3_mul_vec3(t_mat, t_vec)`

```lua
---@param t_mat mat3
---@param t_vec vec3
---@return vec3
function mat3_mul_vec3(t_mat, t_vec) end
```

### `mat3_transpose`

`mat3_transpose(t_mat)`

```lua
---@param t_mat mat3
---@return mat3
function mat3_transpose(t_mat) end
```
