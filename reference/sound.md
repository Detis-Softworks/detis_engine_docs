# Sound

Script API functions in the `sound` group.

### `sound_add_file`

`sound_add_file(t_entity_id, t_file_path)`

```lua
---@param t_entity_id integer
---@param t_file_path string
function sound_add_file(t_entity_id, t_file_path) end
```

### `sound_clear_files`

`sound_clear_files(t_entity_id)`

```lua
---@param t_entity_id integer
function sound_clear_files(t_entity_id) end
```

### `sound_get_air_absorption_cutoff_hz`

`sound_get_air_absorption_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_air_absorption_cutoff_hz(t_entity_id) end
```

### `sound_get_air_absorption_filter_type`

`sound_get_air_absorption_filter_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function sound_get_air_absorption_filter_type(t_entity_id) end
```

### `sound_get_air_absorption_inner_radius`

`sound_get_air_absorption_inner_radius(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_air_absorption_inner_radius(t_entity_id) end
```

### `sound_get_air_absorption_outer_radius`

`sound_get_air_absorption_outer_radius(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_air_absorption_outer_radius(t_entity_id) end
```

### `sound_get_base_gain`

`sound_get_base_gain(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_base_gain(t_entity_id) end
```

### `sound_get_base_pitch`

`sound_get_base_pitch(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_base_pitch(t_entity_id) end
```

### `sound_get_category`

`sound_get_category(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function sound_get_category(t_entity_id) end
```

### `sound_get_category_volume`

`sound_get_category_volume(t_integer_1)`

```lua
---@param t_integer_1 integer
---@return number
function sound_get_category_volume(t_integer_1) end
```

### `sound_get_duration`

`sound_get_duration(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_duration(t_entity_id) end
```

### `sound_get_file_at_index`

`sound_get_file_at_index(t_entity_id, t_index)`

```lua
---@param t_entity_id integer
---@param t_index integer
---@return string
function sound_get_file_at_index(t_entity_id, t_index) end
```

### `sound_get_file_path`

`sound_get_file_path(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function sound_get_file_path(t_entity_id) end
```

### `sound_get_files_count`

`sound_get_files_count(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function sound_get_files_count(t_entity_id) end
```

### `sound_get_full_spatialization_at`

`sound_get_full_spatialization_at(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_full_spatialization_at(t_entity_id) end
```

### `sound_get_gain`

`sound_get_gain(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_gain(t_entity_id) end
```

### `sound_get_gain_randomization_max`

`sound_get_gain_randomization_max(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_gain_randomization_max(t_entity_id) end
```

### `sound_get_gain_randomization_min`

`sound_get_gain_randomization_min(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_gain_randomization_min(t_entity_id) end
```

### `sound_get_inner_radius`

`sound_get_inner_radius(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_inner_radius(t_entity_id) end
```

### `sound_get_is_affected_by_listener_sound_zones`

`sound_get_is_affected_by_listener_sound_zones(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_affected_by_listener_sound_zones(t_entity_id) end
```

### `sound_get_is_air_absorption_enabled`

`sound_get_is_air_absorption_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_air_absorption_enabled(t_entity_id) end
```

### `sound_get_is_gain_randomization_enabled`

`sound_get_is_gain_randomization_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_gain_randomization_enabled(t_entity_id) end
```

### `sound_get_is_looping`

`sound_get_is_looping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_looping(t_entity_id) end
```

### `sound_get_is_pitch_randomization_enabled`

`sound_get_is_pitch_randomization_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_pitch_randomization_enabled(t_entity_id) end
```

### `sound_get_is_playing`

`sound_get_is_playing(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_playing(t_entity_id) end
```

### `sound_get_is_spatial`

`sound_get_is_spatial(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_is_spatial(t_entity_id) end
```

### `sound_get_master_volume`

`sound_get_master_volume()`

```lua
---@return number
function sound_get_master_volume() end
```

### `sound_get_outer_radius`

`sound_get_outer_radius(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_outer_radius(t_entity_id) end
```

### `sound_get_pan`

`sound_get_pan(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_pan(t_entity_id) end
```

### `sound_get_pitch`

`sound_get_pitch(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_pitch(t_entity_id) end
```

### `sound_get_pitch_randomization_max`

`sound_get_pitch_randomization_max(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_pitch_randomization_max(t_entity_id) end
```

### `sound_get_pitch_randomization_min`

`sound_get_pitch_randomization_min(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_pitch_randomization_min(t_entity_id) end
```

### `sound_get_play_mode`

`sound_get_play_mode(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function sound_get_play_mode(t_entity_id) end
```

### `sound_get_play_on_start`

`sound_get_play_on_start(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function sound_get_play_on_start(t_entity_id) end
```

### `sound_get_reverb_quality`

`sound_get_reverb_quality()`

```lua
---@return integer
function sound_get_reverb_quality() end
```

### `sound_get_zone_gain_multiplier`

`sound_get_zone_gain_multiplier(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_gain_multiplier(t_entity_id) end
```

### `sound_get_zone_low_pass_cutoff_hz`

`sound_get_zone_low_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_low_pass_cutoff_hz(t_entity_id) end
```

### `sound_get_zone_reverb_damping`

`sound_get_zone_reverb_damping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_damping(t_entity_id) end
```

### `sound_get_zone_reverb_high_pass_cutoff_hz`

`sound_get_zone_reverb_high_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_high_pass_cutoff_hz(t_entity_id) end
```

### `sound_get_zone_reverb_level`

`sound_get_zone_reverb_level(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_level(t_entity_id) end
```

### `sound_get_zone_reverb_low_pass_cutoff_hz`

`sound_get_zone_reverb_low_pass_cutoff_hz(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_low_pass_cutoff_hz(t_entity_id) end
```

### `sound_get_zone_reverb_predelay_ms`

`sound_get_zone_reverb_predelay_ms(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_predelay_ms(t_entity_id) end
```

### `sound_get_zone_reverb_room_size`

`sound_get_zone_reverb_room_size(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_room_size(t_entity_id) end
```

### `sound_get_zone_reverb_width`

`sound_get_zone_reverb_width(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function sound_get_zone_reverb_width(t_entity_id) end
```

### `sound_pause`

`sound_pause(t_entity_id)`

```lua
---@param t_entity_id integer
function sound_pause(t_entity_id) end
```

### `sound_play`

`sound_play(t_entity_id, t_fade_seconds)`

```lua
---@param t_entity_id integer
---@param t_fade_seconds number
function sound_play(t_entity_id, t_fade_seconds) end
```

### `sound_remove_file_at_index`

`sound_remove_file_at_index(t_entity_id, t_index)`

```lua
---@param t_entity_id integer
---@param t_index integer
function sound_remove_file_at_index(t_entity_id, t_index) end
```

### `sound_set_affected_by_listener_sound_zones`

`sound_set_affected_by_listener_sound_zones(t_entity_id, t_affected)`

```lua
---@param t_entity_id integer
---@param t_affected boolean
function sound_set_affected_by_listener_sound_zones(t_entity_id, t_affected) end
```

### `sound_set_air_absorption_cutoff_hz`

`sound_set_air_absorption_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_set_air_absorption_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_set_air_absorption_enabled`

`sound_set_air_absorption_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function sound_set_air_absorption_enabled(t_entity_id, t_enabled) end
```

### `sound_set_air_absorption_filter_type`

`sound_set_air_absorption_filter_type(t_entity_id, t_filter_type)`

```lua
---@param t_entity_id integer
---@param t_filter_type integer
function sound_set_air_absorption_filter_type(t_entity_id, t_filter_type) end
```

### `sound_set_air_absorption_inner_radius`

`sound_set_air_absorption_inner_radius(t_entity_id, t_radius)`

```lua
---@param t_entity_id integer
---@param t_radius number
function sound_set_air_absorption_inner_radius(t_entity_id, t_radius) end
```

### `sound_set_air_absorption_outer_radius`

`sound_set_air_absorption_outer_radius(t_entity_id, t_radius)`

```lua
---@param t_entity_id integer
---@param t_radius number
function sound_set_air_absorption_outer_radius(t_entity_id, t_radius) end
```

### `sound_set_category`

`sound_set_category(t_entity_id, t_category)`

```lua
---@param t_entity_id integer
---@param t_category integer
function sound_set_category(t_entity_id, t_category) end
```

### `sound_set_category_volume`

`sound_set_category_volume(t_category, t_volume)`

```lua
---@param t_category integer
---@param t_volume number
function sound_set_category_volume(t_category, t_volume) end
```

### `sound_set_file`

`sound_set_file(t_entity_id, t_file_path)`

```lua
---@param t_entity_id integer
---@param t_file_path string
function sound_set_file(t_entity_id, t_file_path) end
```

### `sound_set_full_spatialization_at`

`sound_set_full_spatialization_at(t_entity_id, t_distance)`

```lua
---@param t_entity_id integer
---@param t_distance number
function sound_set_full_spatialization_at(t_entity_id, t_distance) end
```

### `sound_set_gain`

`sound_set_gain(t_entity_id, t_gain)`

```lua
---@param t_entity_id integer
---@param t_gain number
function sound_set_gain(t_entity_id, t_gain) end
```

### `sound_set_gain_randomization_enabled`

`sound_set_gain_randomization_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function sound_set_gain_randomization_enabled(t_entity_id, t_enabled) end
```

### `sound_set_gain_randomization_range`

`sound_set_gain_randomization_range(t_entity_id, t_min_gain, t_max_gain)`

```lua
---@param t_entity_id integer
---@param t_min_gain number
---@param t_max_gain number
function sound_set_gain_randomization_range(t_entity_id, t_min_gain, t_max_gain) end
```

### `sound_set_inner_radius`

`sound_set_inner_radius(t_entity_id, t_radius)`

```lua
---@param t_entity_id integer
---@param t_radius number
function sound_set_inner_radius(t_entity_id, t_radius) end
```

### `sound_set_looping`

`sound_set_looping(t_entity_id, t_looping)`

```lua
---@param t_entity_id integer
---@param t_looping boolean
function sound_set_looping(t_entity_id, t_looping) end
```

### `sound_set_master_volume`

`sound_set_master_volume(t_number_1)`

```lua
---@param t_number_1 number
function sound_set_master_volume(t_number_1) end
```

### `sound_set_outer_radius`

`sound_set_outer_radius(t_entity_id, t_radius)`

```lua
---@param t_entity_id integer
---@param t_radius number
function sound_set_outer_radius(t_entity_id, t_radius) end
```

### `sound_set_pan`

`sound_set_pan(t_entity_id, t_pan)`

```lua
---@param t_entity_id integer
---@param t_pan number
function sound_set_pan(t_entity_id, t_pan) end
```

### `sound_set_pitch`

`sound_set_pitch(t_entity_id, t_pitch)`

```lua
---@param t_entity_id integer
---@param t_pitch number
function sound_set_pitch(t_entity_id, t_pitch) end
```

### `sound_set_pitch_randomization_enabled`

`sound_set_pitch_randomization_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function sound_set_pitch_randomization_enabled(t_entity_id, t_enabled) end
```

### `sound_set_pitch_randomization_range`

`sound_set_pitch_randomization_range(t_entity_id, t_min_pitch, t_max_pitch)`

```lua
---@param t_entity_id integer
---@param t_min_pitch number
---@param t_max_pitch number
function sound_set_pitch_randomization_range(t_entity_id, t_min_pitch, t_max_pitch) end
```

### `sound_set_play_mode`

`sound_set_play_mode(t_entity_id, t_mode)`

```lua
---@param t_entity_id integer
---@param t_mode integer
function sound_set_play_mode(t_entity_id, t_mode) end
```

### `sound_set_play_on_start`

`sound_set_play_on_start(t_entity_id, t_play_on_start)`

```lua
---@param t_entity_id integer
---@param t_play_on_start boolean
function sound_set_play_on_start(t_entity_id, t_play_on_start) end
```

### `sound_set_reverb_quality`

`sound_set_reverb_quality(t_integer_1)`

```lua
---@param t_integer_1 integer
function sound_set_reverb_quality(t_integer_1) end
```

### `sound_set_spatial`

`sound_set_spatial(t_entity_id, t_spatial)`

```lua
---@param t_entity_id integer
---@param t_spatial boolean
function sound_set_spatial(t_entity_id, t_spatial) end
```

### `sound_set_zone_gain_multiplier`

`sound_set_zone_gain_multiplier(t_entity_id, t_gain_multiplier)`

```lua
---@param t_entity_id integer
---@param t_gain_multiplier number
function sound_set_zone_gain_multiplier(t_entity_id, t_gain_multiplier) end
```

### `sound_set_zone_low_pass_cutoff_hz`

`sound_set_zone_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_set_zone_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_set_zone_reverb_damping`

`sound_set_zone_reverb_damping(t_entity_id, t_damping)`

```lua
---@param t_entity_id integer
---@param t_damping number
function sound_set_zone_reverb_damping(t_entity_id, t_damping) end
```

### `sound_set_zone_reverb_high_pass_cutoff_hz`

`sound_set_zone_reverb_high_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_set_zone_reverb_high_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_set_zone_reverb_level`

`sound_set_zone_reverb_level(t_entity_id, t_reverb_level)`

```lua
---@param t_entity_id integer
---@param t_reverb_level number
function sound_set_zone_reverb_level(t_entity_id, t_reverb_level) end
```

### `sound_set_zone_reverb_low_pass_cutoff_hz`

`sound_set_zone_reverb_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz)`

```lua
---@param t_entity_id integer
---@param t_cutoff_hz number
function sound_set_zone_reverb_low_pass_cutoff_hz(t_entity_id, t_cutoff_hz) end
```

### `sound_set_zone_reverb_predelay_ms`

`sound_set_zone_reverb_predelay_ms(t_entity_id, t_predelay_ms)`

```lua
---@param t_entity_id integer
---@param t_predelay_ms number
function sound_set_zone_reverb_predelay_ms(t_entity_id, t_predelay_ms) end
```

### `sound_set_zone_reverb_room_size`

`sound_set_zone_reverb_room_size(t_entity_id, t_room_size)`

```lua
---@param t_entity_id integer
---@param t_room_size number
function sound_set_zone_reverb_room_size(t_entity_id, t_room_size) end
```

### `sound_set_zone_reverb_width`

`sound_set_zone_reverb_width(t_entity_id, t_width)`

```lua
---@param t_entity_id integer
---@param t_width number
function sound_set_zone_reverb_width(t_entity_id, t_width) end
```

### `sound_stop`

`sound_stop(t_entity_id, t_fade_seconds)`

```lua
---@param t_entity_id integer
---@param t_fade_seconds number
function sound_stop(t_entity_id, t_fade_seconds) end
```
