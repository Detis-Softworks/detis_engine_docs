# Physics_constraint

Script API functions in the `physics_constraint` group.

### `physics_constraint_get_anchor_1`

`physics_constraint_get_anchor_1(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function physics_constraint_get_anchor_1(t_entity_id) end
```

### `physics_constraint_get_anchor_2`

`physics_constraint_get_anchor_2(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function physics_constraint_get_anchor_2(t_entity_id) end
```

### `physics_constraint_get_axis`

`physics_constraint_get_axis(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function physics_constraint_get_axis(t_entity_id) end
```

### `physics_constraint_get_body_a_entity_id`

`physics_constraint_get_body_a_entity_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_constraint_get_body_a_entity_id(t_entity_id) end
```

### `physics_constraint_get_body_b_entity_id`

`physics_constraint_get_body_b_entity_id(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_constraint_get_body_b_entity_id(t_entity_id) end
```

### `physics_constraint_get_break_force`

`physics_constraint_get_break_force(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_break_force(t_entity_id) end
```

### `physics_constraint_get_breakable`

`physics_constraint_get_breakable(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_breakable(t_entity_id) end
```

### `physics_constraint_get_collide_connected`

`physics_constraint_get_collide_connected(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_collide_connected(t_entity_id) end
```

### `physics_constraint_get_constraint_type`

`physics_constraint_get_constraint_type(t_entity_id)`

```lua
---@param t_entity_id integer
---@return integer
function physics_constraint_get_constraint_type(t_entity_id) end
```

### `physics_constraint_get_enabled`

`physics_constraint_get_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_enabled(t_entity_id) end
```

### `physics_constraint_get_friction`

`physics_constraint_get_friction(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_friction(t_entity_id) end
```

### `physics_constraint_get_is_broken`

`physics_constraint_get_is_broken(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_is_broken(t_entity_id) end
```

### `physics_constraint_get_is_created`

`physics_constraint_get_is_created(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_is_created(t_entity_id) end
```

### `physics_constraint_get_limits_enabled`

`physics_constraint_get_limits_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function physics_constraint_get_limits_enabled(t_entity_id) end
```

### `physics_constraint_get_limits_max`

`physics_constraint_get_limits_max(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_limits_max(t_entity_id) end
```

### `physics_constraint_get_limits_min`

`physics_constraint_get_limits_min(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function physics_constraint_get_limits_min(t_entity_id) end
```

### `physics_constraint_recreate`

`physics_constraint_recreate(t_entity_id)`

```lua
---@param t_entity_id integer
function physics_constraint_recreate(t_entity_id) end
```

### `physics_constraint_set_anchor_1`

`physics_constraint_set_anchor_1(t_entity_id, t_anchor)`

```lua
---@param t_entity_id integer
---@param t_anchor vec3
function physics_constraint_set_anchor_1(t_entity_id, t_anchor) end
```

### `physics_constraint_set_anchor_2`

`physics_constraint_set_anchor_2(t_entity_id, t_anchor)`

```lua
---@param t_entity_id integer
---@param t_anchor vec3
function physics_constraint_set_anchor_2(t_entity_id, t_anchor) end
```

### `physics_constraint_set_axis`

`physics_constraint_set_axis(t_entity_id, t_axis)`

```lua
---@param t_entity_id integer
---@param t_axis vec3
function physics_constraint_set_axis(t_entity_id, t_axis) end
```

### `physics_constraint_set_body_a_entity_id`

`physics_constraint_set_body_a_entity_id(t_entity_id, t_body_a_entity_id)`

```lua
---@param t_entity_id integer
---@param t_body_a_entity_id integer
function physics_constraint_set_body_a_entity_id(t_entity_id, t_body_a_entity_id) end
```

### `physics_constraint_set_body_b_entity_id`

`physics_constraint_set_body_b_entity_id(t_entity_id, t_body_b_entity_id)`

```lua
---@param t_entity_id integer
---@param t_body_b_entity_id integer
function physics_constraint_set_body_b_entity_id(t_entity_id, t_body_b_entity_id) end
```

### `physics_constraint_set_break_force`

`physics_constraint_set_break_force(t_entity_id, t_break_force)`

```lua
---@param t_entity_id integer
---@param t_break_force number
function physics_constraint_set_break_force(t_entity_id, t_break_force) end
```

### `physics_constraint_set_breakable`

`physics_constraint_set_breakable(t_entity_id, t_breakable)`

```lua
---@param t_entity_id integer
---@param t_breakable boolean
function physics_constraint_set_breakable(t_entity_id, t_breakable) end
```

### `physics_constraint_set_collide_connected`

`physics_constraint_set_collide_connected(t_entity_id, t_collide_connected)`

```lua
---@param t_entity_id integer
---@param t_collide_connected boolean
function physics_constraint_set_collide_connected(t_entity_id, t_collide_connected) end
```

### `physics_constraint_set_constraint_type`

`physics_constraint_set_constraint_type(t_entity_id, t_constraint_type)`

```lua
---@param t_entity_id integer
---@param t_constraint_type integer
function physics_constraint_set_constraint_type(t_entity_id, t_constraint_type) end
```

### `physics_constraint_set_enabled`

`physics_constraint_set_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_constraint_set_enabled(t_entity_id, t_enabled) end
```

### `physics_constraint_set_friction`

`physics_constraint_set_friction(t_entity_id, t_friction)`

```lua
---@param t_entity_id integer
---@param t_friction number
function physics_constraint_set_friction(t_entity_id, t_friction) end
```

### `physics_constraint_set_limits_enabled`

`physics_constraint_set_limits_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function physics_constraint_set_limits_enabled(t_entity_id, t_enabled) end
```

### `physics_constraint_set_limits_max`

`physics_constraint_set_limits_max(t_entity_id, t_limits_max)`

```lua
---@param t_entity_id integer
---@param t_limits_max number
function physics_constraint_set_limits_max(t_entity_id, t_limits_max) end
```

### `physics_constraint_set_limits_min`

`physics_constraint_set_limits_min(t_entity_id, t_limits_min)`

```lua
---@param t_entity_id integer
---@param t_limits_min number
function physics_constraint_set_limits_min(t_entity_id, t_limits_min) end
```
