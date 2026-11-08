# Engine limitations

Quality limits can be tuned in Edit -> Engine Settings or per entity. This page lists engine-level limits that do not disappear with a single button.

## Platform and project scope

**Platforms**: 64-bit Windows and 64-bit Linux only.

**Graphics API**: OpenGL 4.5 Core required. Use a discrete GPU with current drivers. Additional APIs support is planned for future updates.

**Multiplayer**: Not supported. Single-player only. See [FAQ](faq.md).

**DCC import pipeline**: No Unity-style import queue. Drop GLB/GLTF, DDS/KTX, WAV/OGG under `content/` and reference paths in the editor or scripts.

## World

**Open-world streaming**: Not supported currently. Link multiple worlds and load them at runtime.

**One active world**: One world loaded at a time. Design levels as separate worlds or swap with `world_load_from_file`.

**Camera far plane**: 4 km, engine constant. Used for the perspective projection and depth buffer.

**Camera near plane**: 0.05 m, engine constant.

**World mesh distance culling**: Default 500 m per world when world and global distance culling are active. This is separate from the 4 km far plane. Tune culling under world settings and File -> Settings.

**Effects reference distance**: Defaults to 4 km like the far plane. Used for SSR and custom post depth, not as the real clip distance. 

## Lighting

**Local lights in GPU list**: Up to 4096 point/spot entries and 4096 fog volumes in the lighting SSBO. Default distance cull for local lights is 80 m with a 16 m fade band before the cutoff (fade from 64 m to 80 m). Tune under File -> Settings -> Local Lights. Lights beyond the SSBO cap still exist in the world but will not affect shading.

**Directional light**: One directional sun for shadows and outdoor lighting. Default cascaded shadow distance is 100 m. Tune under File -> Settings (sunlight shadow distance and shadow map quality).

**Shadow-casting local lights**: At most 16 point/spot lights with shadow maps at the same time. The closest to the camera win. 

**Local light shadow maps**: Default 512 px per face (High/Medium shadow quality). Low uses 256 px. Possible to change via File -> Settings -> Shadow Map Quality.

## Materials, post-processing, and sky

**Textures per material**: Up to 17 texture sampler units per draw. Combined roughness, metalness, ambient occlusion, and transmission can share a single RMA texture.

**Opaque 4x material blend layers**: Mostly used for terrain painting and supports up to 4 different layers (RGB blend).

**Custom post-process passes**: Up to 4 fullscreen custom `.frag.glsl` passes from Lua. Possible to chain effects in fewer passes or combine in one shader.

**Custom surface shaders**: Currently not supported (fixed material types only).

**Global Illumination**: Screen Space GI with fallback to fake bounce with local lights, ambient light, IBL, and tuned materials. Full GI is planned for a future update.

**Sky modes**: Equirect DDS sky + IBL bake at load. No procedural sky.

**Deferred decals**: Not implemented yet. Use mesh overlays, translucent quads, or material blending for now.

**Deferred water caustics**: One scene-wide water surface height drives deferred caustics. Enable deferred caustics on one primary water body.

## Animation and skeletal meshes

**Bones per skinned draw**: 200 matrices uploaded (4 weights per vertex).

**glTF skins per mesh file**: First skin only if multiple are present. Export one skin per GLB.

**Animations per animation file**: First clip in the file is loaded. One clip per GLB file is the supported workflow. Name clips by file stem is recommended.

**Interpolation**: Linear and step supported. Re-bake clips without cubic spline in DCC, or export step/linear keys.

**Playback**: One active clip per entity plus optional crossfade. No animation layers, masks, or additive clips yet. Planned for a future update.

**Animation events**: No built-in clip markers. Poll `animation_get_time` in script until events land.

**Ragdoll / IK**: Not exposed currently. Planned for a future update. Use kinematic colliders on sockets or canned death animations.

## Physics

**Dynamic bodies + triangle mesh colliders**: Mesh collision shapes do not simulate on dynamic bodies. Use the provided primitive shapes (box, sphere, capsule, or convex/compound) instead.

**Collision layers**: 16-bit layer masks.

**Body count**: No fixed cap (CPU and memory bound). Sleep thresholds and simpler shapes help larger scenes.

**Vehicles / soft body**: Not wrapped (Jolt features unused). No plans for adding vehicle support in the immediate future.

**Buoyancy**: No built-in mover mode yet. Planned for a future update.

## Navigation

**Nav representation**: PathNode grid + A-star pathfind (not a navmesh polygon soup). 

**Crowd / avoidance**: No RVO or crowd sim support yet.

**Runtime nav carve**: Graph does not rebuild when geometry moves. Update node links in scripts for your game. Planned for a future update.

**Multiple agent sizes**: Single default graph today. Planned for a future update.

## Audio

**Simultaneous voices**: Depends on the shipped memory profile. Default profile `none` allows up to 8192 audio sources. The pool grows until max. Use priority in design.

**Reverb zones**: No hard limit. Engine scans zones each frame so keep zone count reasonable in large worlds.

**Game time scale**: Audio pitch does not follow time scale (e.g. sound pitch doesn't scale for slow motion effects). Planned for a future update.

## Particles

**Particles per emitter**: Editor allows very large pools by default. Runtime cost is GPU/CPU bound.

**GPU based particles**: Not supported currently.

## Terrain

**Terrain patch size**: 1 to 512 quads per axis, 0.1 to 4096 m per axis. Split large outdoor areas into multiple patches or ideally multiple worlds.

## Text mesh

**Updates**: Rebuilds GPU data on text changes. Avoid updating every frame. Use GUI for HUD text.

## Simulation

**Fixed simulation**: 60 Hz fixed step, up to 5 catch-up steps per frame.

## Editor

**In-editor play**: No partial “run scripts in editor viewport” mode.

**Undo history**: 100 editor commands.

## Memory and caches

**Hard memory ceiling**: About half of system RAM, capped at 32 GB, gates allocator growth. Default memory profile is `none` and has no soft budget.

**Resource cache budgets**: Texture, mesh, sound, and material caches have large but finite defaults. Unload unused assets via cache policy in heavy projects.

**Material table (GPU)**: Default profile allows 512 entries in the material table path. Avoid unbounded unique runtime materials.

## Continue reading

**Previous:** [Engine reference](engine_reference.md): platforms, terminology, and units.
