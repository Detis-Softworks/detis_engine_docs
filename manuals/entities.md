# Entities & Prefabs

Entities are the objects in a Detis world. Every mesh, light, sound, trigger, or character you place is an entity. Prefabs are `.entity` files on disk that define an entity and its components — the template you instantiate in a world.

## Entity Browser

Open the **Entity Browser** (left dock, `View → Entity Browser` if hidden). The browser shows the hierarchy for the current world. Top-level entities have no parent; child entities are indented under their parent.

Use the browser to:
- Create a new entity: `Right-click → Create entity` (empty) or drag a `.entity` prefab from `content/entities/` into the viewport or browser
- Rename, duplicate, delete, or reparent by dragging onto another entity
- Search by name or tag with the filter at the top

Selecting an entity shows its components in the **Inspector** (right dock). The Inspector is where you add components, edit transform, and attach scripts.

## Prefabs (`.entity` files)

A prefab is a JSON file that lists components and their initial values. You can see the format in `content/entities/primitive/cube.entity` or `content/entities/demo_content/characters/player_character.entity`:

```json
{
  "name": "Cube",
  "components": [
    { "type": "Transform", "position": [0,0,0] },
    { "type": "Mesh", "mesh_file": "meshes/cube.glb" }
  ]
}
```

Workflow:
1. Build a prefab in the viewport (add Mesh, Light, Script, etc)
2. `File → Save prefab` or drag the entity from the browser to `content/entities/` in the **Asset Browser**
3. Reuse it by dragging the `.entity` file back into any world

Prefabs are templates. Editing the `.entity` file on disk updates future spawns, not instances already placed.

For a step-by-step, see [Your first prefab](../tutorials/your_first_prefab.md).

## Components

Add or remove components in the Inspector with **Add component**.

Every entity has a **Transform** (position, rotation, scale). Most other components are optional:

- **Mesh / Skeletal mesh** — visible geometry
- **Light / Fog volume** — lighting
- **Physics** — `Physics body`, `Character body`, `Physics constraint`
- **Audio** — `Sound`, `Sound zone`, `Soundscape zone`
- **Script** — Lua behavior (see [Script overview](script_overview.md))
- **Billboard / Text mesh / Particle system / Pathnode / Bone attachment** — specialized

Check what an entity has in Lua:

```lua
if entity_get_has_mesh_component(entity_id) then
  -- ...
end
if entity_get_has_script_component(entity_id) then
  -- ...
end
```

See `entity_get_has_*` in the [Entity reference](../reference/entity.md).

## Transform & Hierarchy

Transform functions work on the entity's `Transform` component. There are local (relative to parent) and world (absolute) variants.

Common calls:

```lua
-- read
local pos = transform_get_world_position(entity_id)
local fwd = transform_get_world_forward(entity_id)

-- write
transform_set_world_position(entity_id, vec3(0, 1, 0))
transform_set_local_rotation(entity_id, vec3(0, 90, 0))
transform_set_local_scale(entity_id, vec3(1, 1, 1))

-- hierarchy
transform_set_parent(child_id, parent_id)
transform_set_parent_preserve_world(child_id, parent_id)
transform_remove_parent(entity_id)

local parent_pos = transform_world_to_local_point(entity_id, vec3(10, 0, 0))
```

Children follow their parent. Use `transform_get_world_matrix` / `transform_get_local_matrix` when you need the full matrix.

Tags do not affect hierarchy — they are for querying:

```lua
entity_add_tag(entity_id, "enemy")
if entity_get_has_tag(entity_id, "enemy") then
  local enemies = entity_get_entities_by_tag(entity_id, "enemy")
end
```

## `entity_id` and Validity

Every entity has an integer `entity_id`. In an **Entity Script**, the built-in `entity_id` is the owning entity.

- `entity_id == 0` means no entity
- Check with `entity_get_is_valid(id)` — it covers both `0` and deleted entities. Do not check `id ~= nil` alone.
- Names and tags: `entity_get_name(id)`, `entity_set_name(id, "Door")`, `entity_get_tags(id)`

```lua
if entity_get_is_valid(target_id) then
  transform_set_world_position(target_id, new_pos)
end
```

## Spawning & Activation

Spawn a prefab from Lua:

```lua
local new_id = entity_load_prefab_from_file("content/entities/primitive/cube.entity")
if entity_get_is_valid(new_id) then
  transform_set_world_position(new_id, spawn_pos)
end
```

Active state:

```lua
entity_set_active(new_id, false) -- hidden and not processed
entity_get_is_active(new_id)
```

Children: `entity_get_children_count(id)`, `entity_get_child_by_index(id, 0)`, `entity_get_child_by_name(id, "Handle")`, `entity_get_child_by_path(parent_id, "Root/Arm/Hand")`.

## Where Files Live

- `content/entities/` — your prefabs (create `content/entities/my_game/` for your project)
- `content/entities/demo_content/` — shipped examples (billboards, cave, characters, props)
- `engine/entities/lighting_reference.entity` — internal reference

For project layout, see [Project layout](../getting_started/project_layout.md) and [Sample content](../getting_started/sample_content.md).

## Next

- [Your first prefab](../tutorials/your_first_prefab.md) — hands-on prefab workflow
- [Script overview](script_overview.md) — attach Lua to entities
- [Entity reference](../reference/entity.md) — full `entity_*` list
- [Transform reference](../reference/transform.md) — full `transform_*` list
