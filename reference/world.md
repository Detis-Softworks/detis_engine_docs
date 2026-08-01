# World

Script API functions in the `world` group.

### `world_get_entity_by_id`

`world_get_entity_by_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function world_get_entity_by_id(t_entity_id) end
```

### `world_get_entity_by_name`

`world_get_entity_by_name(t_entity_name)`

```lua
---@param t_entity_name string
---@return integer
function world_get_entity_by_name(t_entity_name) end
```

### `world_get_entity_by_hierarchy_path`

`world_get_entity_by_hierarchy_path(t_entity_hierarchy_path)`

```lua
---@param t_entity_hierarchy_path string
---@return integer
function world_get_entity_by_hierarchy_path(t_entity_hierarchy_path) end
```

### `world_get_entity_hierarchy_path`

`world_get_entity_hierarchy_path(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function world_get_entity_hierarchy_path(t_entity_id) end
```

### `world_create_entity`

`world_create_entity(t_name)`

```lua
---@param t_name string
---@return integer
function world_create_entity(t_name) end
```

### `world_destroy_entity`

`world_destroy_entity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function world_destroy_entity(t_entity_id) end
```

### `world_set_current_camera`

`world_set_current_camera(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function world_set_current_camera(t_entity_id) end
```

### `world_get_current_camera`

`world_get_current_camera()`

```lua
---@return integer
function world_get_current_camera() end
```

### `world_get_current_world_file_path`

`world_get_current_world_file_path()`

```lua
---@return string
function world_get_current_world_file_path() end
```

### `world_get_entities`

`world_get_entities()`

```lua
---@return integer
function world_get_entities() end
```

### `world_get_entities_by_name`

`world_get_entities_by_name(t_name_pattern)`

```lua
---@param t_name_pattern string
---@return integer
function world_get_entities_by_name(t_name_pattern) end
```

### `world_get_entities_with_component`

`world_get_entities_with_component(t_component_type)`

```lua
---@param t_component_type string
---@return integer
function world_get_entities_with_component(t_component_type) end
```

### `world_get_entities_by_tag`

`world_get_entities_by_tag(t_tag)`

```lua
---@param t_tag string
---@return integer
function world_get_entities_by_tag(t_tag) end
```

### `world_get_entity_count`

`world_get_entity_count()`

```lua
---@return integer
function world_get_entity_count() end
```

### `world_get_function`

`world_get_function(t_function_name)`

```lua
---@param t_function_name string
---@return string
function world_get_function(t_function_name) end
```

### `world_call_entity_script_function`

`world_call_entity_script_function(t_entity_id, t_function_name)`

```lua
---@param t_entity_id integer
---@param t_function_name string
function world_call_entity_script_function(t_entity_id, t_function_name) end
```

### `world_call_script_function`

`world_call_script_function(t_function_name)`

```lua
---@param t_function_name string
function world_call_script_function(t_function_name) end
```

### `world_broadcast_message`

`world_broadcast_message(t_message)`

```lua
---@param t_message string
function world_broadcast_message(t_message) end
```

### `world_get_script_parameter`

`world_get_script_parameter(t_param_name)`

```lua
---@param t_param_name string
---@return integer
function world_get_script_parameter(t_param_name) end
```

### `world_set_script_parameter`

`world_set_script_parameter(t_param_name, t_str_value)`

```lua
---@param t_param_name string
---@param t_str_value string|boolean
function world_set_script_parameter(t_param_name, t_str_value) end
```

### `world_get_has_script_parameter`

`world_get_has_script_parameter(t_param_name)`

```lua
---@param t_param_name string
---@return boolean
function world_get_has_script_parameter(t_param_name) end
```

### `world_load_from_file`

`world_load_from_file(t_file_path)`

```lua
---@param t_file_path string
---@return boolean
function world_load_from_file(t_file_path) end
```

### `world_spawn_entity`

`world_spawn_entity(t_pool_name, t_entity_name)`

```lua
---@param t_pool_name string
---@param t_entity_name string
---@return integer
function world_spawn_entity(t_pool_name, t_entity_name) end
```

### `world_despawn_entity`

`world_despawn_entity(t_entity_id, t_pool_name)`

```lua
---@param t_entity_id integer
---@param t_pool_name string
function world_despawn_entity(t_entity_id, t_pool_name) end
```

### `world_clone_entity`

`world_clone_entity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function world_clone_entity(t_entity_id) end
```

### `world_soundzone_set_gain_multiplier`

`world_soundzone_set_gain_multiplier(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_gain_multiplier(t_number_1) end
```

### `world_soundzone_get_gain_multiplier`

`world_soundzone_get_gain_multiplier()`

```lua
---@return number
function world_soundzone_get_gain_multiplier() end
```

### `world_soundzone_set_low_pass_cutoff_hz`

`world_soundzone_set_low_pass_cutoff_hz(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_low_pass_cutoff_hz(t_number_1) end
```

### `world_soundzone_get_low_pass_cutoff_hz`

`world_soundzone_get_low_pass_cutoff_hz()`

```lua
---@return number
function world_soundzone_get_low_pass_cutoff_hz() end
```

### `world_soundzone_set_reverb_level`

`world_soundzone_set_reverb_level(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_level(t_number_1) end
```

### `world_soundzone_get_reverb_level`

`world_soundzone_get_reverb_level()`

```lua
---@return number
function world_soundzone_get_reverb_level() end
```

### `world_soundzone_set_reverb_room_size`

`world_soundzone_set_reverb_room_size(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_room_size(t_number_1) end
```

### `world_soundzone_get_reverb_room_size`

`world_soundzone_get_reverb_room_size()`

```lua
---@return number
function world_soundzone_get_reverb_room_size() end
```

### `world_soundzone_set_reverb_damping`

`world_soundzone_set_reverb_damping(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_damping(t_number_1) end
```

### `world_soundzone_get_reverb_damping`

`world_soundzone_get_reverb_damping()`

```lua
---@return number
function world_soundzone_get_reverb_damping() end
```

### `world_soundzone_set_reverb_width`

`world_soundzone_set_reverb_width(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_width(t_number_1) end
```

### `world_soundzone_get_reverb_width`

`world_soundzone_get_reverb_width()`

```lua
---@return number
function world_soundzone_get_reverb_width() end
```

### `world_soundzone_set_reverb_predelay_ms`

`world_soundzone_set_reverb_predelay_ms(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_predelay_ms(t_number_1) end
```

### `world_soundzone_get_reverb_predelay_ms`

`world_soundzone_get_reverb_predelay_ms()`

```lua
---@return number
function world_soundzone_get_reverb_predelay_ms() end
```

### `world_soundzone_set_reverb_low_pass_cutoff_hz`

`world_soundzone_set_reverb_low_pass_cutoff_hz(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_low_pass_cutoff_hz(t_number_1) end
```

### `world_soundzone_get_reverb_low_pass_cutoff_hz`

`world_soundzone_get_reverb_low_pass_cutoff_hz()`

```lua
---@return number
function world_soundzone_get_reverb_low_pass_cutoff_hz() end
```

### `world_soundzone_set_reverb_high_pass_cutoff_hz`

`world_soundzone_set_reverb_high_pass_cutoff_hz(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_reverb_high_pass_cutoff_hz(t_number_1) end
```

### `world_soundzone_get_reverb_high_pass_cutoff_hz`

`world_soundzone_get_reverb_high_pass_cutoff_hz()`

```lua
---@return number
function world_soundzone_get_reverb_high_pass_cutoff_hz() end
```

### `world_soundzone_set_fade_duration`

`world_soundzone_set_fade_duration(t_number_1)`

```lua
---@param t_number_1 number
function world_soundzone_set_fade_duration(t_number_1) end
```

### `world_soundzone_get_fade_duration`

`world_soundzone_get_fade_duration()`

```lua
---@return number
function world_soundzone_get_fade_duration() end
```

### `world_soundzone_reset`

`world_soundzone_reset()`

```lua
function world_soundzone_reset() end
```

### `world_soundscape_set_paused`

`world_soundscape_set_paused(t_paused)`

```lua
---@param t_paused boolean
function world_soundscape_set_paused(t_paused) end
```

### `world_soundscape_get_is_paused`

`world_soundscape_get_is_paused()`

```lua
---@return boolean
function world_soundscape_get_is_paused() end
```

### `world_soundscape_set_profile`

`world_soundscape_set_profile()`

```lua
function world_soundscape_set_profile() end
```

### `world_soundscape_get_profile`

`world_soundscape_get_profile()`

```lua
function world_soundscape_get_profile() end
```

### `world_soundscape_notify_profile_changed`

`world_soundscape_notify_profile_changed()`

```lua
function world_soundscape_notify_profile_changed() end
```

### `world_soundscape_reload_active_profile`

`world_soundscape_reload_active_profile(t_fade_seconds)`

```lua
---@param t_fade_seconds number
function world_soundscape_reload_active_profile(t_fade_seconds) end
```

### `world_soundscape_get_active_zone`

`world_soundscape_get_active_zone()`

```lua
---@return integer
function world_soundscape_get_active_zone() end
```
