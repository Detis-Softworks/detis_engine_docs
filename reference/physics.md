# Physics

Script API functions in the `physics` group.

### `physics_activate_all_dynamic_bodies`

`physics_activate_all_dynamic_bodies()`

```lua
function physics_activate_all_dynamic_bodies() end
```

### `physics_box_sweep`

`physics_box_sweep(t_from, t_to, t_half_extents, t_table_4, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_half_extents vec3
---@param t_table_4 table
---@param t_include_mode boolean
---@return table
function physics_box_sweep(t_from, t_to, t_half_extents, t_table_4, t_include_mode) end
```

### `physics_capsule_sweep`

`physics_capsule_sweep(t_from, t_to, t_radius, t_height, t_table_5, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_radius number
---@param t_height number
---@param t_table_5 table
---@param t_include_mode boolean
---@return table
function physics_capsule_sweep(t_from, t_to, t_radius, t_height, t_table_5, t_include_mode) end
```

### `physics_get_body_type`

`physics_get_body_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_get_body_type(t_entity_id) end
```

### `physics_get_gravity`

`physics_get_gravity()`

```lua
---@return vec3
function physics_get_gravity() end
```

### `physics_raycast`

`physics_raycast(t_from, t_to, t_table_3, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_table_3 table
---@param t_include_mode boolean
---@return table
function physics_raycast(t_from, t_to, t_table_3, t_include_mode) end
```

### `physics_reset_gravity`

`physics_reset_gravity()`

```lua
function physics_reset_gravity() end
```

### `physics_set_body_type`

`physics_set_body_type(t_entity_id, t_body_type)`

```lua
---@param t_entity_id integer
---@param t_body_type integer
function physics_set_body_type(t_entity_id, t_body_type) end
```

### `physics_set_gravity`

`physics_set_gravity(t_gravity)`

```lua
---@param t_gravity vec3
function physics_set_gravity(t_gravity) end
```

### `physics_sphere_sweep`

`physics_sphere_sweep(t_from, t_to, t_radius, t_table_4, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_radius number
---@param t_table_4 table
---@param t_include_mode boolean
---@return table
function physics_sphere_sweep(t_from, t_to, t_radius, t_table_4, t_include_mode) end
```
