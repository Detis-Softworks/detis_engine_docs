# Dynamic_body

Script API functions in the `dynamic_body` group.

### `dynamic_body_apply_central_force`

`dynamic_body_apply_central_force(t_entity_id, t_force)`

```lua
---@param t_entity_id integer
---@param t_force vec3
function dynamic_body_apply_central_force(t_entity_id, t_force) end
```

### `dynamic_body_apply_central_impulse`

`dynamic_body_apply_central_impulse(t_entity_id, t_impulse)`

```lua
---@param t_entity_id integer
---@param t_impulse vec3
function dynamic_body_apply_central_impulse(t_entity_id, t_impulse) end
```

### `dynamic_body_apply_force`

`dynamic_body_apply_force(t_entity_id, t_force, t_position)`

```lua
---@param t_entity_id integer
---@param t_force vec3
---@param t_position vec3
function dynamic_body_apply_force(t_entity_id, t_force, t_position) end
```

### `dynamic_body_apply_impulse`

`dynamic_body_apply_impulse(t_entity_id, t_impulse, t_position)`

```lua
---@param t_entity_id integer
---@param t_impulse vec3
---@param t_position vec3
function dynamic_body_apply_impulse(t_entity_id, t_impulse, t_position) end
```

### `dynamic_body_apply_torque`

`dynamic_body_apply_torque(t_entity_id, t_torque)`

```lua
---@param t_entity_id integer
---@param t_torque vec3
function dynamic_body_apply_torque(t_entity_id, t_torque) end
```

### `dynamic_body_apply_torque_impulse`

`dynamic_body_apply_torque_impulse(t_entity_id, t_torque_impulse)`

```lua
---@param t_entity_id integer
---@param t_torque_impulse vec3
function dynamic_body_apply_torque_impulse(t_entity_id, t_torque_impulse) end
```

### `dynamic_body_clear_forces`

`dynamic_body_clear_forces(t_entity_id)`

```lua
---@param t_entity_id integer
function dynamic_body_clear_forces(t_entity_id) end
```

### `dynamic_body_get_angular_damping`

`dynamic_body_get_angular_damping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function dynamic_body_get_angular_damping(t_entity_id) end
```

### `dynamic_body_get_angular_factor`

`dynamic_body_get_angular_factor(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function dynamic_body_get_angular_factor(t_entity_id) end
```

### `dynamic_body_get_angular_velocity`

`dynamic_body_get_angular_velocity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function dynamic_body_get_angular_velocity(t_entity_id) end
```

### `dynamic_body_get_auto_sleep`

`dynamic_body_get_auto_sleep(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function dynamic_body_get_auto_sleep(t_entity_id) end
```

### `dynamic_body_get_force_awake`

`dynamic_body_get_force_awake(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function dynamic_body_get_force_awake(t_entity_id) end
```

### `dynamic_body_get_friction`

`dynamic_body_get_friction(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function dynamic_body_get_friction(t_entity_id) end
```

### `dynamic_body_get_linear_damping`

`dynamic_body_get_linear_damping(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function dynamic_body_get_linear_damping(t_entity_id) end
```

### `dynamic_body_get_linear_factor`

`dynamic_body_get_linear_factor(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function dynamic_body_get_linear_factor(t_entity_id) end
```

### `dynamic_body_get_linear_velocity`

`dynamic_body_get_linear_velocity(t_entity_id)`

```lua
---@param t_entity_id integer
---@return vec3
function dynamic_body_get_linear_velocity(t_entity_id) end
```

### `dynamic_body_get_mass`

`dynamic_body_get_mass(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function dynamic_body_get_mass(t_entity_id) end
```

### `dynamic_body_get_restitution`

`dynamic_body_get_restitution(t_entity_id)`

```lua
---@param t_entity_id integer
---@return number
function dynamic_body_get_restitution(t_entity_id) end
```

### `dynamic_body_get_simulation_enabled`

`dynamic_body_get_simulation_enabled(t_entity_id)`

```lua
---@param t_entity_id integer
---@return boolean
function dynamic_body_get_simulation_enabled(t_entity_id) end
```

### `dynamic_body_set_angular_damping`

`dynamic_body_set_angular_damping(t_entity_id, t_angular_damping)`

```lua
---@param t_entity_id integer
---@param t_angular_damping number
function dynamic_body_set_angular_damping(t_entity_id, t_angular_damping) end
```

### `dynamic_body_set_angular_factor`

`dynamic_body_set_angular_factor(t_entity_id, t_factor)`

```lua
---@param t_entity_id integer
---@param t_factor vec3
function dynamic_body_set_angular_factor(t_entity_id, t_factor) end
```

### `dynamic_body_set_angular_velocity`

`dynamic_body_set_angular_velocity(t_entity_id, t_velocity)`

```lua
---@param t_entity_id integer
---@param t_velocity vec3
function dynamic_body_set_angular_velocity(t_entity_id, t_velocity) end
```

### `dynamic_body_set_auto_sleep`

`dynamic_body_set_auto_sleep(t_entity_id, t_auto_sleep)`

```lua
---@param t_entity_id integer
---@param t_auto_sleep boolean
function dynamic_body_set_auto_sleep(t_entity_id, t_auto_sleep) end
```

### `dynamic_body_set_force_awake`

`dynamic_body_set_force_awake(t_entity_id, t_force_awake)`

```lua
---@param t_entity_id integer
---@param t_force_awake boolean
function dynamic_body_set_force_awake(t_entity_id, t_force_awake) end
```

### `dynamic_body_set_friction`

`dynamic_body_set_friction(t_entity_id, t_friction)`

```lua
---@param t_entity_id integer
---@param t_friction number
function dynamic_body_set_friction(t_entity_id, t_friction) end
```

### `dynamic_body_set_linear_damping`

`dynamic_body_set_linear_damping(t_entity_id, t_linear_damping)`

```lua
---@param t_entity_id integer
---@param t_linear_damping number
function dynamic_body_set_linear_damping(t_entity_id, t_linear_damping) end
```

### `dynamic_body_set_linear_factor`

`dynamic_body_set_linear_factor(t_entity_id, t_factor)`

```lua
---@param t_entity_id integer
---@param t_factor vec3
function dynamic_body_set_linear_factor(t_entity_id, t_factor) end
```

### `dynamic_body_set_linear_velocity`

`dynamic_body_set_linear_velocity(t_entity_id, t_velocity)`

```lua
---@param t_entity_id integer
---@param t_velocity vec3
function dynamic_body_set_linear_velocity(t_entity_id, t_velocity) end
```

### `dynamic_body_set_mass`

`dynamic_body_set_mass(t_entity_id, t_mass)`

```lua
---@param t_entity_id integer
---@param t_mass number
function dynamic_body_set_mass(t_entity_id, t_mass) end
```

### `dynamic_body_set_restitution`

`dynamic_body_set_restitution(t_entity_id, t_restitution)`

```lua
---@param t_entity_id integer
---@param t_restitution number
function dynamic_body_set_restitution(t_entity_id, t_restitution) end
```

### `dynamic_body_set_simulation_enabled`

`dynamic_body_set_simulation_enabled(t_entity_id, t_enabled)`

```lua
---@param t_entity_id integer
---@param t_enabled boolean
function dynamic_body_set_simulation_enabled(t_entity_id, t_enabled) end
```

### `dynamic_body_wake_up`

`dynamic_body_wake_up(t_entity_id)`

```lua
---@param t_entity_id integer
function dynamic_body_wake_up(t_entity_id) end
```
