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
| `engine_logo.png` | Teal engine mark (archived — no longer used by the docs shell; was sidebar logo + favicon) |
| `apple-touch-icon.png` | Copy of `engine_logo.png` for iOS home-screen (kept opaque for Apple) |
| `company_logo.png` | Softworks mark — sidebar logo and tab favicon; synced from the website's `public/company_logo.png` |
| `engine_icon.png` | Older engine icon (legacy) |

When you replace a brand file, copy the PNG into `images/brand/`, commit it, and push. To refresh from shipped engine art, copy from `detis_engine/game/engine/graphics/` (same names), not from the marketing site tree.

From Markdown (Docsify on GitHub Pages). Use site-root paths, not `../`:

```md
![Editor overview](images/editor/overview.png)
```
