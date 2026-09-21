# Textures

Ship **DDS** for material maps and skies. Author in GIMP, Photoshop, or Substance, then export with the right compression and color space.

## File naming

Use a consistent suffix per map type:

| Map | File name | BC | Gamma on export | sRGB |
|-----|-----------|-----|-----------------|------|
| Albedo (opaque) | `{name}_albedo.dds` | **BC1** | On | On |
| Albedo (alpha) | `{name}_albedo.dds` | **BC3** | On | On |
| Normal | `{name}_normal.dds` | **BC3** | Off | Off |
| RMA | `{name}_rma.dds` | **BC3** | Off | Off |
| Emission | `{name}_emission.dds` | **BC3** | On | On |
| Detail normal | `detail_{name}_normal.dds` | **BC3** | Off | Off |
| Water foam | `{name}_foam.dds` | **BC3** | Off | Off |
| Sky | `{name}_sky.dds` | **BC3** | On | On |

**Always:** generate **mipmaps**, format **Default**, power-of-two sizes divisible by 4 (512, 1024, 2048).

### RMA channels

Pack into one DDS:

| Channel | Content |
|---------|---------|
| **R** | Roughness |
| **G** | Metallic |
| **B** | Ambient occlusion |
| **A** | Transmission |

### Normal map alpha

The alpha channel can store **height** for parallax. Use white if you do not need height.

## GIMP export (summary)

**Color maps** (albedo, emission, sky): BC1 or BC3, mipmaps on, gamma on, sRGB on.

**Data maps** (normal, RMA, foam, detail): BC3, mipmaps on, gamma off, sRGB off.

## Texture Packer

**View → Texture Packer** (`Shift+5`) merges separate grayscale or RGB images into one DDS channel map (typical use: build an **RMA** from separate roughness, metal, and AO files).

<img src="../images/editor/ed_texture_packer.png" alt="Texture Packer" style="max-width:600px;height:auto;display:block">

Texture Packer is for channel packing, not for baking a sky HDRI. For sky backgrounds see [Sky texture](art_sky.md).

## Rules of thumb

- Ship **DDS only** for authored PBR (BC1 or BC3). Do not rely on BC5/BC7 in the stock pipeline.
- **Never** use the same `.dds` file as both albedo and normal/RMA/foam. Duplicate the file if you must reuse pixels.
- **Albedo** should not contain baked lighting. Tileables must be seamless.
- If the texture appears upside down in-game, fix **Flip vertically on export** once in your DCC and keep that convention for the project.

## Common mistakes

| Symptom | Likely cause |
|---------|----------------|
| Normal looks too glossy or wrong | sRGB left on for a normal or RMA export |
| Surfaces too dark or washed out | Wrong gamma on albedo, or linear data in an sRGB slot |
| Shimmering at a distance | Missing mipmaps |
| Wrong roughness/metal | RMA channels swapped, or separate files not packed consistently |

## Continue reading

**Previous:** [Pipeline](art_pipeline.md): zero-import workflow.

**Next:** [Meshes](art_meshes.md): GLB paths and material slots.
