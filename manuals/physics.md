# Physics (Jolt)

Physics in Detis Engine is powered by Jolt Physics and exposed through Physics body, Character body, Dynamic body, and Physics constraint components.

## Body Types

Detis distinguishes three body kinds. `Physics body` is the base collider, used for static geometry and trigger volumes. `Character body` is a capsule controller for players and NPCs with step, slope, and ground handling. `Dynamic body` is a fully simulated rigid body that responds to forces, impulses, and torque.

Use `physics_get_body_type(entity_id)` and `physics_set_body_type(entity_id, body_type)` to query or override the type at runtime. Static bodies are cheapest. Use them for level geometry. Use Character body for controlled locomotion. Use Dynamic body only when you need mass, friction, and restitution simulation.

Gravity is global: `physics_get_gravity()`, `physics_set_gravity(vec3(0, -9.81, 0))`, and `physics_reset_gravity()`. Character bodies can also override gravity per entity with `character_body_set_gravity`.

## Adding Physics in the Inspector

Select an entity and use **Add component** in the Inspector to add `Physics body`, `Character body`, `Dynamic body`, or `Physics constraint`. Most entities need `Physics body` plus one of `Character body` or `Dynamic body`.

On `Physics body` you configure collision shapes: `physics_body_add_collision_shape(entity_id, shape_type, size, offset, rotation)`, `physics_body_get_collision_shape_count(entity_id)`, and `physics_body_remove_collision_shape(entity_id, index)`. Edit offset, rotation, and size with `physics_body_set_collision_shape_offset`, `physics_body_set_collision_shape_rotation`, and `physics_body_set_collision_shape_size`. Enable debug draw with `physics_body_set_debug_draw_enabled(entity_id, true)` and toggle simulation with `physics_body_get_enabled` and `physics_body_set_enabled`. For fast objects set `physics_body_set_use_ccd(entity_id, true)`.

For `Character body`, set the capsule with `character_body_set_capsule_shape(entity_id, height, offset_y)` or radius and height separately, then tune `character_body_set_step_height`, `character_body_set_max_slope`, and `character_body_set_up_vector`.

## Collision Layers and Filtering

Layers are defined in `engine/config/collision_layers.ini`. The default mapping is:

| Layer | Name |
|---|---|
| 0 | Static |
| 1 | Kinematic |
| 2 | Player |
| 3 | Character |
| 4 | Dynamic |
| 5 | Interactive |
| 6 | Debris |
| 7 | Trigger |
| 8-15 | Layer 8 to Layer 15 (reserved) |

Each `Physics body` has a layer and a mask. Use `physics_body_get_collision_layer`, `physics_body_set_collision_layer`, `physics_body_get_collision_mask`, and `physics_body_set_collision_mask` to control what collides with what. Callbacks are filtered separately with `physics_body_set_collision_callback_body_type_filter`, `physics_body_set_collision_callbacks_enabled`, `physics_body_set_collision_callback_filter_character`, `physics_body_set_collision_callback_filter_dynamic`, `physics_body_set_collision_callback_filter_kinematic`, and `physics_body_set_collision_callback_filter_static`. Triggers use `physics_body_set_trigger_callbacks_enabled` for overlap events without contact response.

## Constraints

`Physics constraint` connects two bodies. Assign bodies with `physics_constraint_set_body_a_entity_id` and `physics_constraint_set_body_b_entity_id`, then configure anchors and axis:

```lua
physics_constraint_set_body_a_entity_id(constraint_id, body_a)
physics_constraint_set_body_b_entity_id(constraint_id, body_b)
physics_constraint_set_anchor_1(constraint_id, vec3(0, 0.5, 0))
physics_constraint_set_anchor_2(constraint_id, vec3(0, -0.5, 0))
physics_constraint_set_axis(constraint_id, vec3(0, 1, 0))
physics_constraint_set_constraint_type(constraint_id, 0)
physics_constraint_set_enabled(constraint_id, true)
physics_constraint_recreate(constraint_id)
```

Tune limits with `physics_constraint_set_limits_enabled`, `physics_constraint_set_limits_min`, and `physics_constraint_set_limits_max`. Control friction with `physics_constraint_set_friction`. Use `physics_constraint_set_breakable` and `physics_constraint_set_break_force` for breakable joints. Check state with `physics_constraint_get_is_broken`, `physics_constraint_get_is_created`, and `physics_constraint_get_collide_connected`.

## Lua API for Movement and Forces

Character bodies move through desired velocity, not direct transform writes. Dynamic bodies move through forces and velocities. Always check `entity_get_has_physics_component` and type-specific validity before calling physics functions.

Character movement and jump:

```lua
-- character_body: walk, yaw, jump, warp
local on_ground = character_body_get_on_ground(entity_id)
local can_jump = character_body_get_can_jump(entity_id)
if on_ground and can_jump then
  character_body_set_walk_direction(entity_id, vec3(0, 0, 1))
  character_body_set_world_yaw(entity_id, math_radians(90))
  character_body_jump(entity_id, vec3(0, 1, 0))
end
-- teleport without collision interpolation
character_body_warp(entity_id, vec3(10, 1, 5))
-- direct velocity when needed
character_body_set_linear_velocity(entity_id, vec3(2, 0, 0))
```

Dynamic body forces and properties:

```lua
-- dynamic_body: forces, impulses, damping, sleep
local mass = dynamic_body_get_mass(box_id)
dynamic_body_set_mass(box_id, 5.0)
dynamic_body_set_friction(box_id, 0.6)
dynamic_body_apply_central_force(box_id, vec3(0, 100, 0))
dynamic_body_apply_impulse(box_id, vec3(0, 5, 0), vec3(0, 0, 0))
dynamic_body_set_linear_velocity(box_id, vec3(0, 3, 0))
dynamic_body_set_angular_factor(box_id, vec3(0, 1, 0))
dynamic_body_wake_up(box_id)
```

Raycast and sweep queries:

```lua
-- physics queries: raycast and constraint check
local hits = {}
physics_raycast(vec3(0, 2, 0), vec3(0, -2, 0), hits, false)
if #hits > 0 then
  print_info("hit entity " .. tostring(hits[1].entity_id))
end
physics_box_sweep(vec3(0, 1, 0), vec3(0, 1, 10), vec3(0.5, 0.5, 0.5), {}, true)
if physics_constraint_get_is_broken(constraint_id) then
  physics_constraint_set_enabled(constraint_id, false)
end
```

See `physics_get_gravity` and `physics_set_gravity` for world gravity, and `physics_activate_all_dynamic_bodies` to wake the simulation.

## Queries and Best Practices

Prefer sweeps and raycasts over manual distance checks for movement and interaction. Use `physics_raycast`, `physics_sphere_sweep`, `physics_box_sweep`, and `physics_capsule_sweep` with the `include_mode` flag to control filtering. Enable CCD only for fast projectiles with `physics_body_set_use_ccd`. Keep collision shape count low and use simple boxes or capsules where possible.

For characters, set walk direction every frame with `character_body_set_walk_direction` and let Jolt resolve penetration using `character_body_set_max_penetration_depth` and `character_body_set_linear_damping`. Use `character_body_get_ground_normal` and `character_body_get_on_ground` for grounded checks, not raycasts alone. For dynamic bodies, tune `dynamic_body_set_linear_damping`, `dynamic_body_set_angular_damping`, and `dynamic_body_set_auto_sleep` to avoid jitter and save performance. Call `dynamic_body_clear_forces` when respawning.

## Where Files Live

- `engine/config/collision_layers.ini` - layer name mapping (0 Static, 1 Kinematic, 2 Player, 3 Character, 4 Dynamic, 5 Interactive, 6 Debris, 7 Trigger, 8-15 reserved)
- `engine/licenses/third_party/jolt_mit.txt` - Jolt Physics MIT license attribution (Copyright 2021 Jorrit Rouwe)
- `content/entities/` - your prefabs with Physics body, Character body, or Dynamic body components
- `content/entities/demo_content/characters/player_character.entity` - example character setup
- `engine/stubs/engine_stubs.lua` - authoritative Lua API signatures for `physics_*`, `physics_body_*`, `character_body_*`, `dynamic_body_*`, and `physics_constraint_*`

## Next

- [Entities and Prefabs](entities.md) - entity lifecycle and prefab workflow
- [Script overview](script_overview.md) - attach Lua behavior to physics entities
- [Physics reference](../reference/physics.md) - full `physics_*` function list
- [Character body reference](../reference/character_body.md) - full `character_body_*` function list
