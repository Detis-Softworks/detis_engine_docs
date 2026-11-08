# Images

Put screenshots and diagrams here. Editor screenshots are not in the repo yet. Add them later.

```
images/
  brand/      docs site chrome only (see below)
  editor/     editor UI (for example ed_material_editor.png, ed_mesh_component.png, ed_texture_packer.png, ed_ambient_lighting.png)
  game/       in-game / GUI screenshots (this docs repo folder only, not the engine project root)
  engine/     tools / other
```

### Brand assets (vendored in this repo)

`index.html` loads **only** files under `images/brand/`. Nothing is fetched from detissoftworks.com or `detis_website` at runtime.

| File | Use |
|------|-----|
| `company_logo.png` | Sidebar logo and browser tab favicon |
| `apple-touch-icon.png` | iOS home-screen icon (optional; set in `index.html`) |
| `engine_icon.png` | Legacy engine mark (keep in repo if referenced elsewhere) |

When you replace a brand file, copy the PNG into `images/brand/`, commit it, and push. To refresh from shipped engine art, copy from `detis_engine/game/engine/graphics/` (same names), not from the marketing site tree.

From Markdown (Docsify on GitHub Pages). Use site-root paths, not `../`:

```md
![Editor overview](images/editor/overview.png)
```
