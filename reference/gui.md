# Gui

Script API functions in the `gui` group.

### `gui_text`

`gui_text(t_text)`

```lua
---@param t_text string
function gui_text(t_text) end
```

### `gui_text_wrapped`

`gui_text_wrapped(t_text)`

```lua
---@param t_text string
function gui_text_wrapped(t_text) end
```

### `gui_push_font`

`gui_push_font(t_font_id)`

```lua
---@param t_font_id string
function gui_push_font(t_font_id) end
```

### `gui_pop_font`

`gui_pop_font()`

```lua
function gui_pop_font() end
```

### `gui_text_colored`

`gui_text_colored(t_color, t_text)`

```lua
---@param t_color vec4
---@param t_text string
function gui_text_colored(t_color, t_text) end
```

### `gui_button`

`gui_button(t_label)`

```lua
---@param t_label string
---@return boolean
function gui_button(t_label) end
```

### `gui_image`

`gui_image(t_texture_path, t_size)`

```lua
---@param t_texture_path string
---@param t_size vec2
function gui_image(t_texture_path, t_size) end
```

### `gui_progress_bar`

`gui_progress_bar(t_fraction, t_overlay_text)`

```lua
---@param t_fraction number
---@param t_overlay_text string
function gui_progress_bar(t_fraction, t_overlay_text) end
```

### `gui_begin_window`

`gui_begin_window(t_name, t_flags)`

```lua
---@param t_name string
---@param t_flags integer
---@return boolean
function gui_begin_window(t_name, t_flags) end
```

### `gui_end_window`

`gui_end_window()`

```lua
function gui_end_window() end
```

### `gui_set_next_window_pos`

`gui_set_next_window_pos(t_position, t_cond)`

```lua
---@param t_position vec2
---@param t_cond integer
function gui_set_next_window_pos(t_position, t_cond) end
```

### `gui_set_next_window_size`

`gui_set_next_window_size(t_size, t_cond)`

```lua
---@param t_size vec2
---@param t_cond integer
function gui_set_next_window_size(t_size, t_cond) end
```

### `gui_get_window_size`

`gui_get_window_size()`

```lua
---@return vec2
function gui_get_window_size() end
```

### `gui_get_display_size`

`gui_get_display_size()`

```lua
---@return vec2
function gui_get_display_size() end
```

### `gui_same_line`

`gui_same_line(t_offset_from_start_x, t_spacing_w)`

```lua
---@param t_offset_from_start_x number
---@param t_spacing_w number
function gui_same_line(t_offset_from_start_x, t_spacing_w) end
```

### `gui_set_cursor_screen_pos`

`gui_set_cursor_screen_pos(t_position)`

```lua
---@param t_position vec2
function gui_set_cursor_screen_pos(t_position) end
```

### `gui_get_cursor_screen_pos`

`gui_get_cursor_screen_pos()`

```lua
---@return vec2
function gui_get_cursor_screen_pos() end
```

### `gui_separator`

`gui_separator()`

```lua
function gui_separator() end
```

### `gui_spacing`

`gui_spacing(t_spacing, t_boolean_2)`

```lua
---@param t_spacing number
---@param t_boolean_2 boolean
function gui_spacing(t_spacing, t_boolean_2) end
```

### `gui_dummy`

`gui_dummy(t_size)`

```lua
---@param t_size vec2
function gui_dummy(t_size) end
```

### `gui_push_style_var_float`

`gui_push_style_var_float(t_style_var, t_value)`

```lua
---@param t_style_var integer
---@param t_value number
function gui_push_style_var_float(t_style_var, t_value) end
```

### `gui_push_style_var_vec2`

`gui_push_style_var_vec2(t_style_var, t_value)`

```lua
---@param t_style_var integer
---@param t_value vec2
function gui_push_style_var_vec2(t_style_var, t_value) end
```

### `gui_pop_style_var`

`gui_pop_style_var(t_count)`

```lua
---@param t_count integer
function gui_pop_style_var(t_count) end
```

### `gui_push_style_color`

`gui_push_style_color(t_color_idx, t_color)`

```lua
---@param t_color_idx integer
---@param t_color vec4
function gui_push_style_color(t_color_idx, t_color) end
```

### `gui_pop_style_color`

`gui_pop_style_color(t_count)`

```lua
---@param t_count integer
function gui_pop_style_color(t_count) end
```

### `gui_set_next_window_bg_alpha`

`gui_set_next_window_bg_alpha(t_alpha)`

```lua
---@param t_alpha number
function gui_set_next_window_bg_alpha(t_alpha) end
```

### `gui_begin_child`

`gui_begin_child(t_id, t_size, t_flags)`

```lua
---@param t_id string
---@param t_size vec2
---@param t_flags integer
---@return boolean
function gui_begin_child(t_id, t_size, t_flags) end
```

### `gui_end_child`

`gui_end_child()`

```lua
function gui_end_child() end
```

### `gui_invisible_button`

`gui_invisible_button(t_id, t_size, t_enable_nav)`

```lua
---@param t_id string
---@param t_size vec2
---@param t_enable_nav boolean
---@return boolean
function gui_invisible_button(t_id, t_size, t_enable_nav) end
```

### `gui_get_item_rect_min`

`gui_get_item_rect_min()`

```lua
---@return vec2
function gui_get_item_rect_min() end
```

### `gui_get_item_rect_size`

`gui_get_item_rect_size()`

```lua
---@return vec2
function gui_get_item_rect_size() end
```

### `gui_get_content_region_avail`

`gui_get_content_region_avail()`

```lua
---@return vec2
function gui_get_content_region_avail() end
```

### `gui_get_is_item_hovered`

`gui_get_is_item_hovered()`

```lua
---@return boolean
function gui_get_is_item_hovered() end
```

### `gui_get_is_item_active`

`gui_get_is_item_active()`

```lua
---@return boolean
function gui_get_is_item_active() end
```

### `gui_get_is_item_focused`

`gui_get_is_item_focused()`

```lua
---@return boolean
function gui_get_is_item_focused() end
```

### `gui_set_item_default_focus`

`gui_set_item_default_focus()`

```lua
function gui_set_item_default_focus() end
```

### `gui_checkbox`

`gui_checkbox(t_label, t_value)`

```lua
---@param t_label string
---@param t_value boolean
---@return boolean
function gui_checkbox(t_label, t_value) end
```

### `gui_slider_float`

`gui_slider_float(t_label, t_value, t_min_value, t_max_value)`

```lua
---@param t_label string
---@param t_value number
---@param t_min_value number
---@param t_max_value number
---@return number
function gui_slider_float(t_label, t_value, t_min_value, t_max_value) end
```

### `gui_input_text`

`gui_input_text(t_id, t_text, t_width, t_max_length)`

```lua
---@param t_id string
---@param t_text string
---@param t_width number
---@param t_max_length integer
---@return boolean
function gui_input_text(t_id, t_text, t_width, t_max_length) end
```

### `gui_begin_popup_modal`

`gui_begin_popup_modal(t_name, t_flags)`

```lua
---@param t_name string
---@param t_flags integer
---@return boolean
function gui_begin_popup_modal(t_name, t_flags) end
```

### `gui_end_popup`

`gui_end_popup()`

```lua
function gui_end_popup() end
```

### `gui_open_popup`

`gui_open_popup(t_name)`

```lua
---@param t_name string
function gui_open_popup(t_name) end
```

### `gui_close_current_popup`

`gui_close_current_popup()`

```lua
function gui_close_current_popup() end
```

### `gui_get_want_capture_mouse`

`gui_get_want_capture_mouse()`

```lua
---@return boolean
function gui_get_want_capture_mouse() end
```

### `gui_get_want_capture_keyboard`

`gui_get_want_capture_keyboard()`

```lua
---@return boolean
function gui_get_want_capture_keyboard() end
```

### `gui_get_is_interacting`

`gui_get_is_interacting()`

```lua
---@return boolean
function gui_get_is_interacting() end
```

### `gui_set_tooltip`

`gui_set_tooltip(t_text)`

```lua
---@param t_text string
function gui_set_tooltip(t_text) end
```

### `gui_set_reference_resolution`

`gui_set_reference_resolution(t_width, t_height)`

```lua
---@param t_width number
---@param t_height number
function gui_set_reference_resolution(t_width, t_height) end
```

### `gui_get_reference_resolution`

`gui_get_reference_resolution()`

```lua
---@return vec2
function gui_get_reference_resolution() end
```

### `gui_set_scale_mode`

`gui_set_scale_mode(t_mode)`

```lua
---@param t_mode integer
function gui_set_scale_mode(t_mode) end
```

### `gui_get_scale_mode`

`gui_get_scale_mode()`

```lua
---@return integer
function gui_get_scale_mode() end
```

### `gui_get_letterbox_scale`

`gui_get_letterbox_scale()`

```lua
---@return number
function gui_get_letterbox_scale() end
```

### `gui_get_letterbox_offset`

`gui_get_letterbox_offset()`

```lua
---@return vec2
function gui_get_letterbox_offset() end
```

### `gui_get_font_global_scale`

`gui_get_font_global_scale()`

```lua
---@return number
function gui_get_font_global_scale() end
```

### `gui_push_design_space`

`gui_push_design_space()`

```lua
function gui_push_design_space() end
```

### `gui_pop_design_space`

`gui_pop_design_space()`

```lua
function gui_pop_design_space() end
```

### `gui_get_is_design_space_active`

`gui_get_is_design_space_active()`

```lua
---@return boolean
function gui_get_is_design_space_active() end
```

### `gui_begin_design_canvas`

`gui_begin_design_canvas(t_name, t_flags)`

```lua
---@param t_name string
---@param t_flags integer
---@return boolean
function gui_begin_design_canvas(t_name, t_flags) end
```

### `gui_end_design_canvas`

`gui_end_design_canvas()`

```lua
function gui_end_design_canvas() end
```

### `gui_begin_screen_canvas`

`gui_begin_screen_canvas(t_name, t_flags)`

```lua
---@param t_name string
---@param t_flags integer
---@return boolean
function gui_begin_screen_canvas(t_name, t_flags) end
```

### `gui_end_screen_canvas`

`gui_end_screen_canvas()`

```lua
function gui_end_screen_canvas() end
```

### `gui_get_design_to_screen_position`

`gui_get_design_to_screen_position(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_design_to_screen_position(t_vec2_1) end
```

### `gui_get_design_to_screen_size`

`gui_get_design_to_screen_size(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_design_to_screen_size(t_vec2_1) end
```

### `gui_get_design_to_screen_scalar`

`gui_get_design_to_screen_scalar(t_number_1)`

```lua
---@param t_number_1 number
---@return number
function gui_get_design_to_screen_scalar(t_number_1) end
```

### `gui_get_screen_to_design_position`

`gui_get_screen_to_design_position(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_screen_to_design_position(t_vec2_1) end
```

### `gui_get_screen_to_design_size`

`gui_get_screen_to_design_size(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_screen_to_design_size(t_vec2_1) end
```

### `gui_get_screen_to_design_scalar`

`gui_get_screen_to_design_scalar(t_number_1)`

```lua
---@param t_number_1 number
---@return number
function gui_get_screen_to_design_scalar(t_number_1) end
```

### `gui_get_layout_size`

`gui_get_layout_size()`

```lua
---@return vec2
function gui_get_layout_size() end
```

### `gui_get_normalized_to_pixels`

`gui_get_normalized_to_pixels(t_number_1)`

```lua
---@param t_number_1 number
---@return number
function gui_get_normalized_to_pixels(t_number_1) end
```

### `gui_get_pixels_to_normalized`

`gui_get_pixels_to_normalized(t_number_1)`

```lua
---@param t_number_1 number
---@return number
function gui_get_pixels_to_normalized(t_number_1) end
```

### `gui_get_normalized_to_position`

`gui_get_normalized_to_position(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_normalized_to_position(t_vec2_1) end
```

### `gui_get_position_to_normalized`

`gui_get_position_to_normalized(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_position_to_normalized(t_vec2_1) end
```

### `gui_get_normalized_to_size`

`gui_get_normalized_to_size(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_normalized_to_size(t_vec2_1) end
```

### `gui_get_size_to_normalized`

`gui_get_size_to_normalized(t_vec2_1)`

```lua
---@param t_vec2_1 vec2
---@return vec2
function gui_get_size_to_normalized(t_vec2_1) end
```

### `gui_get_normalized_to_uniform_size`

`gui_get_normalized_to_uniform_size(t_number_1)`

```lua
---@param t_number_1 number
---@return vec2
function gui_get_normalized_to_uniform_size(t_number_1) end
```

### `gui_get_aligned_position`

`gui_get_aligned_position(t_container_position, t_container_size, t_content_size, t_h_align, t_v_align, t_margin)`

```lua
---@param t_container_position vec2
---@param t_container_size vec2
---@param t_content_size vec2
---@param t_h_align integer
---@param t_v_align integer
---@param t_margin vec2
---@return vec2
function gui_get_aligned_position(t_container_position, t_container_size, t_content_size, t_h_align, t_v_align, t_margin) end
```

### `gui_get_anchored_position`

`gui_get_anchored_position(t_parent_position, t_parent_size, t_content_size, t_anchor, t_pivot, t_offset)`

```lua
---@param t_parent_position vec2
---@param t_parent_size vec2
---@param t_content_size vec2
---@param t_anchor vec2
---@param t_pivot vec2
---@param t_offset vec2
---@return vec2
function gui_get_anchored_position(t_parent_position, t_parent_size, t_content_size, t_anchor, t_pivot, t_offset) end
```

### `gui_get_anchored_rect`

`gui_get_anchored_rect(t_parent_position, t_parent_size, t_anchor_min, t_anchor_max, t_pivot, t_size_delta, t_anchored_position)`

```lua
---@param t_parent_position vec2
---@param t_parent_size vec2
---@param t_anchor_min vec2
---@param t_anchor_max vec2
---@param t_pivot vec2
---@param t_size_delta vec2
---@param t_anchored_position vec2
---@return vec2
function gui_get_anchored_rect(t_parent_position, t_parent_size, t_anchor_min, t_anchor_max, t_pivot, t_size_delta, t_anchored_position) end
```

### `gui_draw_image`

`gui_draw_image(t_texture_path, t_position, t_size, t_color)`

```lua
---@param t_texture_path string
---@param t_position vec2
---@param t_size vec2
---@param t_color vec4
function gui_draw_image(t_texture_path, t_position, t_size, t_color) end
```

### `gui_draw_image_region`

`gui_draw_image_region(t_texture_path, t_position, t_size, t_uv_min, t_uv_max, t_color)`

```lua
---@param t_texture_path string
---@param t_position vec2
---@param t_size vec2
---@param t_uv_min vec2
---@param t_uv_max vec2
---@param t_color vec4
function gui_draw_image_region(t_texture_path, t_position, t_size, t_uv_min, t_uv_max, t_color) end
```

### `gui_draw_image_sliced`

`gui_draw_image_sliced(t_texture_path, t_position, t_size, t_border_left, t_border_top, t_border_right, t_border_bottom, t_color)`

```lua
---@param t_texture_path string
---@param t_position vec2
---@param t_size vec2
---@param t_border_left number
---@param t_border_top number
---@param t_border_right number
---@param t_border_bottom number
---@param t_color vec4
function gui_draw_image_sliced(t_texture_path, t_position, t_size, t_border_left, t_border_top, t_border_right, t_border_bottom, t_color) end
```

### `gui_push_clip_rect`

`gui_push_clip_rect(t_clip_min, t_clip_max, t_intersect)`

```lua
---@param t_clip_min vec2
---@param t_clip_max vec2
---@param t_intersect boolean
function gui_push_clip_rect(t_clip_min, t_clip_max, t_intersect) end
```

### `gui_pop_clip_rect`

`gui_pop_clip_rect()`

```lua
function gui_pop_clip_rect() end
```

### `gui_push_foreground_draw`

`gui_push_foreground_draw()`

```lua
function gui_push_foreground_draw() end
```

### `gui_pop_foreground_draw`

`gui_pop_foreground_draw()`

```lua
function gui_pop_foreground_draw() end
```

### `gui_push_draw_priority`

`gui_push_draw_priority(t_priority)`

```lua
---@param t_priority integer
function gui_push_draw_priority(t_priority) end
```

### `gui_pop_draw_priority`

`gui_pop_draw_priority()`

```lua
function gui_pop_draw_priority() end
```

### `gui_get_draw_priority`

`gui_get_draw_priority()`

```lua
---@return integer
function gui_get_draw_priority() end
```

### `gui_draw_text`

`gui_draw_text(t_text, t_position, t_font_size, t_color, t_font_id, t_scale)`

```lua
---@param t_text string
---@param t_position vec2
---@param t_font_size number
---@param t_color vec4
---@param t_font_id string
---@param t_scale number
function gui_draw_text(t_text, t_position, t_font_size, t_color, t_font_id, t_scale) end
```

### `gui_draw_text_aligned`

`gui_draw_text_aligned(t_text, t_rect_position, t_rect_size, t_h_align, t_v_align, t_font_size, t_color, t_font_id, t_scale)`

```lua
---@param t_text string
---@param t_rect_position vec2
---@param t_rect_size vec2
---@param t_h_align integer
---@param t_v_align integer
---@param t_font_size number
---@param t_color vec4
---@param t_font_id string
---@param t_scale number
function gui_draw_text_aligned(t_text, t_rect_position, t_rect_size, t_h_align, t_v_align, t_font_size, t_color, t_font_id, t_scale) end
```

### `gui_draw_text_shadowed`

`gui_draw_text_shadowed(t_text, t_position, t_font_size, t_color, t_font_id, t_scale)`

```lua
---@param t_text string
---@param t_position vec2
---@param t_font_size number
---@param t_color vec4
---@param t_font_id string
---@param t_scale number
function gui_draw_text_shadowed(t_text, t_position, t_font_size, t_color, t_font_id, t_scale) end
```

### `gui_draw_rect`

`gui_draw_rect(t_position, t_size, t_color)`

```lua
---@param t_position vec2
---@param t_size vec2
---@param t_color vec4
function gui_draw_rect(t_position, t_size, t_color) end
```

### `gui_draw_rect_rounded`

`gui_draw_rect_rounded(t_position, t_size, t_rounding, t_color)`

```lua
---@param t_position vec2
---@param t_size vec2
---@param t_rounding number
---@param t_color vec4
function gui_draw_rect_rounded(t_position, t_size, t_rounding, t_color) end
```

### `gui_draw_line`

`gui_draw_line(t_p1, t_p2, t_thickness, t_color)`

```lua
---@param t_p1 vec2
---@param t_p2 vec2
---@param t_thickness number
---@param t_color vec4
function gui_draw_line(t_p1, t_p2, t_thickness, t_color) end
```

### `gui_draw_circle`

`gui_draw_circle(t_center, t_radius, t_color)`

```lua
---@param t_center vec2
---@param t_radius number
---@param t_color vec4
function gui_draw_circle(t_center, t_radius, t_color) end
```

### `gui_draw_circle_outlined`

`gui_draw_circle_outlined(t_center, t_radius, t_thickness, t_color)`

```lua
---@param t_center vec2
---@param t_radius number
---@param t_thickness number
---@param t_color vec4
function gui_draw_circle_outlined(t_center, t_radius, t_thickness, t_color) end
```

### `gui_draw_progress_bar`

`gui_draw_progress_bar(t_position, t_size, t_progress, t_bg_color, t_fill_color)`

```lua
---@param t_position vec2
---@param t_size vec2
---@param t_progress number
---@param t_bg_color vec4
---@param t_fill_color vec4
function gui_draw_progress_bar(t_position, t_size, t_progress, t_bg_color, t_fill_color) end
```

### `gui_get_text_size`

`gui_get_text_size(t_text, t_font_size, t_font_id, t_scale)`

```lua
---@param t_text string
---@param t_font_size number
---@param t_font_id string
---@param t_scale number
---@return vec2
function gui_get_text_size(t_text, t_font_size, t_font_id, t_scale) end
```
