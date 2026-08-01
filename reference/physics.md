# Physics

Script API functions in the `physics` group.

### `physics_get_body_type`

`physics_get_body_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_get_body_type(t_entity_id) end
```

### `physics_set_body_type`

`physics_set_body_type(t_entity_id, t_body_type)`

```lua
---@param t_entity_id integer
---@param t_body_type integer
function physics_set_body_type(t_entity_id, t_body_type) end
```

### `physics_get_gravity`

`physics_get_gravity()`

```lua
---@return vec3
function physics_get_gravity() end
```

### `physics_set_gravity`

`physics_set_gravity(t_gravity)`

```lua
---@param t_gravity vec3
function physics_set_gravity(t_gravity) end
```

### `physics_reset_gravity`

`physics_reset_gravity()`

```lua
function physics_reset_gravity() end
```

### `physics_activate_all_dynamic_bodies`

`physics_activate_all_dynamic_bodies()`

```lua
function physics_activate_all_dynamic_bodies() end
```

### `physics_body_add_collision_shape`

`physics_body_add_collision_shape(t_entity_id, t_shape_type, t_size, t_offset, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_shape_type integer
---@param t_size vec3
---@param t_offset vec3
---@param t_rotation vec3
function physics_body_add_collision_shape(t_entity_id, t_shape_type, t_size, t_offset, t_rotation) end
```

### `physics_body_clear_collision_shapes`

`physics_body_clear_collision_shapes(t_entity_id)`

```lua
---@param t_entity_id integer
function physics_body_clear_collision_shapes(t_entity_id) end
```

### `physics_body_get_collision_shape_count`

`physics_body_get_collision_shape_count(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_body_get_collision_shape_count(t_entity_id) end
```

### `physics_body_remove_collision_shape`

`physics_body_remove_collision_shape(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
function physics_body_remove_collision_shape(t_entity_id, t_shape_index) end
```

### `physics_body_get_collision_shape_type`

`physics_body_get_collision_shape_type(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return integer
function physics_body_get_collision_shape_type(t_entity_id, t_shape_index) end
```

### `physics_body_set_collision_shape_type`

`physics_body_set_collision_shape_type(t_entity_id, t_shape_index, t_shape_type)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_shape_type integer
function physics_body_set_collision_shape_type(t_entity_id, t_shape_index, t_shape_type) end
```

### `physics_body_get_collision_shape_size`

`physics_body_get_collision_shape_size(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return vec3
function physics_body_get_collision_shape_size(t_entity_id, t_shape_index) end
```

### `physics_body_set_collision_shape_size`

`physics_body_set_collision_shape_size(t_entity_id, t_shape_index, t_size)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_size vec3
function physics_body_set_collision_shape_size(t_entity_id, t_shape_index, t_size) end
```

### `physics_body_get_collision_shape_offset`

`physics_body_get_collision_shape_offset(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return vec3
function physics_body_get_collision_shape_offset(t_entity_id, t_shape_index) end
```

### `physics_body_set_collision_shape_offset`

`physics_body_set_collision_shape_offset(t_entity_id, t_shape_index, t_offset)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_offset vec3
function physics_body_set_collision_shape_offset(t_entity_id, t_shape_index, t_offset) end
```

### `physics_body_get_collision_shape_rotation`

`physics_body_get_collision_shape_rotation(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return vec3
function physics_body_get_collision_shape_rotation(t_entity_id, t_shape_index) end
```

### `physics_body_set_collision_shape_rotation`

`physics_body_set_collision_shape_rotation(t_entity_id, t_shape_index, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_rotation vec3
function physics_body_set_collision_shape_rotation(t_entity_id, t_shape_index, t_rotation) end
```

### `physics_body_get_debug_draw_enabled`

`physics_body_get_debug_draw_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_debug_draw_enabled(t_entity_id) end
```

### `physics_body_set_debug_draw_enabled`

`physics_body_set_debug_draw_enabled(t_entity_id, t_debug_draw)`

```lua
---@param t_entity_id integer
---@param t_debug_draw boolean
function physics_body_set_debug_draw_enabled(t_entity_id, t_debug_draw) end
```

### `physics_body_set_collision_callbacks_enabled`

`physics_body_set_collision_callbacks_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callbacks_enabled(t_entity_id, t_enabled) end
```

### `physics_body_get_collision_callbacks_enabled`

`physics_body_get_collision_callbacks_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callbacks_enabled(t_entity_id) end
```

### `physics_body_set_collision_callback_body_type_filter`

`physics_body_set_collision_callback_body_type_filter(t_entity_id, t_filter_static, t_filter_kinematic, t_filter_dynamic, t_boolean_5)`

```lua
---@param t_entity_id integer
---@param t_filter_static boolean
---@param t_filter_kinematic boolean
---@param t_filter_dynamic boolean
---@param t_boolean_5 boolean
function physics_body_set_collision_callback_body_type_filter(t_entity_id, t_filter_static, t_filter_kinematic, t_filter_dynamic, t_boolean_5) end
```

### `physics_body_get_collision_callback_filter_static`

`physics_body_get_collision_callback_filter_static(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_static(t_entity_id) end
```

### `physics_body_get_collision_callback_filter_kinematic`

`physics_body_get_collision_callback_filter_kinematic(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_kinematic(t_entity_id) end
```

### `physics_body_get_collision_callback_filter_dynamic`

`physics_body_get_collision_callback_filter_dynamic(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_dynamic(t_entity_id) end
```

### `physics_body_set_collision_callback_filter_static`

`physics_body_set_collision_callback_filter_static(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_static(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_callback_filter_kinematic`

`physics_body_set_collision_callback_filter_kinematic(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_kinematic(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_callback_filter_dynamic`

`physics_body_set_collision_callback_filter_dynamic(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_dynamic(t_entity_id, t_enabled) end
```

### `physics_body_get_collision_callback_filter_character`

`physics_body_get_collision_callback_filter_character(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_character(t_entity_id) end
```

### `physics_body_set_collision_callback_filter_character`

`physics_body_set_collision_callback_filter_character(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_character(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_layer`

`physics_body_set_collision_layer(t_entity_id, t_layer)`

```lua
---@param t_entity_id integer
---@param t_layer integer
function physics_body_set_collision_layer(t_entity_id, t_layer) end
```

### `physics_body_get_collision_layer`

`physics_body_get_collision_layer(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_body_get_collision_layer(t_entity_id) end
```

### `physics_body_set_collision_mask`

`physics_body_set_collision_mask(t_entity_id, t_mask)`

```lua
---@param t_entity_id integer
---@param t_mask integer
function physics_body_set_collision_mask(t_entity_id, t_mask) end
```

### `physics_body_get_collision_mask`

`physics_body_get_collision_mask(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_body_get_collision_mask(t_entity_id) end
```

### `physics_body_set_enabled`

`physics_body_set_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_enabled(t_entity_id, t_enabled) end
```

### `physics_body_get_enabled`

`physics_body_get_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_enabled(t_entity_id) end
```

### `physics_body_set_use_ccd`

`physics_body_set_use_ccd(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_use_ccd(t_entity_id, t_enabled) end
```

### `physics_body_get_use_ccd`

`physics_body_get_use_ccd(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_use_ccd(t_entity_id) end
```

### `physics_body_set_trigger_callbacks_enabled`

`physics_body_set_trigger_callbacks_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_trigger_callbacks_enabled(t_entity_id, t_enabled) end
```

### `physics_body_get_trigger_callbacks_enabled`

`physics_body_get_trigger_callbacks_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_trigger_callbacks_enabled(t_entity_id) end
```

### `physics_raycast`

`physics_raycast(t_from, t_to, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_include_mode boolean
---@return vec3
function physics_raycast(t_from, t_to, t_include_mode) end
```

### `physics_sphere_sweep`

`physics_sphere_sweep(t_from, t_to, t_radius, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_radius number
---@param t_include_mode boolean
---@return vec3
function physics_sphere_sweep(t_from, t_to, t_radius, t_include_mode) end
```

### `physics_box_sweep`

`physics_box_sweep(t_from, t_to, t_half_extents, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_half_extents vec3
---@param t_include_mode boolean
---@return vec3
function physics_box_sweep(t_from, t_to, t_half_extents, t_include_mode) end
```

### `physics_capsule_sweep`

`physics_capsule_sweep(t_from, t_to, t_radius, t_height, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_radius number
---@param t_height number
---@param t_include_mode boolean
---@return vec3
function physics_capsule_sweep(t_from, t_to, t_radius, t_height, t_include_mode) end
```

### `physics_constraint_get_constraint_type`

`physics_constraint_get_constraint_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_constraint_get_constraint_type(t_entity_id) end
```

### `physics_constraint_set_constraint_type`

`physics_constraint_set_constraint_type(t_entity_id, t_constraint_type)`

```lua
---@param t_entity_id integer
---@param t_constraint_type integer
function physics_constraint_set_constraint_type(t_entity_id, t_constraint_type) end
```

### `physics_constraint_get_body_a_entity_id`

`physics_constraint_get_body_a_entity_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_constraint_get_body_a_entity_id(t_entity_id) end
```

### `physics_constraint_set_body_a_entity_id`

`physics_constraint_set_body_a_entity_id(t_entity_id, t_body_a_entity_id)`

```lua
---@param t_entity_id integer
---@param t_body_a_entity_id integer
function physics_constraint_set_body_a_entity_id(t_entity_id, t_body_a_entity_id) end
```

### `physics_constraint_get_body_b_entity_id`

`physics_constraint_get_body_b_entity_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_constraint_get_body_b_entity_id(t_entity_id) end
```

### `physics_constraint_set_body_b_entity_id`

`physics_constraint_set_body_b_entity_id(t_entity_id, t_body_b_entity_id)`

```lua
---@param t_entity_id integer
---@param t_body_b_entity_id integer
function physics_constraint_set_body_b_entity_id(t_entity_id, t_body_b_entity_id) end
```

### `physics_constraint_get_anchor_1`

`physics_constraint_get_anchor_1(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function physics_constraint_get_anchor_1(t_entity_id) end
```

### `physics_constraint_set_anchor_1`

`physics_constraint_set_anchor_1(t_entity_id, t_anchor)`

```lua
---@param t_entity_id integer
---@param t_anchor vec3
function physics_constraint_set_anchor_1(t_entity_id, t_anchor) end
```

### `physics_constraint_get_anchor_2`

`physics_constraint_get_anchor_2(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function physics_constraint_get_anchor_2(t_entity_id) end
```

### `physics_constraint_set_anchor_2`

`physics_constraint_set_anchor_2(t_entity_id, t_anchor)`

```lua
---@param t_entity_id integer
---@param t_anchor vec3
function physics_constraint_set_anchor_2(t_entity_id, t_anchor) end
```

### `physics_constraint_get_axis`

`physics_constraint_get_axis(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function physics_constraint_get_axis(t_entity_id) end
```

### `physics_constraint_set_axis`

`physics_constraint_set_axis(t_entity_id, t_axis)`

```lua
---@param t_entity_id integer
---@param t_axis vec3
function physics_constraint_set_axis(t_entity_id, t_axis) end
```

### `physics_constraint_get_limits_enabled`

`physics_constraint_get_limits_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_limits_enabled(t_entity_id) end
```

### `physics_constraint_set_limits_enabled`

`physics_constraint_set_limits_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_constraint_set_limits_enabled(t_entity_id, t_enabled) end
```

### `physics_constraint_get_limits_min`

`physics_constraint_get_limits_min(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_limits_min(t_entity_id) end
```

### `physics_constraint_set_limits_min`

`physics_constraint_set_limits_min(t_entity_id, t_limits_min)`

```lua
---@param t_entity_id integer
---@param t_limits_min number
function physics_constraint_set_limits_min(t_entity_id, t_limits_min) end
```

### `physics_constraint_get_limits_max`

`physics_constraint_get_limits_max(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_limits_max(t_entity_id) end
```

### `physics_constraint_set_limits_max`

`physics_constraint_set_limits_max(t_entity_id, t_limits_max)`

```lua
---@param t_entity_id integer
---@param t_limits_max number
function physics_constraint_set_limits_max(t_entity_id, t_limits_max) end
```

### `physics_constraint_get_enabled`

`physics_constraint_get_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_enabled(t_entity_id) end
```

### `physics_constraint_set_enabled`

`physics_constraint_set_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_constraint_set_enabled(t_entity_id, t_enabled) end
```

### `physics_constraint_get_friction`

`physics_constraint_get_friction(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_friction(t_entity_id) end
```

### `physics_constraint_set_friction`

`physics_constraint_set_friction(t_entity_id, t_friction)`

```lua
---@param t_entity_id integer
---@param t_friction number
function physics_constraint_set_friction(t_entity_id, t_friction) end
```

### `physics_constraint_get_collide_connected`

`physics_constraint_get_collide_connected(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_collide_connected(t_entity_id) end
```

### `physics_constraint_set_collide_connected`

`physics_constraint_set_collide_connected(t_entity_id, t_collide_connected)`

```lua
---@param t_entity_id integer
---@param t_collide_connected boolean
function physics_constraint_set_collide_connected(t_entity_id, t_collide_connected) end
```

### `physics_constraint_get_breakable`

`physics_constraint_get_breakable(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_breakable(t_entity_id) end
```

### `physics_constraint_set_breakable`

`physics_constraint_set_breakable(t_entity_id, t_breakable)`

```lua
---@param t_entity_id integer
---@param t_breakable boolean
function physics_constraint_set_breakable(t_entity_id, t_breakable) end
```

### `physics_constraint_get_break_force`

`physics_constraint_get_break_force(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_break_force(t_entity_id) end
```

### `physics_constraint_set_break_force`

`physics_constraint_set_break_force(t_entity_id, t_break_force)`

```lua
---@param t_entity_id integer
---@param t_break_force number
function physics_constraint_set_break_force(t_entity_id, t_break_force) end
```

### `physics_constraint_get_is_broken`

`physics_constraint_get_is_broken(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_is_broken(t_entity_id) end
```

### `physics_constraint_get_is_created`

`physics_constraint_get_is_created(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_is_created(t_entity_id) end
```

### `physics_constraint_recreate`

`physics_constraint_recreate(t_entity_id)`

```lua
---@param t_entity_id integer
function physics_constraint_recreate(t_entity_id) end
```
