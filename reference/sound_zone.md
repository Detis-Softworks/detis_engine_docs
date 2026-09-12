# Sound_zone

Script API functions in the `sound_zone` group.

### `sound_zone_get_external_gain_multiplier`

`sound_zone_get_external_gain_multiplier(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_gain_multiplier(t_entity_id) end
```

### `sound_zone_get_external_low_pass_cutoff_hz`

`sound_zone_get_external_low_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_low_pass_cutoff_hz(t_entity_id) end
```

### `sound_zone_get_external_reverb_damping`

`sound_zone_get_external_reverb_damping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_damping(t_entity_id) end
```

### `sound_zone_get_external_reverb_high_pass_cutoff_hz`

`sound_zone_get_external_reverb_high_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_high_pass_cutoff_hz(t_entity_id) end
```

### `sound_zone_get_external_reverb_level`

`sound_zone_get_external_reverb_level(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_level(t_entity_id) end
```

### `sound_zone_get_external_reverb_low_pass_cutoff_hz`

`sound_zone_get_external_reverb_low_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_low_pass_cutoff_hz(t_entity_id) end
```

### `sound_zone_get_external_reverb_predelay_ms`

`sound_zone_get_external_reverb_predelay_ms(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_predelay_ms(t_entity_id) end
```

### `sound_zone_get_external_reverb_room_size`

`sound_zone_get_external_reverb_room_size(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_room_size(t_entity_id) end
```

### `sound_zone_get_external_reverb_width`

`sound_zone_get_external_reverb_width(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_external_reverb_width(t_entity_id) end
```

### `sound_zone_get_fade_duration`

`sound_zone_get_fade_duration(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_fade_duration(t_entity_id) end
```

### `sound_zone_get_internal_gain_multiplier`

`sound_zone_get_internal_gain_multiplier(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_gain_multiplier(t_entity_id) end
```

### `sound_zone_get_internal_low_pass_cutoff_hz`

`sound_zone_get_internal_low_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_low_pass_cutoff_hz(t_entity_id) end
```

### `sound_zone_get_internal_reverb_damping`

`sound_zone_get_internal_reverb_damping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_damping(t_entity_id) end
```

### `sound_zone_get_internal_reverb_high_pass_cutoff_hz`

`sound_zone_get_internal_reverb_high_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_high_pass_cutoff_hz(t_entity_id) end
```

### `sound_zone_get_internal_reverb_level`

`sound_zone_get_internal_reverb_level(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_level(t_entity_id) end
```

### `sound_zone_get_internal_reverb_low_pass_cutoff_hz`

`sound_zone_get_internal_reverb_low_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_low_pass_cutoff_hz(t_entity_id) end
```

### `sound_zone_get_internal_reverb_predelay_ms`

`sound_zone_get_internal_reverb_predelay_ms(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_predelay_ms(t_entity_id) end
```

### `sound_zone_get_internal_reverb_room_size`

`sound_zone_get_internal_reverb_room_size(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_room_size(t_entity_id) end
```

### `sound_zone_get_internal_reverb_width`

`sound_zone_get_internal_reverb_width(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_zone_get_internal_reverb_width(t_entity_id) end
```

### `sound_zone_get_priority`

`sound_zone_get_priority(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function sound_zone_get_priority(t_entity_id) end
```

### `sound_zone_get_show_debug_box`

`sound_zone_get_show_debug_box(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_zone_get_show_debug_box(t_entity_id) end
```

### `sound_zone_set_external_gain_multiplier`

`sound_zone_set_external_gain_multiplier(t_entity_id, t_gain_multiplier)`

```lua
---@param t_entity_id integer
---@param t_gain_multiplier number
function sound_zone_set_external_gain_multiplier(t_entity_id, t_gain_multiplier) end
```

### `sound_zone_set_external_low_pass_cutoff_hz`

`sound_zone_set_external_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_zone_set_external_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_zone_set_external_reverb_damping`

`sound_zone_set_external_reverb_damping(t_entity_id, t_damping)`

```lua
---@param t_entity_id integer
---@param t_damping number
function sound_zone_set_external_reverb_damping(t_entity_id, t_damping) end
```

### `sound_zone_set_external_reverb_high_pass_cutoff_hz`

`sound_zone_set_external_reverb_high_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_zone_set_external_reverb_high_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_zone_set_external_reverb_level`

`sound_zone_set_external_reverb_level(t_entity_id, t_reverb_level)`

```lua
---@param t_entity_id integer
---@param t_reverb_level number
function sound_zone_set_external_reverb_level(t_entity_id, t_reverb_level) end
```

### `sound_zone_set_external_reverb_low_pass_cutoff_hz`

`sound_zone_set_external_reverb_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_zone_set_external_reverb_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_zone_set_external_reverb_predelay_ms`

`sound_zone_set_external_reverb_predelay_ms(t_entity_id, t_predelay_ms)`

```lua
---@param t_entity_id integer
---@param t_predelay_ms number
function sound_zone_set_external_reverb_predelay_ms(t_entity_id, t_predelay_ms) end
```

### `sound_zone_set_external_reverb_room_size`

`sound_zone_set_external_reverb_room_size(t_entity_id, t_room_size)`

```lua
---@param t_entity_id integer
---@param t_room_size number
function sound_zone_set_external_reverb_room_size(t_entity_id, t_room_size) end
```

### `sound_zone_set_external_reverb_width`

`sound_zone_set_external_reverb_width(t_entity_id, t_width)`

```lua
---@param t_entity_id integer
---@param t_width number
function sound_zone_set_external_reverb_width(t_entity_id, t_width) end
```

### `sound_zone_set_fade_duration`

`sound_zone_set_fade_duration(t_entity_id, t_fade_duration)`

```lua
---@param t_entity_id integer
---@param t_fade_duration number
function sound_zone_set_fade_duration(t_entity_id, t_fade_duration) end
```

### `sound_zone_set_internal_gain_multiplier`

`sound_zone_set_internal_gain_multiplier(t_entity_id, t_gain_multiplier)`

```lua
---@param t_entity_id integer
---@param t_gain_multiplier number
function sound_zone_set_internal_gain_multiplier(t_entity_id, t_gain_multiplier) end
```

### `sound_zone_set_internal_low_pass_cutoff_hz`

`sound_zone_set_internal_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_zone_set_internal_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_zone_set_internal_reverb_damping`

`sound_zone_set_internal_reverb_damping(t_entity_id, t_damping)`

```lua
---@param t_entity_id integer
---@param t_damping number
function sound_zone_set_internal_reverb_damping(t_entity_id, t_damping) end
```

### `sound_zone_set_internal_reverb_high_pass_cutoff_hz`

`sound_zone_set_internal_reverb_high_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_zone_set_internal_reverb_high_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_zone_set_internal_reverb_level`

`sound_zone_set_internal_reverb_level(t_entity_id, t_reverb_level)`

```lua
---@param t_entity_id integer
---@param t_reverb_level number
function sound_zone_set_internal_reverb_level(t_entity_id, t_reverb_level) end
```

### `sound_zone_set_internal_reverb_low_pass_cutoff_hz`

`sound_zone_set_internal_reverb_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_zone_set_internal_reverb_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_zone_set_internal_reverb_predelay_ms`

`sound_zone_set_internal_reverb_predelay_ms(t_entity_id, t_predelay_ms)`

```lua
---@param t_entity_id integer
---@param t_predelay_ms number
function sound_zone_set_internal_reverb_predelay_ms(t_entity_id, t_predelay_ms) end
```

### `sound_zone_set_internal_reverb_room_size`

`sound_zone_set_internal_reverb_room_size(t_entity_id, t_room_size)`

```lua
---@param t_entity_id integer
---@param t_room_size number
function sound_zone_set_internal_reverb_room_size(t_entity_id, t_room_size) end
```

### `sound_zone_set_internal_reverb_width`

`sound_zone_set_internal_reverb_width(t_entity_id, t_width)`

```lua
---@param t_entity_id integer
---@param t_width number
function sound_zone_set_internal_reverb_width(t_entity_id, t_width) end
```

### `sound_zone_set_priority`

`sound_zone_set_priority(t_entity_id, t_priority)`

```lua
---@param t_entity_id integer
---@param t_priority integer
function sound_zone_set_priority(t_entity_id, t_priority) end
```

### `sound_zone_set_show_debug_box`

`sound_zone_set_show_debug_box(t_entity_id, t_show_debug_box)`

```lua
---@param t_entity_id integer
---@param t_show_debug_box boolean
function sound_zone_set_show_debug_box(t_entity_id, t_show_debug_box) end
```
