# Text_mesh

Script API functions in the `text_mesh` group.

### `text_mesh_get_billboard`

`text_mesh_get_billboard(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function text_mesh_get_billboard(t_entity_id) end
```

### `text_mesh_get_editor_only`

`text_mesh_get_editor_only(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function text_mesh_get_editor_only(t_entity_id) end
```

### `text_mesh_get_text`

`text_mesh_get_text(t_entity_id)`

```lua
---@param t_entity_id integer
---@return string
function text_mesh_get_text(t_entity_id) end
```

### `text_mesh_get_text_color`

`text_mesh_get_text_color(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function text_mesh_get_text_color(t_entity_id) end
```

### `text_mesh_get_visible`

`text_mesh_get_visible(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function text_mesh_get_visible(t_entity_id) end
```

### `text_mesh_set_billboard_active`

`text_mesh_set_billboard_active(t_entity_id, t_billboard)`

```lua
---@param t_entity_id integer
---@param t_billboard boolean
function text_mesh_set_billboard_active(t_entity_id, t_billboard) end
```

### `text_mesh_set_editor_only`

`text_mesh_set_editor_only(t_entity_id, t_editor_only)`

```lua
---@param t_entity_id integer
---@param t_editor_only boolean
function text_mesh_set_editor_only(t_entity_id, t_editor_only) end
```

### `text_mesh_set_text`

`text_mesh_set_text(t_entity_id, t_text)`

```lua
---@param t_entity_id integer
---@param t_text string
function text_mesh_set_text(t_entity_id, t_text) end
```

### `text_mesh_set_text_color`

`text_mesh_set_text_color(t_entity_id, t_color)`

```lua
---@param t_entity_id integer
---@param t_color vec3
function text_mesh_set_text_color(t_entity_id, t_color) end
```

### `text_mesh_set_visible`

`text_mesh_set_visible(t_entity_id, t_visible)`

```lua
---@param t_entity_id integer
---@param t_visible boolean
function text_mesh_set_visible(t_entity_id, t_visible) end
```
