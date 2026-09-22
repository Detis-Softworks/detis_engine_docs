# Art

Author meshes, textures, and materials for Detis worlds. Detis uses a [zero-import pipeline](../getting_started/faq.md#what-is-the-asset-pipeline): drop files under `content/`, point the editor at paths, and play. Materials are `.mat` text files in the engine, not node graphs imported from Blender. The next pages walk pipeline, textures, meshes, materials, the Material Editor, and sky textures in order.

## Editor tools

| Task | Where | Shortcut |
|------|--------|----------|
| Assign mesh / material paths | **Entity Inspector** -> **Mesh** | — |
| Edit a `.mat` | **View -> Material Editor** | `Shift+4` |
| Pack RMA channels into one DDS | **View -> Texture Packer** | `Shift+5` |
| Sky **Texture File** (equirect DDS) | **View -> World Settings** -> **Sky / Environment** | `Shift+3` |

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

**Previous:** [Music](audio_music.md): global music stream from Lua.

**Next:** [Pipeline](art_pipeline.md): end-to-end zero-import workflow.
