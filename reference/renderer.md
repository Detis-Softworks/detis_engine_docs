# Renderer

Script API functions in the `renderer` group.

### `renderer_set_tonemap_brightness`

`renderer_set_tonemap_brightness(t_brightness)`

```lua
---@param t_brightness number
function renderer_set_tonemap_brightness(t_brightness) end
```

### `renderer_get_tonemap_brightness`

`renderer_get_tonemap_brightness()`

```lua
---@return number
function renderer_get_tonemap_brightness() end
```

### `renderer_set_tonemap_contrast`

`renderer_set_tonemap_contrast(t_contrast)`

```lua
---@param t_contrast number
function renderer_set_tonemap_contrast(t_contrast) end
```

### `renderer_get_tonemap_contrast`

`renderer_get_tonemap_contrast()`

```lua
---@return number
function renderer_get_tonemap_contrast() end
```

### `renderer_set_tonemap_saturation`

`renderer_set_tonemap_saturation(t_saturation)`

```lua
---@param t_saturation number
function renderer_set_tonemap_saturation(t_saturation) end
```

### `renderer_get_tonemap_saturation`

`renderer_get_tonemap_saturation()`

```lua
---@return number
function renderer_get_tonemap_saturation() end
```

### `renderer_set_tonemap_color_shadows`

`renderer_set_tonemap_color_shadows(t_color)`

```lua
---@param t_color vec3
function renderer_set_tonemap_color_shadows(t_color) end
```

### `renderer_get_tonemap_color_shadows`

`renderer_get_tonemap_color_shadows()`

```lua
---@return vec3
function renderer_get_tonemap_color_shadows() end
```

### `renderer_set_tonemap_color_midtones`

`renderer_set_tonemap_color_midtones(t_color)`

```lua
---@param t_color vec3
function renderer_set_tonemap_color_midtones(t_color) end
```

### `renderer_get_tonemap_color_midtones`

`renderer_get_tonemap_color_midtones()`

```lua
---@return vec3
function renderer_get_tonemap_color_midtones() end
```

### `renderer_set_tonemap_color_highlights`

`renderer_set_tonemap_color_highlights(t_color)`

```lua
---@param t_color vec3
function renderer_set_tonemap_color_highlights(t_color) end
```

### `renderer_get_tonemap_color_highlights`

`renderer_get_tonemap_color_highlights()`

```lua
---@return vec3
function renderer_get_tonemap_color_highlights() end
```

### `renderer_set_color_correction_active`

`renderer_set_color_correction_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_color_correction_active(t_active) end
```

### `renderer_get_is_color_correction_active`

`renderer_get_is_color_correction_active()`

```lua
---@return boolean
function renderer_get_is_color_correction_active() end
```

### `renderer_set_tonemap_shadow_range`

`renderer_set_tonemap_shadow_range(t_range)`

```lua
---@param t_range number
function renderer_set_tonemap_shadow_range(t_range) end
```

### `renderer_get_tonemap_shadow_range`

`renderer_get_tonemap_shadow_range()`

```lua
---@return number
function renderer_get_tonemap_shadow_range() end
```

### `renderer_set_tonemap_highlight_range`

`renderer_set_tonemap_highlight_range(t_range)`

```lua
---@param t_range number
function renderer_set_tonemap_highlight_range(t_range) end
```

### `renderer_get_tonemap_highlight_range`

`renderer_get_tonemap_highlight_range()`

```lua
---@return number
function renderer_get_tonemap_highlight_range() end
```

### `renderer_set_global_wetness_intensity`

`renderer_set_global_wetness_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_global_wetness_intensity(t_intensity) end
```

### `renderer_get_global_wetness_intensity`

`renderer_get_global_wetness_intensity()`

```lua
---@return number
function renderer_get_global_wetness_intensity() end
```

### `renderer_set_sky_active`

`renderer_set_sky_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_sky_active(t_active) end
```

### `renderer_get_is_sky_active`

`renderer_get_is_sky_active()`

```lua
---@return boolean
function renderer_get_is_sky_active() end
```

### `renderer_set_sky_texture_file`

`renderer_set_sky_texture_file(t_file_path)`

```lua
---@param t_file_path string
function renderer_set_sky_texture_file(t_file_path) end
```

### `renderer_get_sky_texture_file`

`renderer_get_sky_texture_file()`

```lua
---@return string
function renderer_get_sky_texture_file() end
```

### `renderer_set_sky_rotation`

`renderer_set_sky_rotation(t_rotation)`

```lua
---@param t_rotation number
function renderer_set_sky_rotation(t_rotation) end
```

### `renderer_get_sky_rotation`

`renderer_get_sky_rotation()`

```lua
---@return number
function renderer_get_sky_rotation() end
```

### `renderer_set_sky_color`

`renderer_set_sky_color(t_color)`

```lua
---@param t_color vec3
function renderer_set_sky_color(t_color) end
```

### `renderer_get_sky_color`

`renderer_get_sky_color()`

```lua
---@return vec3
function renderer_get_sky_color() end
```

### `renderer_set_sky_brightness`

`renderer_set_sky_brightness(t_brightness)`

```lua
---@param t_brightness number
function renderer_set_sky_brightness(t_brightness) end
```

### `renderer_get_sky_brightness`

`renderer_get_sky_brightness()`

```lua
---@return number
function renderer_get_sky_brightness() end
```

### `renderer_set_sky_contrast`

`renderer_set_sky_contrast(t_contrast)`

```lua
---@param t_contrast number
function renderer_set_sky_contrast(t_contrast) end
```

### `renderer_get_sky_contrast`

`renderer_get_sky_contrast()`

```lua
---@return number
function renderer_get_sky_contrast() end
```

### `renderer_set_sky_ibl_active`

`renderer_set_sky_ibl_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_sky_ibl_active(t_active) end
```

### `renderer_get_is_sky_ibl_active`

`renderer_get_is_sky_ibl_active()`

```lua
---@return boolean
function renderer_get_is_sky_ibl_active() end
```

### `renderer_set_sky_ibl_apply_fog`

`renderer_set_sky_ibl_apply_fog(t_apply_fog)`

```lua
---@param t_apply_fog boolean
function renderer_set_sky_ibl_apply_fog(t_apply_fog) end
```

### `renderer_get_sky_ibl_apply_fog`

`renderer_get_sky_ibl_apply_fog()`

```lua
---@return boolean
function renderer_get_sky_ibl_apply_fog() end
```

### `renderer_set_sky_specular_ibl_intensity`

`renderer_set_sky_specular_ibl_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_sky_specular_ibl_intensity(t_intensity) end
```

### `renderer_get_sky_specular_ibl_intensity`

`renderer_get_sky_specular_ibl_intensity()`

```lua
---@return number
function renderer_get_sky_specular_ibl_intensity() end
```

### `renderer_set_sky_diffuse_ibl_intensity`

`renderer_set_sky_diffuse_ibl_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_sky_diffuse_ibl_intensity(t_intensity) end
```

### `renderer_get_sky_diffuse_ibl_intensity`

`renderer_get_sky_diffuse_ibl_intensity()`

```lua
---@return number
function renderer_get_sky_diffuse_ibl_intensity() end
```

### `renderer_set_sunlight_active`

`renderer_set_sunlight_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_sunlight_active(t_active) end
```

### `renderer_get_is_sunlight_active`

`renderer_get_is_sunlight_active()`

```lua
---@return boolean
function renderer_get_is_sunlight_active() end
```

### `renderer_set_sunlight_lux`

`renderer_set_sunlight_lux(t_lux)`

```lua
---@param t_lux number
function renderer_set_sunlight_lux(t_lux) end
```

### `renderer_get_sunlight_lux`

`renderer_get_sunlight_lux()`

```lua
---@return number
function renderer_get_sunlight_lux() end
```

### `renderer_set_sunlight_direction`

`renderer_set_sunlight_direction(t_direction)`

```lua
---@param t_direction vec3
function renderer_set_sunlight_direction(t_direction) end
```

### `renderer_get_sunlight_direction`

`renderer_get_sunlight_direction()`

```lua
---@return vec3
function renderer_get_sunlight_direction() end
```

### `renderer_set_sunlight_color`

`renderer_set_sunlight_color(t_color)`

```lua
---@param t_color vec3
function renderer_set_sunlight_color(t_color) end
```

### `renderer_get_sunlight_color`

`renderer_get_sunlight_color()`

```lua
---@return vec3
function renderer_get_sunlight_color() end
```

### `renderer_set_sunlight_temperature_k`

`renderer_set_sunlight_temperature_k(t_temperature_k)`

```lua
---@param t_temperature_k number
function renderer_set_sunlight_temperature_k(t_temperature_k) end
```

### `renderer_get_sunlight_temperature_k`

`renderer_get_sunlight_temperature_k()`

```lua
---@return number
function renderer_get_sunlight_temperature_k() end
```

### `renderer_set_sunlight_specular_intensity`

`renderer_set_sunlight_specular_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_sunlight_specular_intensity(t_intensity) end
```

### `renderer_get_sunlight_specular_intensity`

`renderer_get_sunlight_specular_intensity()`

```lua
---@return number
function renderer_get_sunlight_specular_intensity() end
```

### `renderer_set_sunlight_shadow_active`

`renderer_set_sunlight_shadow_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_sunlight_shadow_active(t_active) end
```

### `renderer_get_is_sunlight_shadow_active`

`renderer_get_is_sunlight_shadow_active()`

```lua
---@return boolean
function renderer_get_is_sunlight_shadow_active() end
```

### `renderer_set_sunlight_shadow_blur`

`renderer_set_sunlight_shadow_blur(t_blur)`

```lua
---@param t_blur number
function renderer_set_sunlight_shadow_blur(t_blur) end
```

### `renderer_get_sunlight_shadow_blur`

`renderer_get_sunlight_shadow_blur()`

```lua
---@return number
function renderer_get_sunlight_shadow_blur() end
```

### `renderer_set_sunlight_shadow_bias`

`renderer_set_sunlight_shadow_bias(t_bias)`

```lua
---@param t_bias number
function renderer_set_sunlight_shadow_bias(t_bias) end
```

### `renderer_get_sunlight_shadow_bias`

`renderer_get_sunlight_shadow_bias()`

```lua
---@return number
function renderer_get_sunlight_shadow_bias() end
```

### `renderer_set_sunlight_shadow_normal_bias`

`renderer_set_sunlight_shadow_normal_bias(t_normal_bias)`

```lua
---@param t_normal_bias number
function renderer_set_sunlight_shadow_normal_bias(t_normal_bias) end
```

### `renderer_get_sunlight_shadow_normal_bias`

`renderer_get_sunlight_shadow_normal_bias()`

```lua
---@return number
function renderer_get_sunlight_shadow_normal_bias() end
```

### `renderer_set_distant_world_darken_active`

`renderer_set_distant_world_darken_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_distant_world_darken_active(t_active) end
```

### `renderer_get_is_distant_world_darken_active`

`renderer_get_is_distant_world_darken_active()`

```lua
---@return boolean
function renderer_get_is_distant_world_darken_active() end
```

### `renderer_set_distant_world_darken_factor`

`renderer_set_distant_world_darken_factor(t_factor)`

```lua
---@param t_factor number
function renderer_set_distant_world_darken_factor(t_factor) end
```

### `renderer_get_distant_world_darken_factor`

`renderer_get_distant_world_darken_factor()`

```lua
---@return number
function renderer_get_distant_world_darken_factor() end
```

### `renderer_set_distant_world_darken_start`

`renderer_set_distant_world_darken_start(t_start)`

```lua
---@param t_start number
function renderer_set_distant_world_darken_start(t_start) end
```

### `renderer_get_distant_world_darken_start`

`renderer_get_distant_world_darken_start()`

```lua
---@return number
function renderer_get_distant_world_darken_start() end
```

### `renderer_set_distant_world_darken_end`

`renderer_set_distant_world_darken_end(t_end)`

```lua
---@param t_end number
function renderer_set_distant_world_darken_end(t_end) end
```

### `renderer_get_distant_world_darken_end`

`renderer_get_distant_world_darken_end()`

```lua
---@return number
function renderer_get_distant_world_darken_end() end
```

### `renderer_set_sunlight_shadow_distance`

`renderer_set_sunlight_shadow_distance(t_distance)`

```lua
---@param t_distance number
function renderer_set_sunlight_shadow_distance(t_distance) end
```

### `renderer_get_sunlight_shadow_distance`

`renderer_get_sunlight_shadow_distance()`

```lua
---@return number
function renderer_get_sunlight_shadow_distance() end
```

### `renderer_set_local_light_shadows_active`

`renderer_set_local_light_shadows_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_local_light_shadows_active(t_active) end
```

### `renderer_get_is_local_light_shadows_active`

`renderer_get_is_local_light_shadows_active()`

```lua
---@return boolean
function renderer_get_is_local_light_shadows_active() end
```

### `renderer_set_local_lights_culling_active`

`renderer_set_local_lights_culling_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_local_lights_culling_active(t_active) end
```

### `renderer_get_is_local_lights_culling_active`

`renderer_get_is_local_lights_culling_active()`

```lua
---@return boolean
function renderer_get_is_local_lights_culling_active() end
```

### `renderer_set_local_lights_frustum_culling_active`

`renderer_set_local_lights_frustum_culling_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_local_lights_frustum_culling_active(t_active) end
```

### `renderer_get_is_local_lights_frustum_culling_active`

`renderer_get_is_local_lights_frustum_culling_active()`

```lua
---@return boolean
function renderer_get_is_local_lights_frustum_culling_active() end
```

### `renderer_set_local_lights_distance_culling_active`

`renderer_set_local_lights_distance_culling_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_local_lights_distance_culling_active(t_active) end
```

### `renderer_get_is_local_lights_distance_culling_active`

`renderer_get_is_local_lights_distance_culling_active()`

```lua
---@return boolean
function renderer_get_is_local_lights_distance_culling_active() end
```

### `renderer_set_local_lights_distance_culling_max_distance`

`renderer_set_local_lights_distance_culling_max_distance(t_distance)`

```lua
---@param t_distance number
function renderer_set_local_lights_distance_culling_max_distance(t_distance) end
```

### `renderer_get_local_lights_distance_culling_max_distance`

`renderer_get_local_lights_distance_culling_max_distance()`

```lua
---@return number
function renderer_get_local_lights_distance_culling_max_distance() end
```

### `renderer_set_local_lights_distance_culling_fade_range`

`renderer_set_local_lights_distance_culling_fade_range(t_fade_range)`

```lua
---@param t_fade_range number
function renderer_set_local_lights_distance_culling_fade_range(t_fade_range) end
```

### `renderer_get_local_lights_distance_culling_fade_range`

`renderer_get_local_lights_distance_culling_fade_range()`

```lua
---@return number
function renderer_get_local_lights_distance_culling_fade_range() end
```

### `renderer_set_ssao_active`

`renderer_set_ssao_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_ssao_active(t_active) end
```

### `renderer_get_is_ssao_active`

`renderer_get_is_ssao_active()`

```lua
---@return boolean
function renderer_get_is_ssao_active() end
```

### `renderer_set_ssao_radius`

`renderer_set_ssao_radius(t_radius)`

```lua
---@param t_radius number
function renderer_set_ssao_radius(t_radius) end
```

### `renderer_get_ssao_radius`

`renderer_get_ssao_radius()`

```lua
---@return number
function renderer_get_ssao_radius() end
```

### `renderer_set_ssao_samples`

`renderer_set_ssao_samples(t_samples)`

```lua
---@param t_samples integer
function renderer_set_ssao_samples(t_samples) end
```

### `renderer_get_ssao_samples`

`renderer_get_ssao_samples()`

```lua
---@return integer
function renderer_get_ssao_samples() end
```

### `renderer_set_ssao_strength`

`renderer_set_ssao_strength(t_strength)`

```lua
---@param t_strength number
function renderer_set_ssao_strength(t_strength) end
```

### `renderer_get_ssao_strength`

`renderer_get_ssao_strength()`

```lua
---@return number
function renderer_get_ssao_strength() end
```

### `renderer_set_ssao_bias`

`renderer_set_ssao_bias(t_bias)`

```lua
---@param t_bias number
function renderer_set_ssao_bias(t_bias) end
```

### `renderer_get_ssao_bias`

`renderer_get_ssao_bias()`

```lua
---@return number
function renderer_get_ssao_bias() end
```

### `renderer_set_ssao_quality`

`renderer_set_ssao_quality(t_quality)`

```lua
---@param t_quality integer
function renderer_set_ssao_quality(t_quality) end
```

### `renderer_get_ssao_quality`

`renderer_get_ssao_quality()`

```lua
---@return integer
function renderer_get_ssao_quality() end
```

### `renderer_set_ssao_blur_size`

`renderer_set_ssao_blur_size(t_blur_size)`

```lua
---@param t_blur_size integer
function renderer_set_ssao_blur_size(t_blur_size) end
```

### `renderer_get_ssao_blur_size`

`renderer_get_ssao_blur_size()`

```lua
---@return integer
function renderer_get_ssao_blur_size() end
```

### `renderer_get_is_ssao_globally_enabled`

`renderer_get_is_ssao_globally_enabled()`

```lua
---@return boolean
function renderer_get_is_ssao_globally_enabled() end
```

### `renderer_get_is_ssao_runtime_active`

`renderer_get_is_ssao_runtime_active()`

```lua
---@return boolean
function renderer_get_is_ssao_runtime_active() end
```

### `renderer_set_ssr_active`

`renderer_set_ssr_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_ssr_active(t_active) end
```

### `renderer_get_is_ssr_active`

`renderer_get_is_ssr_active()`

```lua
---@return boolean
function renderer_get_is_ssr_active() end
```

### `renderer_set_ssr_strength`

`renderer_set_ssr_strength(t_strength)`

```lua
---@param t_strength number
function renderer_set_ssr_strength(t_strength) end
```

### `renderer_get_ssr_strength`

`renderer_get_ssr_strength()`

```lua
---@return number
function renderer_get_ssr_strength() end
```

### `renderer_set_ssr_edge_fade`

`renderer_set_ssr_edge_fade(t_edge_fade)`

```lua
---@param t_edge_fade number
function renderer_set_ssr_edge_fade(t_edge_fade) end
```

### `renderer_get_ssr_edge_fade`

`renderer_get_ssr_edge_fade()`

```lua
---@return number
function renderer_get_ssr_edge_fade() end
```

### `renderer_set_ssr_reflection_fallback_strength`

`renderer_set_ssr_reflection_fallback_strength(t_strength)`

```lua
---@param t_strength number
function renderer_set_ssr_reflection_fallback_strength(t_strength) end
```

### `renderer_get_ssr_reflection_fallback_strength`

`renderer_get_ssr_reflection_fallback_strength()`

```lua
---@return number
function renderer_get_ssr_reflection_fallback_strength() end
```

### `renderer_set_ssr_reflection_source_mode`

`renderer_set_ssr_reflection_source_mode(t_mode)`

```lua
---@param t_mode integer
function renderer_set_ssr_reflection_source_mode(t_mode) end
```

### `renderer_get_ssr_reflection_source_mode`

`renderer_get_ssr_reflection_source_mode()`

```lua
---@return integer
function renderer_get_ssr_reflection_source_mode() end
```

### `renderer_set_ssr_reflection_static_color`

`renderer_set_ssr_reflection_static_color(t_color)`

```lua
---@param t_color vec3
function renderer_set_ssr_reflection_static_color(t_color) end
```

### `renderer_get_ssr_reflection_static_color`

`renderer_get_ssr_reflection_static_color()`

```lua
---@return vec3
function renderer_get_ssr_reflection_static_color() end
```

### `renderer_set_ssr_quality`

`renderer_set_ssr_quality(t_quality)`

```lua
---@param t_quality integer
function renderer_set_ssr_quality(t_quality) end
```

### `renderer_get_ssr_quality`

`renderer_get_ssr_quality()`

```lua
---@return integer
function renderer_get_ssr_quality() end
```

### `renderer_set_ssr_max_steps`

`renderer_set_ssr_max_steps(t_max_steps)`

```lua
---@param t_max_steps integer
function renderer_set_ssr_max_steps(t_max_steps) end
```

### `renderer_get_ssr_max_steps`

`renderer_get_ssr_max_steps()`

```lua
---@return integer
function renderer_get_ssr_max_steps() end
```

### `renderer_set_ssr_step_size`

`renderer_set_ssr_step_size(t_step_size)`

```lua
---@param t_step_size number
function renderer_set_ssr_step_size(t_step_size) end
```

### `renderer_get_ssr_step_size`

`renderer_get_ssr_step_size()`

```lua
---@return number
function renderer_get_ssr_step_size() end
```

### `renderer_set_ssr_thickness`

`renderer_set_ssr_thickness(t_thickness)`

```lua
---@param t_thickness number
function renderer_set_ssr_thickness(t_thickness) end
```

### `renderer_get_ssr_thickness`

`renderer_get_ssr_thickness()`

```lua
---@return number
function renderer_get_ssr_thickness() end
```

### `renderer_get_is_ssr_globally_enabled`

`renderer_get_is_ssr_globally_enabled()`

```lua
---@return boolean
function renderer_get_is_ssr_globally_enabled() end
```

### `renderer_get_is_ssr_runtime_active`

`renderer_get_is_ssr_runtime_active()`

```lua
---@return boolean
function renderer_get_is_ssr_runtime_active() end
```

### `renderer_set_wind_active`

`renderer_set_wind_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_wind_active(t_active) end
```

### `renderer_get_is_wind_active`

`renderer_get_is_wind_active()`

```lua
---@return boolean
function renderer_get_is_wind_active() end
```

### `renderer_set_wind_direction`

`renderer_set_wind_direction(t_direction)`

```lua
---@param t_direction vec2
function renderer_set_wind_direction(t_direction) end
```

### `renderer_get_wind_direction`

`renderer_get_wind_direction()`

```lua
function renderer_get_wind_direction() end
```

### `renderer_set_wind_speed`

`renderer_set_wind_speed(t_speed)`

```lua
---@param t_speed number
function renderer_set_wind_speed(t_speed) end
```

### `renderer_get_wind_speed`

`renderer_get_wind_speed()`

```lua
---@return number
function renderer_get_wind_speed() end
```

### `renderer_set_wind_noise_texture_file`

`renderer_set_wind_noise_texture_file(t_file_path)`

```lua
---@param t_file_path string
function renderer_set_wind_noise_texture_file(t_file_path) end
```

### `renderer_get_wind_noise_texture_file`

`renderer_get_wind_noise_texture_file()`

```lua
---@return string
function renderer_get_wind_noise_texture_file() end
```

### `renderer_clear_wind_noise_texture_file`

`renderer_clear_wind_noise_texture_file()`

```lua
function renderer_clear_wind_noise_texture_file() end
```

### `renderer_get_has_wind_noise_texture`

`renderer_get_has_wind_noise_texture()`

```lua
---@return boolean
function renderer_get_has_wind_noise_texture() end
```

### `renderer_set_fog_active`

`renderer_set_fog_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_fog_active(t_active) end
```

### `renderer_get_is_fog_active`

`renderer_get_is_fog_active()`

```lua
---@return boolean
function renderer_get_is_fog_active() end
```

### `renderer_set_fog_density`

`renderer_set_fog_density(t_density)`

```lua
---@param t_density number
function renderer_set_fog_density(t_density) end
```

### `renderer_get_fog_density`

`renderer_get_fog_density()`

```lua
---@return number
function renderer_get_fog_density() end
```

### `renderer_set_fog_color`

`renderer_set_fog_color(t_color)`

```lua
---@param t_color vec3
function renderer_set_fog_color(t_color) end
```

### `renderer_get_fog_color`

`renderer_get_fog_color()`

```lua
---@return vec3
function renderer_get_fog_color() end
```

### `renderer_set_fog_start_distance`

`renderer_set_fog_start_distance(t_distance)`

```lua
---@param t_distance number
function renderer_set_fog_start_distance(t_distance) end
```

### `renderer_get_fog_start_distance`

`renderer_get_fog_start_distance()`

```lua
---@return number
function renderer_get_fog_start_distance() end
```

### `renderer_set_distance_culling_distance`

`renderer_set_distance_culling_distance(t_distance)`

```lua
---@param t_distance number
function renderer_set_distance_culling_distance(t_distance) end
```

### `renderer_get_distance_culling_distance`

`renderer_get_distance_culling_distance()`

```lua
---@return number
function renderer_get_distance_culling_distance() end
```

### `renderer_set_fog_affect_sky`

`renderer_set_fog_affect_sky(t_affect)`

```lua
---@param t_affect boolean
function renderer_set_fog_affect_sky(t_affect) end
```

### `renderer_get_is_fog_affect_sky`

`renderer_get_is_fog_affect_sky()`

```lua
---@return boolean
function renderer_get_is_fog_affect_sky() end
```

### `renderer_set_fog_sky_intensity`

`renderer_set_fog_sky_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_fog_sky_intensity(t_intensity) end
```

### `renderer_get_fog_sky_intensity`

`renderer_get_fog_sky_intensity()`

```lua
---@return number
function renderer_get_fog_sky_intensity() end
```

### `renderer_set_fog_end_clamp_active`

`renderer_set_fog_end_clamp_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_fog_end_clamp_active(t_active) end
```

### `renderer_get_is_fog_end_clamp_active`

`renderer_get_is_fog_end_clamp_active()`

```lua
---@return boolean
function renderer_get_is_fog_end_clamp_active() end
```

### `renderer_set_fog_volumetric_active`

`renderer_set_fog_volumetric_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_fog_volumetric_active(t_active) end
```

### `renderer_get_is_fog_volumetric_active`

`renderer_get_is_fog_volumetric_active()`

```lua
---@return boolean
function renderer_get_is_fog_volumetric_active() end
```

### `renderer_set_fog_volumetric_scattering_strength`

`renderer_set_fog_volumetric_scattering_strength(t_strength)`

```lua
---@param t_strength number
function renderer_set_fog_volumetric_scattering_strength(t_strength) end
```

### `renderer_get_fog_volumetric_scattering_strength`

`renderer_get_fog_volumetric_scattering_strength()`

```lua
---@return number
function renderer_get_fog_volumetric_scattering_strength() end
```

### `renderer_set_fog_volumetric_scattering_color`

`renderer_set_fog_volumetric_scattering_color(t_color)`

```lua
---@param t_color vec3
function renderer_set_fog_volumetric_scattering_color(t_color) end
```

### `renderer_get_fog_volumetric_scattering_color`

`renderer_get_fog_volumetric_scattering_color()`

```lua
---@return vec3
function renderer_get_fog_volumetric_scattering_color() end
```

### `renderer_set_fog_volumetric_ambient_strength`

`renderer_set_fog_volumetric_ambient_strength(t_strength)`

```lua
---@param t_strength number
function renderer_set_fog_volumetric_ambient_strength(t_strength) end
```

### `renderer_get_fog_volumetric_ambient_strength`

`renderer_get_fog_volumetric_ambient_strength()`

```lua
---@return number
function renderer_get_fog_volumetric_ambient_strength() end
```

### `renderer_set_fog_volumetric_phase_g`

`renderer_set_fog_volumetric_phase_g(t_phase_g)`

```lua
---@param t_phase_g number
function renderer_set_fog_volumetric_phase_g(t_phase_g) end
```

### `renderer_get_fog_volumetric_phase_g`

`renderer_get_fog_volumetric_phase_g()`

```lua
---@return number
function renderer_get_fog_volumetric_phase_g() end
```

### `renderer_set_fog_volumetric_sky_scatter_strength`

`renderer_set_fog_volumetric_sky_scatter_strength(t_strength)`

```lua
---@param t_strength number
function renderer_set_fog_volumetric_sky_scatter_strength(t_strength) end
```

### `renderer_get_fog_volumetric_sky_scatter_strength`

`renderer_get_fog_volumetric_sky_scatter_strength()`

```lua
---@return number
function renderer_get_fog_volumetric_sky_scatter_strength() end
```

### `renderer_set_fog_volumetric_sun_visibility_min`

`renderer_set_fog_volumetric_sun_visibility_min(t_visibility)`

```lua
---@param t_visibility number
function renderer_set_fog_volumetric_sun_visibility_min(t_visibility) end
```

### `renderer_get_fog_volumetric_sun_visibility_min`

`renderer_get_fog_volumetric_sun_visibility_min()`

```lua
---@return number
function renderer_get_fog_volumetric_sun_visibility_min() end
```

### `renderer_set_fog_wind_texture_active`

`renderer_set_fog_wind_texture_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_fog_wind_texture_active(t_active) end
```

### `renderer_get_is_fog_wind_texture_active`

`renderer_get_is_fog_wind_texture_active()`

```lua
---@return boolean
function renderer_get_is_fog_wind_texture_active() end
```

### `renderer_set_fog_cloud_min_multiplier`

`renderer_set_fog_cloud_min_multiplier(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_min_multiplier(t_value) end
```

### `renderer_get_fog_cloud_min_multiplier`

`renderer_get_fog_cloud_min_multiplier()`

```lua
---@return number
function renderer_get_fog_cloud_min_multiplier() end
```

### `renderer_set_fog_cloud_max_multiplier`

`renderer_set_fog_cloud_max_multiplier(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_max_multiplier(t_value) end
```

### `renderer_get_fog_cloud_max_multiplier`

`renderer_get_fog_cloud_max_multiplier()`

```lua
---@return number
function renderer_get_fog_cloud_max_multiplier() end
```

### `renderer_set_fog_cloud_base_scale`

`renderer_set_fog_cloud_base_scale(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_base_scale(t_value) end
```

### `renderer_get_fog_cloud_base_scale`

`renderer_get_fog_cloud_base_scale()`

```lua
---@return number
function renderer_get_fog_cloud_base_scale() end
```

### `renderer_set_fog_cloud_detail_scale`

`renderer_set_fog_cloud_detail_scale(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_detail_scale(t_value) end
```

### `renderer_get_fog_cloud_detail_scale`

`renderer_get_fog_cloud_detail_scale()`

```lua
---@return number
function renderer_get_fog_cloud_detail_scale() end
```

### `renderer_set_fog_cloud_wind_speed`

`renderer_set_fog_cloud_wind_speed(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_wind_speed(t_value) end
```

### `renderer_get_fog_cloud_wind_speed`

`renderer_get_fog_cloud_wind_speed()`

```lua
---@return number
function renderer_get_fog_cloud_wind_speed() end
```

### `renderer_set_fog_cloud_detail_wind_speed`

`renderer_set_fog_cloud_detail_wind_speed(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_detail_wind_speed(t_value) end
```

### `renderer_get_fog_cloud_detail_wind_speed`

`renderer_get_fog_cloud_detail_wind_speed()`

```lua
---@return number
function renderer_get_fog_cloud_detail_wind_speed() end
```

### `renderer_set_fog_cloud_vertical_warp`

`renderer_set_fog_cloud_vertical_warp(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_vertical_warp(t_value) end
```

### `renderer_get_fog_cloud_vertical_warp`

`renderer_get_fog_cloud_vertical_warp()`

```lua
---@return number
function renderer_get_fog_cloud_vertical_warp() end
```

### `renderer_set_fog_cloud_altitude_origin`

`renderer_set_fog_cloud_altitude_origin(t_value)`

```lua
---@param t_value number
function renderer_set_fog_cloud_altitude_origin(t_value) end
```

### `renderer_get_fog_cloud_altitude_origin`

`renderer_get_fog_cloud_altitude_origin()`

```lua
---@return number
function renderer_get_fog_cloud_altitude_origin() end
```

### `renderer_set_gamma`

`renderer_set_gamma(t_gamma)`

```lua
---@param t_gamma number
function renderer_set_gamma(t_gamma) end
```

### `renderer_get_gamma`

`renderer_get_gamma()`

```lua
---@return number
function renderer_get_gamma() end
```

### `renderer_set_bloom_active`

`renderer_set_bloom_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_bloom_active(t_active) end
```

### `renderer_get_is_bloom_active`

`renderer_get_is_bloom_active()`

```lua
---@return boolean
function renderer_get_is_bloom_active() end
```

### `renderer_set_bloom_intensity`

`renderer_set_bloom_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_bloom_intensity(t_intensity) end
```

### `renderer_get_bloom_intensity`

`renderer_get_bloom_intensity()`

```lua
---@return number
function renderer_get_bloom_intensity() end
```

### `renderer_set_bloom_blur_radius`

`renderer_set_bloom_blur_radius(t_radius)`

```lua
---@param t_radius number
function renderer_set_bloom_blur_radius(t_radius) end
```

### `renderer_get_bloom_blur_radius`

`renderer_get_bloom_blur_radius()`

```lua
---@return number
function renderer_get_bloom_blur_radius() end
```

### `renderer_set_bloom_threshold`

`renderer_set_bloom_threshold(t_threshold)`

```lua
---@param t_threshold number
function renderer_set_bloom_threshold(t_threshold) end
```

### `renderer_get_bloom_threshold`

`renderer_get_bloom_threshold()`

```lua
---@return number
function renderer_get_bloom_threshold() end
```

### `renderer_set_bloom_knee`

`renderer_set_bloom_knee(t_knee)`

```lua
---@param t_knee number
function renderer_set_bloom_knee(t_knee) end
```

### `renderer_get_bloom_knee`

`renderer_get_bloom_knee()`

```lua
---@return number
function renderer_get_bloom_knee() end
```

### `renderer_set_auto_exposure_active`

`renderer_set_auto_exposure_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_auto_exposure_active(t_active) end
```

### `renderer_get_is_auto_exposure_active`

`renderer_get_is_auto_exposure_active()`

```lua
---@return boolean
function renderer_get_is_auto_exposure_active() end
```

### `renderer_set_exposure`

`renderer_set_exposure(t_exposure)`

```lua
---@param t_exposure number
function renderer_set_exposure(t_exposure) end
```

### `renderer_get_exposure`

`renderer_get_exposure()`

```lua
---@return number
function renderer_get_exposure() end
```

### `renderer_set_auto_exposure_key`

`renderer_set_auto_exposure_key(t_key)`

```lua
---@param t_key number
function renderer_set_auto_exposure_key(t_key) end
```

### `renderer_get_auto_exposure_key`

`renderer_get_auto_exposure_key()`

```lua
---@return number
function renderer_get_auto_exposure_key() end
```

### `renderer_set_auto_exposure_min`

`renderer_set_auto_exposure_min(t_exposure_min)`

```lua
---@param t_exposure_min number
function renderer_set_auto_exposure_min(t_exposure_min) end
```

### `renderer_get_auto_exposure_min`

`renderer_get_auto_exposure_min()`

```lua
---@return number
function renderer_get_auto_exposure_min() end
```

### `renderer_set_auto_exposure_max`

`renderer_set_auto_exposure_max(t_exposure_max)`

```lua
---@param t_exposure_max number
function renderer_set_auto_exposure_max(t_exposure_max) end
```

### `renderer_get_auto_exposure_max`

`renderer_get_auto_exposure_max()`

```lua
---@return number
function renderer_get_auto_exposure_max() end
```

### `renderer_set_auto_exposure_speed_up`

`renderer_set_auto_exposure_speed_up(t_speed)`

```lua
---@param t_speed number
function renderer_set_auto_exposure_speed_up(t_speed) end
```

### `renderer_get_auto_exposure_speed_up`

`renderer_get_auto_exposure_speed_up()`

```lua
---@return number
function renderer_get_auto_exposure_speed_up() end
```

### `renderer_set_auto_exposure_speed_down`

`renderer_set_auto_exposure_speed_down(t_speed)`

```lua
---@param t_speed number
function renderer_set_auto_exposure_speed_down(t_speed) end
```

### `renderer_get_auto_exposure_speed_down`

`renderer_get_auto_exposure_speed_down()`

```lua
---@return number
function renderer_get_auto_exposure_speed_down() end
```

### `renderer_set_auto_exposure_bias`

`renderer_set_auto_exposure_bias(t_bias)`

```lua
---@param t_bias number
function renderer_set_auto_exposure_bias(t_bias) end
```

### `renderer_get_auto_exposure_bias`

`renderer_get_auto_exposure_bias()`

```lua
---@return number
function renderer_get_auto_exposure_bias() end
```

### `renderer_set_auto_exposure_center_weight`

`renderer_set_auto_exposure_center_weight(t_weight)`

```lua
---@param t_weight number
function renderer_set_auto_exposure_center_weight(t_weight) end
```

### `renderer_get_auto_exposure_center_weight`

`renderer_get_auto_exposure_center_weight()`

```lua
---@return number
function renderer_get_auto_exposure_center_weight() end
```

### `renderer_set_screen_fade_intensity`

`renderer_set_screen_fade_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_screen_fade_intensity(t_intensity) end
```

### `renderer_get_screen_fade_intensity`

`renderer_get_screen_fade_intensity()`

```lua
---@return number
function renderer_get_screen_fade_intensity() end
```

### `renderer_set_screen_fade_color`

`renderer_set_screen_fade_color(t_color)`

```lua
---@param t_color vec3
function renderer_set_screen_fade_color(t_color) end
```

### `renderer_get_screen_fade_color`

`renderer_get_screen_fade_color()`

```lua
---@return vec3
function renderer_get_screen_fade_color() end
```

### `renderer_set_radial_blur_intensity`

`renderer_set_radial_blur_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_radial_blur_intensity(t_intensity) end
```

### `renderer_get_radial_blur_intensity`

`renderer_get_radial_blur_intensity()`

```lua
---@return number
function renderer_get_radial_blur_intensity() end
```

### `renderer_set_radial_blur_samples`

`renderer_set_radial_blur_samples()`

```lua
function renderer_set_radial_blur_samples() end
```

### `renderer_get_radial_blur_samples`

`renderer_get_radial_blur_samples()`

```lua
---@return integer
function renderer_get_radial_blur_samples() end
```

### `renderer_set_radial_blur_center`

`renderer_set_radial_blur_center(t_center)`

```lua
---@param t_center vec2
function renderer_set_radial_blur_center(t_center) end
```

### `renderer_get_radial_blur_center`

`renderer_get_radial_blur_center()`

```lua
function renderer_get_radial_blur_center() end
```

### `renderer_set_image_trail_intensity`

`renderer_set_image_trail_intensity(t_intensity)`

```lua
---@param t_intensity number
function renderer_set_image_trail_intensity(t_intensity) end
```

### `renderer_get_image_trail_intensity`

`renderer_get_image_trail_intensity()`

```lua
---@return number
function renderer_get_image_trail_intensity() end
```

### `renderer_get_custom_post_process_pass_count`

`renderer_get_custom_post_process_pass_count()`

```lua
---@return integer
function renderer_get_custom_post_process_pass_count() end
```

### `renderer_set_custom_post_process_active`

`renderer_set_custom_post_process_active(t_pass_index, t_active)`

```lua
---@param t_pass_index integer
---@param t_active boolean
function renderer_set_custom_post_process_active(t_pass_index, t_active) end
```

### `renderer_get_is_custom_post_process_active`

`renderer_get_is_custom_post_process_active(t_pass_index)`

```lua
---@param t_pass_index integer
---@return boolean
function renderer_get_is_custom_post_process_active(t_pass_index) end
```

### `renderer_set_custom_post_process_shader_file`

`renderer_set_custom_post_process_shader_file(t_pass_index, t_file_path)`

```lua
---@param t_pass_index integer
---@param t_file_path string
function renderer_set_custom_post_process_shader_file(t_pass_index, t_file_path) end
```

### `renderer_get_custom_post_process_shader_file`

`renderer_get_custom_post_process_shader_file(t_pass_index)`

```lua
---@param t_pass_index integer
---@return string
function renderer_get_custom_post_process_shader_file(t_pass_index) end
```

### `renderer_set_custom_post_process_texture_file`

`renderer_set_custom_post_process_texture_file(t_pass_index, t_file_path)`

```lua
---@param t_pass_index integer
---@param t_file_path string
function renderer_set_custom_post_process_texture_file(t_pass_index, t_file_path) end
```

### `renderer_get_custom_post_process_texture_file`

`renderer_get_custom_post_process_texture_file(t_pass_index)`

```lua
---@param t_pass_index integer
---@return string
function renderer_get_custom_post_process_texture_file(t_pass_index) end
```

### `renderer_set_custom_post_process_intensity`

`renderer_set_custom_post_process_intensity(t_pass_index, t_intensity)`

```lua
---@param t_pass_index integer
---@param t_intensity number
function renderer_set_custom_post_process_intensity(t_pass_index, t_intensity) end
```

### `renderer_get_custom_post_process_intensity`

`renderer_get_custom_post_process_intensity(t_pass_index)`

```lua
---@param t_pass_index integer
---@return number
function renderer_get_custom_post_process_intensity(t_pass_index) end
```

### `renderer_set_custom_post_process_color`

`renderer_set_custom_post_process_color(t_pass_index, t_color)`

```lua
---@param t_pass_index integer
---@param t_color vec3
function renderer_set_custom_post_process_color(t_pass_index, t_color) end
```

### `renderer_get_custom_post_process_color`

`renderer_get_custom_post_process_color(t_pass_index)`

```lua
---@param t_pass_index integer
---@return vec3
function renderer_get_custom_post_process_color(t_pass_index) end
```

### `renderer_set_custom_post_process_params`

`renderer_set_custom_post_process_params(t_pass_index, t_params)`

```lua
---@param t_pass_index integer
---@param t_params vec4
function renderer_set_custom_post_process_params(t_pass_index, t_params) end
```

### `renderer_get_custom_post_process_params`

`renderer_get_custom_post_process_params(t_pass_index)`

```lua
---@param t_pass_index integer
---@return vec4
function renderer_get_custom_post_process_params(t_pass_index) end
```

### `renderer_set_fxaa_active`

`renderer_set_fxaa_active(t_active)`

```lua
---@param t_active boolean
function renderer_set_fxaa_active(t_active) end
```

### `renderer_get_is_fxaa_active`

`renderer_get_is_fxaa_active()`

```lua
---@return boolean
function renderer_get_is_fxaa_active() end
```

### `renderer_set_debug_view_mode`

`renderer_set_debug_view_mode(t_mode)`

```lua
---@param t_mode integer
function renderer_set_debug_view_mode(t_mode) end
```

### `renderer_get_debug_view_mode`

`renderer_get_debug_view_mode()`

```lua
---@return integer
function renderer_get_debug_view_mode() end
```

### `renderer_set_render_scale`

`renderer_set_render_scale(t_scale)`

```lua
---@param t_scale number
function renderer_set_render_scale(t_scale) end
```

### `renderer_get_render_scale`

`renderer_get_render_scale()`

```lua
---@return number
function renderer_get_render_scale() end
```

### `renderer_set_ortho_mode`

`renderer_set_ortho_mode(t_active)`

```lua
---@param t_active boolean
function renderer_set_ortho_mode(t_active) end
```

### `renderer_get_ortho_mode`

`renderer_get_ortho_mode()`

```lua
---@return boolean
function renderer_get_ortho_mode() end
```
