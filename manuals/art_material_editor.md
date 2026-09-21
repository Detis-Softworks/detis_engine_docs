# Material Editor

**View → Material Editor** (`Shift+4`) edits `.mat` files and in-memory drafts. Open it from the viewport toolbar or from the **edit** control on a Mesh material slot.

<img src="../images/editor/ed_material_editor.png" alt="Material Editor" style="max-width:600px;height:auto;display:block">

## Toolbar

| Control | Action |
|---------|--------|
| **New Material** | Empty Opaque draft in memory |
| **Save As** | Write a `.mat` to disk, reload it, and rebind the mesh slot if you opened from a component |
| **Load** | Replace the editor selection from a `.mat` file (asks before discarding unsaved edits) |
| **Reset** | New draft seeded from engine default opaque |

The title shows the file name or **Unsaved draft**. A dirty marker appears when the session differs from the snapshot taken when you opened the material.

**Bound edit:** Opening from a Mesh slot shows `Editing mesh material (slot N)`. **Unique Material** instances show **Unique Material** and keep edits on close without a discard prompt for that binding.

## Section visibility by type

Not every section appears for every **Type**. Use this map when a control is missing.

| Section | Opaque | 4x Blend | Foliage | Translucent | Water | Unlit | Blockout |
|---------|:------:|:--------:|:-------:|:-----------:|:-----:|:-----:|:--------:|
| Shading (type, cull) | Yes | Yes | Yes | Yes + blend | Yes + blend | Yes | Yes |
| Shadows & cast | Yes | Yes | Yes | No cast | No cast | Yes | Yes |
| SSAO receive | Yes | Yes | Yes | Yes | No | No | Yes |
| Reflections / SSR | Yes | Yes | Limited | Yes | Yes | Fallback only | Yes |
| Alpha mask | Yes | No | Yes | No | No | No | No |
| Sampling / UV scroll | Yes | Yes | Yes | Yes | No scroll | Yes | Yes |
| Contact Type | Yes | 4 layers | Yes | Yes | Yes | Yes | Yes |
| Albedo / color | Yes | Yes | Yes | Yes | Yes | Unlit color | Yes + triplanar |
| Surface / RMA | Yes | Per layer | Yes | Lit surface | Water params | No | Yes |
| Normal / detail | Yes | Per layer | Yes | Yes | Yes | No | Yes |
| Emissive (nits) | Yes | Yes | Yes | No | No | Nits / match sky | No |
| Translucent extras | — | — | — | Yes | — | — | — |
| Water extras | — | — | — | — | Yes | — | — |
| Foliage wind | — | — | Yes | — | — | — | — |

**Reflections:** Foliage and Unlit can exclude themselves from other surfaces' SSR. Only opaque-family types (not foliage/unlit) receive full SSR by default.

## Sections in order

### Shading

- **Type** — Shader family. Locked on unique copies.
- **Cull Mode** — Back, front, or none.
- **Blend Mode** — Translucent and Water only.

### Shadows & Occlusion

- **Cast Shadows** — Opaque family only (not translucent/water).
- **Affected by Screen Space AO** — Toggle and **Strength** where supported.

### Reflections

- **Exclude from SSR** — Hide this surface from others' traces.
- **SSR** / **SSR Strength** — Screen-space reflections on this surface.
- **Skybox Fallback Strength** — Environment reflection when SSR misses.

### Masking

- **Use Mask** — Alpha cutout for foliage-style clips.
- **Mask Threshold** — Clip value when mask is on.

### Sampling & UVs

- **Anisotropic Filtering**
- **Cull Distance** — Hide mesh beyond distance. `0` disables.
- **Map Tiling** — UV scale for tiled maps.
- **UV Scroll Speed** — Animated UVs (not on Water).

### Contact Type

Footstep and surface audio. See [Materials](art_materials.md). Four layers on **Opaque 4x Blend**.

### Albedo

Texture slot, tint color, brightness, vertex color use, subsurface tint where applicable. **Blockout** adds triplanar options. **Unlit** uses color/intensity instead of full PBR albedo.

### Surface properties

Roughness, metallic, AO, and RMA map toggles. **Opaque 4x Blend** repeats per paint layer.

### Normal mapping

Normal map, strength, detail normal (tiling/strength), parallax height from normal alpha, parallax LOD end on 4x blend.

### Emissive

Emission map and **Luminance (nits)** on Opaque, 4x Blend, and Foliage. Physical nits tie to exposure. See [Exposure & EV100](lighting_exposure.md).

### Translucent

Basics, distance fade, fresnel, refraction, reflections, surface, rim, and advanced lighting toggles for glass and fade sheets.

### Water

Color, absorption, waves, foam, caustics, SSR, and related groups. Demo mats under `content/materials/demo_content/tileable/water/`.

### Foliage

**Wind Multiplier** and **Color Variation** for grass cards.

## Recipes (demo paths)

Copy these as starting points under your own `content/materials/` folder.

| Look | Start from |
|------|------------|
| Tileable ground | `materials/demo_content/tileable/ground/ground_rock_02.mat` |
| Small rock prop | `materials/demo_content/rocks/rock_small.mat` |
| Grass patch | `materials/demo_content/foliage/grass/grass_patch.mat` |
| Emissive lamp | `materials/demo_content/props/lamp_cube_emissive.mat` |
| Exterior glass | `materials/demo_content/glass/window_glass_exterior.mat` |
| Refracted glass | `materials/demo_content/glass/window_glass_refracted.mat` |
| Water pool | `materials/demo_content/tileable/water/water_surface_demo_pool.mat` |
| Greybox triplanar | `materials/primitive/primitive_triplanar_dark_grey.mat` |
| Unlit quad | `materials/demo_content/unlit/unlit_demo.mat` |

Workflow for each: **Load** or assign on Mesh → tweak → **Save As** → assign new path on the entity.

## When a surface looks wrong

1. **Debug → Debug View** — Albedo, normals, lighting buffers (see [Editor overview](../getting_started/editor_overview.md)).
2. Confirm **shared** `.mat` vs **Unique Material** on the Mesh component.
3. **Shift+R** after external edits to `.mat` or `.dds`.
4. Check texture gamma in [Textures](art_textures.md).

## See also

- [Materials](art_materials.md)
- [Textures](art_textures.md)
- [Exposure & EV100](lighting_exposure.md)
- [Mesh API](../reference/mesh.md)

## Continue reading

**Previous:** [Materials](art_materials.md): shader types and `.mat` files.

**Next:** [Sky texture](art_sky.md): author and assign the sky DDS.
