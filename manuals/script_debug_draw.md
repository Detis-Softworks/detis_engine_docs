# Debug draw

Draw 3D wireframes from Lua. 

Supported shapes: Line, polyline, box, sphere, capsule, cylinder, cone, plane, cross, and arrow.

Each shape lasts one frame. Call it again on the next frame if you still want it. **`on_process`** is the usual place.

```lua
function on_process(t_delta_time)
    debug_draw_line(vec3(0, 1, 0), vec3(0, 3, 0), vec3(1, 0.2, 0.1))
    debug_draw_sphere(vec3(2, 1, 0), 0.5)
end
```

Color is a **`vec3`** from 0 to 1. If left out it defaults to white.

**`debug_draw_clear()`** drops anything queued that has not been drawn yet.

> **Note:** A vertex cap drops the rest of that frame if a script queues too much and the log warns once. A polyline keeps the first 4096 points.

## Shapes

| Call | What you pass |
|------|----------------|
| **`debug_draw_line`** | Start, end, optional color. |
| **`debug_draw_lines`** | A list of **`vec3`** points, optional color. |
| **`debug_draw_box`** | Center, half extents. |
| **`debug_draw_sphere`** | Center, radius. |
| **`debug_draw_capsule`** | Center, radius, length of the straight middle. |
| **`debug_draw_cylinder`** | Center, half extents. X and Z are the radii. Y is half the height. |
| **`debug_draw_cone`** | Apex, range, half angle in radians. The cone opens along local +Z. |
| **`debug_draw_plane`** | Center, normal, size. |
| **`debug_draw_cross`** | Center, size. |
| **`debug_draw_arrow`** | Start, end, optional color. |

Sphere, capsule, cylinder, and cone take an optional segment count after the color. The default is 16. Values outside 3 to 48 are clamped.

```lua
debug_draw_cone(vec3(0, 1, 0), 4, math.rad(20))
debug_draw_lines({ vec3(0, 0, 0), vec3(1, 1, 0), vec3(2, 0, 0) }, vec3(0.2, 0.8, 1))
```

Signatures are in [Debug_draw](/reference/debug_draw.md).

## Continue reading

**Previous:** [Steam](script_steam.md): achievements, stats, presence, and cloud saves.
