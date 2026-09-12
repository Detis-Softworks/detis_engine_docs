# Settings

Script API functions in the `settings` group.

### `settings_apply_loaded`

`settings_apply_loaded()`

```lua
function settings_apply_loaded() end
```

### `settings_get_ambient_volume`

`settings_get_ambient_volume()`

```lua
---@return number
function settings_get_ambient_volume() end
```

### `settings_get_anisotropic_filter_level`

`settings_get_anisotropic_filter_level()`

```lua
---@return integer
function settings_get_anisotropic_filter_level() end
```

### `settings_get_available_monitors`

`settings_get_available_monitors()`

```lua
---@return table
function settings_get_available_monitors() end
```

### `settings_get_available_resolutions`

`settings_get_available_resolutions()`

```lua
---@return table
function settings_get_available_resolutions() end
```

### `settings_get_bool`

`settings_get_bool(t_section, t_key, t_default_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_default_value boolean
---@return boolean
function settings_get_bool(t_section, t_key, t_default_value) end
```

### `settings_get_float`

`settings_get_float(t_section, t_key, t_default_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_default_value number?
---@return number
function settings_get_float(t_section, t_key, t_default_value) end
```

### `settings_get_fxaa_active`

`settings_get_fxaa_active()`

```lua
---@return boolean
function settings_get_fxaa_active() end
```

### `settings_get_fxaa_fss_active`

`settings_get_fxaa_fss_active()`

```lua
---@return boolean
function settings_get_fxaa_fss_active() end
```

### `settings_get_gamma`

`settings_get_gamma()`

```lua
---@return number
function settings_get_gamma() end
```

### `settings_get_global_distance_culling_active`

`settings_get_global_distance_culling_active()`

```lua
---@return boolean
function settings_get_global_distance_culling_active() end
```

### `settings_get_global_frustum_culling_active`

`settings_get_global_frustum_culling_active()`

```lua
---@return boolean
function settings_get_global_frustum_culling_active() end
```

### `settings_get_global_local_light_shadows_active`

`settings_get_global_local_light_shadows_active()`

```lua
---@return boolean
function settings_get_global_local_light_shadows_active() end
```

### `settings_get_int`

`settings_get_int(t_section, t_key, t_default_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_default_value integer?
---@return integer
function settings_get_int(t_section, t_key, t_default_value) end
```

### `settings_get_is_reverb_active`

`settings_get_is_reverb_active()`

```lua
---@return boolean
function settings_get_is_reverb_active() end
```

### `settings_get_local_light_shadows_distance_culling_active`

`settings_get_local_light_shadows_distance_culling_active()`

```lua
---@return boolean
function settings_get_local_light_shadows_distance_culling_active() end
```

### `settings_get_local_light_shadows_fade_range`

`settings_get_local_light_shadows_fade_range()`

```lua
---@return number
function settings_get_local_light_shadows_fade_range() end
```

### `settings_get_local_light_shadows_max_distance`

`settings_get_local_light_shadows_max_distance()`

```lua
---@return number
function settings_get_local_light_shadows_max_distance() end
```

### `settings_get_local_lights_culling_active`

`settings_get_local_lights_culling_active()`

```lua
---@return boolean
function settings_get_local_lights_culling_active() end
```

### `settings_get_local_lights_distance_culling_active`

`settings_get_local_lights_distance_culling_active()`

```lua
---@return boolean
function settings_get_local_lights_distance_culling_active() end
```

### `settings_get_local_lights_distance_culling_fade_range`

`settings_get_local_lights_distance_culling_fade_range()`

```lua
---@return number
function settings_get_local_lights_distance_culling_fade_range() end
```

### `settings_get_local_lights_distance_culling_max_distance`

`settings_get_local_lights_distance_culling_max_distance()`

```lua
---@return number
function settings_get_local_lights_distance_culling_max_distance() end
```

### `settings_get_local_lights_frustum_culling_active`

`settings_get_local_lights_frustum_culling_active()`

```lua
---@return boolean
function settings_get_local_lights_frustum_culling_active() end
```

### `settings_get_master_volume`

`settings_get_master_volume()`

```lua
---@return number
function settings_get_master_volume() end
```

### `settings_get_monitor_count`

`settings_get_monitor_count()`

```lua
---@return integer
function settings_get_monitor_count() end
```

### `settings_get_monitor_index`

`settings_get_monitor_index()`

```lua
---@return integer
function settings_get_monitor_index() end
```

### `settings_get_music_volume`

`settings_get_music_volume()`

```lua
---@return number
function settings_get_music_volume() end
```

### `settings_get_render_scale`

`settings_get_render_scale()`

```lua
---@return number
function settings_get_render_scale() end
```

### `settings_get_resolution`

`settings_get_resolution()`

```lua
function settings_get_resolution() end
```

### `settings_get_reverb_quality`

`settings_get_reverb_quality()`

```lua
---@return integer
function settings_get_reverb_quality() end
```

### `settings_get_sfx_volume`

`settings_get_sfx_volume()`

```lua
---@return number
function settings_get_sfx_volume() end
```

### `settings_get_shadow_map_quality`

`settings_get_shadow_map_quality()`

```lua
---@return integer
function settings_get_shadow_map_quality() end
```

### `settings_get_ssao_quality`

`settings_get_ssao_quality()`

```lua
---@return integer
function settings_get_ssao_quality() end
```

### `settings_get_ssr_quality`

`settings_get_ssr_quality()`

```lua
---@return integer
function settings_get_ssr_quality() end
```

### `settings_get_string`

`settings_get_string(t_section, t_key, t_default_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_default_value string?
---@return string
function settings_get_string(t_section, t_key, t_default_value) end
```

### `settings_get_ui_scale`

`settings_get_ui_scale()`

```lua
---@return number
function settings_get_ui_scale() end
```

### `settings_get_ui_volume`

`settings_get_ui_volume()`

```lua
---@return number
function settings_get_ui_volume() end
```

### `settings_get_user_ini_path`

`settings_get_user_ini_path()`

```lua
---@return string
function settings_get_user_ini_path() end
```

### `settings_get_voice_volume`

`settings_get_voice_volume()`

```lua
---@return number
function settings_get_voice_volume() end
```

### `settings_get_vsync_mode`

`settings_get_vsync_mode()`

```lua
---@return integer
function settings_get_vsync_mode() end
```

### `settings_get_window_mode`

`settings_get_window_mode()`

```lua
---@return integer
function settings_get_window_mode() end
```

### `settings_reset_to_defaults`

`settings_reset_to_defaults()`

```lua
---@return boolean
function settings_reset_to_defaults() end
```

### `settings_save`

`settings_save()`

```lua
---@return boolean
function settings_save() end
```

### `settings_set_ambient_volume`

`settings_set_ambient_volume(t_volume)`

```lua
---@param t_volume number
function settings_set_ambient_volume(t_volume) end
```

### `settings_set_anisotropic_filter_level`

`settings_set_anisotropic_filter_level(t_level)`

```lua
---@param t_level integer
function settings_set_anisotropic_filter_level(t_level) end
```

### `settings_set_bool`

`settings_set_bool(t_section, t_key, t_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_value boolean
function settings_set_bool(t_section, t_key, t_value) end
```

### `settings_set_float`

`settings_set_float(t_section, t_key, t_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_value number
function settings_set_float(t_section, t_key, t_value) end
```

### `settings_set_fxaa_active`

`settings_set_fxaa_active(t_active)`

```lua
---@param t_active boolean
function settings_set_fxaa_active(t_active) end
```

### `settings_set_fxaa_fss_active`

`settings_set_fxaa_fss_active(t_active)`

```lua
---@param t_active boolean
function settings_set_fxaa_fss_active(t_active) end
```

### `settings_set_gamma`

`settings_set_gamma(t_gamma)`

```lua
---@param t_gamma number
function settings_set_gamma(t_gamma) end
```

### `settings_set_global_distance_culling_active`

`settings_set_global_distance_culling_active(t_active)`

```lua
---@param t_active boolean
function settings_set_global_distance_culling_active(t_active) end
```

### `settings_set_global_frustum_culling_active`

`settings_set_global_frustum_culling_active(t_active)`

```lua
---@param t_active boolean
function settings_set_global_frustum_culling_active(t_active) end
```

### `settings_set_global_local_light_shadows_active`

`settings_set_global_local_light_shadows_active(t_active)`

```lua
---@param t_active boolean
function settings_set_global_local_light_shadows_active(t_active) end
```

### `settings_set_int`

`settings_set_int(t_section, t_key, t_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_value integer
function settings_set_int(t_section, t_key, t_value) end
```

### `settings_set_is_reverb_active`

`settings_set_is_reverb_active(t_active)`

```lua
---@param t_active boolean
function settings_set_is_reverb_active(t_active) end
```

### `settings_set_local_light_shadows_distance_culling_active`

`settings_set_local_light_shadows_distance_culling_active(t_active)`

```lua
---@param t_active boolean
function settings_set_local_light_shadows_distance_culling_active(t_active) end
```

### `settings_set_local_light_shadows_fade_range`

`settings_set_local_light_shadows_fade_range(t_fade_range)`

```lua
---@param t_fade_range number
function settings_set_local_light_shadows_fade_range(t_fade_range) end
```

### `settings_set_local_light_shadows_max_distance`

`settings_set_local_light_shadows_max_distance(t_distance)`

```lua
---@param t_distance number
function settings_set_local_light_shadows_max_distance(t_distance) end
```

### `settings_set_local_lights_culling_active`

`settings_set_local_lights_culling_active(t_active)`

```lua
---@param t_active boolean
function settings_set_local_lights_culling_active(t_active) end
```

### `settings_set_local_lights_distance_culling_active`

`settings_set_local_lights_distance_culling_active(t_active)`

```lua
---@param t_active boolean
function settings_set_local_lights_distance_culling_active(t_active) end
```

### `settings_set_local_lights_distance_culling_fade_range`

`settings_set_local_lights_distance_culling_fade_range(t_fade_range)`

```lua
---@param t_fade_range number
function settings_set_local_lights_distance_culling_fade_range(t_fade_range) end
```

### `settings_set_local_lights_distance_culling_max_distance`

`settings_set_local_lights_distance_culling_max_distance(t_distance)`

```lua
---@param t_distance number
function settings_set_local_lights_distance_culling_max_distance(t_distance) end
```

### `settings_set_local_lights_frustum_culling_active`

`settings_set_local_lights_frustum_culling_active(t_active)`

```lua
---@param t_active boolean
function settings_set_local_lights_frustum_culling_active(t_active) end
```

### `settings_set_master_volume`

`settings_set_master_volume(t_volume)`

```lua
---@param t_volume number
function settings_set_master_volume(t_volume) end
```

### `settings_set_monitor_index`

`settings_set_monitor_index(t_monitor_index)`

```lua
---@param t_monitor_index integer
---@return boolean
function settings_set_monitor_index(t_monitor_index) end
```

### `settings_set_music_volume`

`settings_set_music_volume(t_volume)`

```lua
---@param t_volume number
function settings_set_music_volume(t_volume) end
```

### `settings_set_render_scale`

`settings_set_render_scale(t_scale)`

```lua
---@param t_scale number
function settings_set_render_scale(t_scale) end
```

### `settings_set_resolution`

`settings_set_resolution(t_width, t_height)`

```lua
---@param t_width integer
---@param t_height integer
---@return boolean
function settings_set_resolution(t_width, t_height) end
```

### `settings_set_reverb_quality`

`settings_set_reverb_quality(t_quality)`

```lua
---@param t_quality integer
function settings_set_reverb_quality(t_quality) end
```

### `settings_set_sfx_volume`

`settings_set_sfx_volume(t_volume)`

```lua
---@param t_volume number
function settings_set_sfx_volume(t_volume) end
```

### `settings_set_shadow_map_quality`

`settings_set_shadow_map_quality(t_quality)`

```lua
---@param t_quality integer
function settings_set_shadow_map_quality(t_quality) end
```

### `settings_set_ssao_quality`

`settings_set_ssao_quality(t_quality)`

```lua
---@param t_quality integer
function settings_set_ssao_quality(t_quality) end
```

### `settings_set_ssr_quality`

`settings_set_ssr_quality(t_quality)`

```lua
---@param t_quality integer
function settings_set_ssr_quality(t_quality) end
```

### `settings_set_string`

`settings_set_string(t_section, t_key, t_value)`

```lua
---@param t_section string
---@param t_key string
---@param t_value string
function settings_set_string(t_section, t_key, t_value) end
```

### `settings_set_ui_scale`

`settings_set_ui_scale(t_scale)`

```lua
---@param t_scale number
function settings_set_ui_scale(t_scale) end
```

### `settings_set_ui_volume`

`settings_set_ui_volume(t_volume)`

```lua
---@param t_volume number
function settings_set_ui_volume(t_volume) end
```

### `settings_set_voice_volume`

`settings_set_voice_volume(t_volume)`

```lua
---@param t_volume number
function settings_set_voice_volume(t_volume) end
```

### `settings_set_vsync_mode`

`settings_set_vsync_mode(t_mode)`

```lua
---@param t_mode integer
function settings_set_vsync_mode(t_mode) end
```

### `settings_set_window_mode`

`settings_set_window_mode(t_mode)`

```lua
---@param t_mode integer
function settings_set_window_mode(t_mode) end
```
