# Meshes

Static and skinned geometry comes from **GLB** or **GLTF** files under `content/meshes/`. The **Mesh** component on an entity points at one file and binds one `.mat` per submesh slot.

<img src="../images/editor/ed_mesh_component.png" alt="Mesh component" style="max-width:600px;height:auto;display:block">

## Assign a mesh

1. Select an entity in the **World Inspector**.
2. In the **Entity Inspector**, open **Mesh**.
3. Browse **Mesh** to a `.glb` or `.gltf` under `content/meshes/`.

The file dialog filter is mesh files only. Paths are stored relative to the runtime anchor (**`bin/`**, where the executable lives).

## Material slots

Each submesh in the GLB gets a **Material 0**, **Material 1**, and so on. If the file stores submesh names, the inspector shows them in the label (for example `Body (0)`).

1. Browse each slot to a `.mat` under `content/materials/`, or
2. Use the edit control on the material field to open the **Material Editor** for that slot.

Multi-material props need one `.mat` per slot. A single-slot cube uses **Material 0** only.

## Unique Material

**Unique Material** on the Mesh component gives this entity its own copy of the material data. Use it when one instance needs a different tint, roughness tweak, or map set without forking the shared `.mat` for every other user of that file.

When **Unique Material** is on:

- The material **file** browse field is disabled. Edits live on the instance.
- Open the Material Editor from the slot edit control. Changes apply to this entity only.

When **Unique Material** is off:

- The path points at a shared `.mat`. Editing that file in the Material Editor affects every entity that references it.

## GPU instancing

**GPU Instancing** batches identical meshes for performance. The checkbox is disabled when the mesh or material setup cannot instance (the tooltip on the disabled control explains why). Leave it off until you understand the constraint for that asset.

## Skeletal meshes

Skinned characters use the same GLB path on **Mesh** (or **Skeletal** workflow on demo prefabs) plus **Animation** for clip files. Demo paths live under `content/meshes/` and `content/animations/` in the sample package. This manual does not cover animation authoring.

## Triplanar vs mesh rotation

**Triplanar** materials (for example `primitive_triplanar_*.mat`) project textures in world space. On a **rolling** dynamic mesh the surface can look like it slides while the mesh spins. For balls and wheels use a standard UV material (see [Kick the ball](/tutorials/kick_the_ball.md)).

## Prefabs

Most placed props are `.entity` prefabs that already reference a mesh and materials. Author new prefabs in [Your first prefab](/tutorials/your_first_prefab.md).

## See also

- [Materials](art_materials.md)
- [Material Editor](art_material_editor.md)
- [Mesh API](/reference/mesh.md)

## Continue reading

**Previous:** [Textures](art_textures.md): DDS and map naming.

**Next:** [Materials](art_materials.md): `.mat` structure and shader types.
