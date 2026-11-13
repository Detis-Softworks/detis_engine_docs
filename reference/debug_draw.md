# Debug_draw

Script API functions in the `debug_draw` group.

### `debug_draw_arrow`

`debug_draw_arrow(t_start, t_end, t_color)`

```lua
---@param t_start vec3
---@param t_end vec3
---@param t_color vec3?
function debug_draw_arrow(t_start, t_end, t_color) end
```

### `debug_draw_box`

`debug_draw_box(t_center, t_half_extents, t_transform, t_color)`

```lua
---@param t_center vec3
---@param t_half_extents vec3
---@param t_transform mat4?
---@param t_color vec3?
function debug_draw_box(t_center, t_half_extents, t_transform, t_color) end
```

### `debug_draw_capsule`

`debug_draw_capsule(t_center, t_radius, t_height, t_transform, t_color, t_segments)`

```lua
---@param t_center vec3
---@param t_radius number
---@param t_height number
---@param t_transform mat4?
---@param t_color vec3?
---@param t_segments integer?
function debug_draw_capsule(t_center, t_radius, t_height, t_transform, t_color, t_segments) end
```

### `debug_draw_clear`

`debug_draw_clear()`

```lua
function debug_draw_clear() end
```

### `debug_draw_cone`

`debug_draw_cone(t_apex, t_range, t_half_angle, t_transform, t_color, t_segments)`

```lua
---@param t_apex vec3
---@param t_range number
---@param t_half_angle number
---@param t_transform mat4?
---@param t_color vec3?
---@param t_segments integer?
function debug_draw_cone(t_apex, t_range, t_half_angle, t_transform, t_color, t_segments) end
```

### `debug_draw_cross`

`debug_draw_cross(t_center, t_size, t_color)`

```lua
---@param t_center vec3
---@param t_size number
---@param t_color vec3?
function debug_draw_cross(t_center, t_size, t_color) end
```

### `debug_draw_cylinder`

`debug_draw_cylinder(t_center, t_half_extents, t_transform, t_color, t_segments)`

```lua
---@param t_center vec3
---@param t_half_extents vec3
---@param t_transform mat4?
---@param t_color vec3?
---@param t_segments integer?
function debug_draw_cylinder(t_center, t_half_extents, t_transform, t_color, t_segments) end
```

### `debug_draw_line`

`debug_draw_line(t_start, t_end, t_color)`

```lua
---@param t_start vec3
---@param t_end vec3
---@param t_color vec3?
function debug_draw_line(t_start, t_end, t_color) end
```

### `debug_draw_lines`

`debug_draw_lines(t_table_1, t_color)`

```lua
---@param t_table_1 table
---@param t_color vec3?
function debug_draw_lines(t_table_1, t_color) end
```

### `debug_draw_plane`

`debug_draw_plane(t_center, t_normal, t_size, t_transform, t_color)`

```lua
---@param t_center vec3
---@param t_normal vec3
---@param t_size number
---@param t_transform mat4?
---@param t_color vec3?
function debug_draw_plane(t_center, t_normal, t_size, t_transform, t_color) end
```

### `debug_draw_sphere`

`debug_draw_sphere(t_center, t_radius, t_transform, t_color, t_segments)`

```lua
---@param t_center vec3
---@param t_radius number
---@param t_transform mat4?
---@param t_color vec3?
---@param t_segments integer?
function debug_draw_sphere(t_center, t_radius, t_transform, t_color, t_segments) end
```
