# Surface

Script API functions in the `surface` group.

### `surface_get_at`

`surface_get_at(t_entity_id, t_world_position, t_world_normal, t_hit_triangle_index, t_mesh_local_position)`

```lua
---@param t_entity_id integer
---@param t_world_position vec3
---@param t_world_normal vec3
---@param t_hit_triangle_index integer
---@param t_mesh_local_position vec3
function surface_get_at(t_entity_id, t_world_position, t_world_normal, t_hit_triangle_index, t_mesh_local_position) end
```

### `surface_get_dominant_vertex_blend_layer`

`surface_get_dominant_vertex_blend_layer(t_vertex_color)`

```lua
---@param t_vertex_color vec4
---@return integer
function surface_get_dominant_vertex_blend_layer(t_vertex_color) end
```

### `surface_get_from_raycast`

`surface_get_from_raycast(t_from, t_to, t_table_3, t_include_mode)`

```lua
---@param t_from vec3
---@param t_to vec3
---@param t_table_3 table
---@param t_include_mode boolean
function surface_get_from_raycast(t_from, t_to, t_table_3, t_include_mode) end
```
