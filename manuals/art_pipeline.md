# Art pipeline

Detis uses a **zero-import** asset path. There is no import queue or per-file import settings dialog. You export from your DCC tool, copy files into `content/`, assign paths in the editor, and reload when you change files on disk.

The FAQ defines this in one paragraph. See [What is the asset pipeline?](../getting_started/faq.md#what-is-the-asset-pipeline). This page is the practical checklist.

## Asset map

| Asset | Typical folder | Assign in editor | Format |
|-------|----------------|------------------|--------|
| Mesh | `content/meshes/` | **Mesh** component → mesh file | `.glb` or `.gltf` |
| Textures | `content/textures/` | **Material Editor** texture slots | `.dds` (BC1 / BC3 for authored PBR) |
| Material | `content/materials/` | **Mesh** → **Material N**, or **Save As** in Material Editor | `.mat` (INI) |
| Sky background | `content/textures/` | **World Settings** → **Sky / Environment** → **Texture File** | 2:1 equirect `.dds` |
| Prefab | `content/entities/` | **Entity Browser** drag into viewport | `.entity` |

The FAQ also mentions **KTX** textures. The Material Editor texture browse filter is `.dds` today. Use DDS for material maps unless you already rely on a KTX path elsewhere in your project.

## End-to-end workflow

1. **Export** from Blender, GIMP, Substance, or similar into the formats above.
2. **Copy** into the right `content/` subfolder. The OS file manager is fine. There is no built-in content browser.
3. **Author or duplicate a `.mat`** in the Material Editor (`Shift+4`). Assign albedo, normal, RMA, and other maps. **Save As** under `content/materials/`.
4. **Place content** in a world:
   - Drag an `.entity` prefab from the **Entity Browser** (`Shift+Space`), or
   - Add **Mesh** on an entity and browse to a `.glb`, then assign **Material 0** (and more slots if the mesh has them).
5. **Reload** after disk edits while the editor is open.

### Reload Assets

**Debug → Reload Assets** (`Shift+R`) reloads shaders, textures, materials, flipbooks, sounds, animations, scripts/modules, themes, property defaults, surface types, and editor input bindings. It does **not** run on file save.

## Entity Browser vs new entities

| Goal | Use |
|------|-----|
| Drop a prop, character, or kit piece into a level | **Entity Browser** → drag `.entity` into the viewport |
| Build a reusable prefab from components | **Add New Entity** in the World Inspector, add components, **Prefab → Save** — see [Your first prefab](../tutorials/your_first_prefab.md) |
| Swap mesh on an existing entity | **Mesh** component → browse GLB |

## Round-trip to a DCC tool

**File → Export → World (GLB)** or **Selected Entities (GLB)** sends geometry out for editing in Blender or similar. Bring changes back by saving the GLB under `content/meshes/` and updating the **Mesh** file path (or the prefab that references it).

Materials and textures do not round-trip through GLB export. Keep `.mat` and `.dds` in `content/` as the source of truth for look.

## Next

**[Textures](art_textures.md).** DDS naming, gamma, and Texture Packer.
