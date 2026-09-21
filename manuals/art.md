# Art

Author meshes, textures, and materials for Detis worlds. Detis uses a [zero-import pipeline](../getting_started/faq.md#what-is-the-asset-pipeline): drop files under `content/`, point the editor at paths, and play. Materials are `.mat` text files in the engine, not node graphs imported from Blender.

## In this section

- [Pipeline](art_pipeline.md) — Folders, formats, reload workflow, Entity Browser vs prefab authoring.
- [Textures](art_textures.md) — DDS export, map naming, Texture Packer for RMA.
- [Meshes](art_meshes.md) — GLB on the Mesh component, slots, unique materials.
- [Materials](art_materials.md) — `.mat` files, shader types, contact types.
- [Material Editor](art_material_editor.md) — Panel sections, types, and recipes.
- [Sky texture](art_sky.md) — Equirect sky DDS and World Settings assignment.

## Editor tools

| Task | Where | Shortcut |
|------|--------|----------|
| Assign mesh / material paths | **Entity Inspector** → **Mesh** | — |
| Edit a `.mat` | **View → Material Editor** | `Shift+4` |
| Pack RMA channels into one DDS | **View → Texture Packer** | `Shift+5` |
| Sky **Texture File** (equirect DDS) | **View → World Settings** → **Sky / Environment** | `Shift+3` |

**Ambient Lux**, IBL toggles, sun **Lux**, and exposure are in [Lighting](lighting.md). Art covers meshes, textures, `.mat` files, and the sky **texture** asset.

## Content folders

See [Project layout](../getting_started/project_layout.md). Typical art paths:

| Folder | You put |
|--------|---------|
| `content/meshes/` | `.glb` / `.gltf` |
| `content/textures/` | `.dds` (and KTX where supported) |
| `content/materials/` | `.mat` |
| `content/entities/` | Prefabs that reference the above |

## API reference

- [Mesh](../reference/mesh.md)
- [Renderer](../reference/renderer.md) (sky texture path)

## Continue reading

**Next:** [Pipeline](art_pipeline.md): end-to-end zero-import workflow.
