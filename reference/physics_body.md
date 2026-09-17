# Physics_body

Script API functions in the `physics_body` group.

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

### `physics_body_get_collision_callback_filter_character`

`physics_body_get_collision_callback_filter_character(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_character(t_entity_id) end
```

### `physics_body_get_collision_callback_filter_dynamic`

`physics_body_get_collision_callback_filter_dynamic(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_dynamic(t_entity_id) end
```

### `physics_body_get_collision_callback_filter_kinematic`

`physics_body_get_collision_callback_filter_kinematic(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_kinematic(t_entity_id) end
```

### `physics_body_get_collision_callback_filter_static`

`physics_body_get_collision_callback_filter_static(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callback_filter_static(t_entity_id) end
```

### `physics_body_get_collision_callbacks_enabled`

`physics_body_get_collision_callbacks_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_collision_callbacks_enabled(t_entity_id) end
```

### `physics_body_get_collision_layer`

`physics_body_get_collision_layer(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_body_get_collision_layer(t_entity_id) end
```

### `physics_body_get_collision_mask`

`physics_body_get_collision_mask(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_body_get_collision_mask(t_entity_id) end
```

### `physics_body_get_collision_shape_count`

`physics_body_get_collision_shape_count(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_body_get_collision_shape_count(t_entity_id) end
```

### `physics_body_get_collision_shape_offset`

`physics_body_get_collision_shape_offset(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return vec3
function physics_body_get_collision_shape_offset(t_entity_id, t_shape_index) end
```

### `physics_body_get_collision_shape_rotation`

`physics_body_get_collision_shape_rotation(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return vec3
function physics_body_get_collision_shape_rotation(t_entity_id, t_shape_index) end
```

### `physics_body_get_collision_shape_size`

`physics_body_get_collision_shape_size(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return vec3
function physics_body_get_collision_shape_size(t_entity_id, t_shape_index) end
```

### `physics_body_get_collision_shape_type`

`physics_body_get_collision_shape_type(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@return integer
function physics_body_get_collision_shape_type(t_entity_id, t_shape_index) end
```

### `physics_body_get_debug_draw_enabled`

`physics_body_get_debug_draw_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_debug_draw_enabled(t_entity_id) end
```

### `physics_body_get_enabled`

`physics_body_get_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_enabled(t_entity_id) end
```

### `physics_body_get_trigger_callbacks_enabled`

`physics_body_get_trigger_callbacks_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_trigger_callbacks_enabled(t_entity_id) end
```

### `physics_body_get_use_ccd`

`physics_body_get_use_ccd(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_body_get_use_ccd(t_entity_id) end
```

### `physics_body_remove_collision_shape`

`physics_body_remove_collision_shape(t_entity_id, t_shape_index)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
function physics_body_remove_collision_shape(t_entity_id, t_shape_index) end
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

### `physics_body_set_collision_callback_filter_character`

`physics_body_set_collision_callback_filter_character(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_character(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_callback_filter_dynamic`

`physics_body_set_collision_callback_filter_dynamic(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_dynamic(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_callback_filter_kinematic`

`physics_body_set_collision_callback_filter_kinematic(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_kinematic(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_callback_filter_static`

`physics_body_set_collision_callback_filter_static(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callback_filter_static(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_callbacks_enabled`

`physics_body_set_collision_callbacks_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_collision_callbacks_enabled(t_entity_id, t_enabled) end
```

### `physics_body_set_collision_layer`

`physics_body_set_collision_layer(t_entity_id, t_layer)`

```lua
---@param t_entity_id integer
---@param t_layer integer
function physics_body_set_collision_layer(t_entity_id, t_layer) end
```

### `physics_body_set_collision_mask`

`physics_body_set_collision_mask(t_entity_id, t_mask)`

```lua
---@param t_entity_id integer
---@param t_mask integer
function physics_body_set_collision_mask(t_entity_id, t_mask) end
```

### `physics_body_set_collision_shape_offset`

`physics_body_set_collision_shape_offset(t_entity_id, t_shape_index, t_offset)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_offset vec3
function physics_body_set_collision_shape_offset(t_entity_id, t_shape_index, t_offset) end
```

### `physics_body_set_collision_shape_rotation`

`physics_body_set_collision_shape_rotation(t_entity_id, t_shape_index, t_rotation)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_rotation vec3
function physics_body_set_collision_shape_rotation(t_entity_id, t_shape_index, t_rotation) end
```

### `physics_body_set_collision_shape_size`

`physics_body_set_collision_shape_size(t_entity_id, t_shape_index, t_size)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_size vec3
function physics_body_set_collision_shape_size(t_entity_id, t_shape_index, t_size) end
```

### `physics_body_set_collision_shape_type`

`physics_body_set_collision_shape_type(t_entity_id, t_shape_index, t_shape_type)`

```lua
---@param t_entity_id integer
---@param t_shape_index integer
---@param t_shape_type integer
function physics_body_set_collision_shape_type(t_entity_id, t_shape_index, t_shape_type) end
```

### `physics_body_set_debug_draw_enabled`

`physics_body_set_debug_draw_enabled(t_entity_id, t_debug_draw)`

```lua
---@param t_entity_id integer
---@param t_debug_draw boolean
function physics_body_set_debug_draw_enabled(t_entity_id, t_debug_draw) end
```

### `physics_body_set_enabled`

`physics_body_set_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_enabled(t_entity_id, t_enabled) end
```

### `physics_body_set_trigger_callbacks_enabled`

`physics_body_set_trigger_callbacks_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_trigger_callbacks_enabled(t_entity_id, t_enabled) end
```

### `physics_body_set_use_ccd`

`physics_body_set_use_ccd(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_body_set_use_ccd(t_entity_id, t_enabled) end
```
