# Entity

Script API functions in the `entity` group.

### `entity_add_component`

`entity_add_component(t_entity_id, t_component_type)`

```lua
---@param t_entity_id integer
---@param t_component_type string
---@return boolean
function entity_add_component(t_entity_id, t_component_type) end
```

### `entity_add_tag`

`entity_add_tag(t_entity_id, t_tag)`

```lua
---@param t_entity_id integer
---@param t_tag string
function entity_add_tag(t_entity_id, t_tag) end
```

### `entity_get_child_by_index`

`entity_get_child_by_index(t_entity_id, t_index)`

```lua
---@param t_entity_id integer
---@param t_index integer
---@return integer
function entity_get_child_by_index(t_entity_id, t_index) end
```

### `entity_get_child_by_name`

`entity_get_child_by_name(t_entity_id, t_child_name)`

```lua
---@param t_entity_id integer
---@param t_child_name string
---@return integer
function entity_get_child_by_name(t_entity_id, t_child_name) end
```

### `entity_get_child_by_path`

`entity_get_child_by_path(t_parent_entity_id, t_path)`

```lua
---@param t_parent_entity_id integer
---@param t_path string
---@return integer
function entity_get_child_by_path(t_parent_entity_id, t_path) end
```

### `entity_get_children_count`

`entity_get_children_count(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function entity_get_children_count(t_entity_id) end
```

### `entity_get_entities_by_tag`

`entity_get_entities_by_tag(t_entity_id, t_tag)`

```lua
---@param t_entity_id integer
---@param t_tag string
---@return table
function entity_get_entities_by_tag(t_entity_id, t_tag) end
```

### `entity_get_function`

`entity_get_function(t_entity_id, t_function_name)`

```lua
---@param t_entity_id integer
---@param t_function_name string
---@return table
function entity_get_function(t_entity_id, t_function_name) end
```

### `entity_get_has_animation_component`

`entity_get_has_animation_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_animation_component(t_entity_id) end
```

### `entity_get_has_billboard_component`

`entity_get_has_billboard_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_billboard_component(t_entity_id) end
```

### `entity_get_has_bone_attachment_component`

`entity_get_has_bone_attachment_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_bone_attachment_component(t_entity_id) end
```

### `entity_get_has_camera_component`

`entity_get_has_camera_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_camera_component(t_entity_id) end
```

### `entity_get_has_fog_volume_component`

`entity_get_has_fog_volume_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_fog_volume_component(t_entity_id) end
```

### `entity_get_has_light_component`

`entity_get_has_light_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_light_component(t_entity_id) end
```

### `entity_get_has_mesh_component`

`entity_get_has_mesh_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_mesh_component(t_entity_id) end
```

### `entity_get_has_particle_system_component`

`entity_get_has_particle_system_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_particle_system_component(t_entity_id) end
```

### `entity_get_has_pathnode_component`

`entity_get_has_pathnode_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_pathnode_component(t_entity_id) end
```

### `entity_get_has_physics_component`

`entity_get_has_physics_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_physics_component(t_entity_id) end
```

### `entity_get_has_physics_constraint_component`

`entity_get_has_physics_constraint_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_physics_constraint_component(t_entity_id) end
```

### `entity_get_has_script_component`

`entity_get_has_script_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_script_component(t_entity_id) end
```

### `entity_get_has_skeletal_component`

`entity_get_has_skeletal_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_skeletal_component(t_entity_id) end
```

### `entity_get_has_sound_component`

`entity_get_has_sound_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_sound_component(t_entity_id) end
```

### `entity_get_has_sound_zone_component`

`entity_get_has_sound_zone_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_sound_zone_component(t_entity_id) end
```

### `entity_get_has_soundscape_zone_component`

`entity_get_has_soundscape_zone_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_soundscape_zone_component(t_entity_id) end
```

### `entity_get_has_tag`

`entity_get_has_tag(t_entity_id, t_tag)`

```lua
---@param t_entity_id integer
---@param t_tag string
---@return boolean
function entity_get_has_tag(t_entity_id, t_tag) end
```

### `entity_get_has_text_mesh_component`

`entity_get_has_text_mesh_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_text_mesh_component(t_entity_id) end
```

### `entity_get_has_transform_component`

`entity_get_has_transform_component(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_has_transform_component(t_entity_id) end
```

### `entity_get_is_active`

`entity_get_is_active(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_is_active(t_entity_id) end
```

### `entity_get_is_valid`

`entity_get_is_valid(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function entity_get_is_valid(t_entity_id) end
```

### `entity_get_name`

`entity_get_name(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function entity_get_name(t_entity_id) end
```

### `entity_get_tags`

`entity_get_tags(t_entity_id)`

```lua
---@param t_entity_id integer
---@return table
function entity_get_tags(t_entity_id) end
```

### `entity_load_prefab_from_file`

`entity_load_prefab_from_file(t_file_path)`

```lua
---@param t_file_path string
---@return integer
function entity_load_prefab_from_file(t_file_path) end
```

### `entity_remove_component`

`entity_remove_component(t_entity_id, t_component_type)`

```lua
---@param t_entity_id integer
---@param t_component_type string
---@return boolean
function entity_remove_component(t_entity_id, t_component_type) end
```

### `entity_remove_tag`

`entity_remove_tag(t_entity_id, t_tag)`

```lua
---@param t_entity_id integer
---@param t_tag string
function entity_remove_tag(t_entity_id, t_tag) end
```

### `entity_set_active`

`entity_set_active(t_entity_id, t_active)`

```lua
---@param t_entity_id integer
---@param t_active boolean
function entity_set_active(t_entity_id, t_active) end
```

### `entity_set_name`

`entity_set_name(t_entity_id, t_name)`

```lua
---@param t_entity_id integer
---@param t_name string
function entity_set_name(t_entity_id, t_name) end
```
