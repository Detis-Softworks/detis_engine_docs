# Materials

A Detis material is a **`.mat` file**: plain INI text with three blocks. The engine loads it at runtime and the **Material Editor** (`Shift+4`) is the usual way to edit it.

Detis does **not** import Blender shader graphs. You rebuild look with Detis shader **types**, texture slots, and uniforms.

## File layout

| Section | Holds |
|---------|--------|
| `[general]` | Shader type, cull mode, shadow/SSR flags, `surface_type` |
| `[textures]` | Paths to `u_albedo_map`, `u_normal_map`, `u_rma_map`, and other maps |
| `[uniforms]` | Floats, colors, toggles (`u_use_albedo_map`, `u_map_tiling`, emissive nits, and similar) |

Example shipped with the demos: `content/materials/demo_content/rocks/rock_small.mat`.

Paths inside a `.mat` are usually relative to `content/` or `../content/textures/...`.

## Shared vs unique

| Mode | Behavior |
|------|----------|
| **Shared** | Mesh slot points at `materials/foo.mat`. One file, many entities. |
| **Unique** | **Unique Material** on the Mesh component. Per-entity copy. Slot path browse is disabled. |

**Save As** in the Material Editor writes a new file. **Load** replaces the editor selection. Editing a shared file without **Save As** changes every entity that uses that path after reload.

Copy demo materials into `content/materials/<your_game>/` instead of editing package demos in place.

## Shader types

Pick **Type** in the Material Editor **Shading** section:

| Type | Use |
|------|-----|
| **Opaque** | Default PBR surfaces |
| **Opaque 4x Blend** | Vertex-color terrain splats (four paint layers) |
| **Foliage** | Grass cards, alpha-masked vegetation |
| **Translucent** | Glass, fades, lit sheets with transparency |
| **Water** | Surfaces with Gerstner waves, foam, caustics |
| **Unlit** | Signs, UI-style quads, absolute nits |
| **Blockout** | Greybox, triplanar projection |

Unique material copies cannot change **Type** after the copy is created. Set type before you rely on per-instance overrides.

## Contact Type

**Contact Type** maps to footstep and surface audio. Names come from `content/config/surface_types.ini`. Empty means **Default**.

**Opaque 4x Blend** exposes one contact type per vertex-color layer (default, R, G, B).

## Workflow

1. Duplicate a nearby demo `.mat` or **New Material** in the Material Editor.
2. Assign DDS paths and tune uniforms.
3. **Save As** under your game folder.
4. Assign on the Mesh component (or open from the slot edit button).
5. **Debug → Reload Assets** (`Shift+R`) if you edited the file on disk outside the editor.

Panel-by-panel detail is in [Material Editor](art_material_editor.md).

## Next

**[Material Editor](art_material_editor.md).** Sections, type visibility, and recipes.
