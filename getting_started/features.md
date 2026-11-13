# Features

What Detis Engine includes today. This list will change as development continues.

## License

- One-time purchase. No subscription, no revenue royalties, no install fees on the personal license.
- Make commercial games and keep your revenue under the license that ships with your copy.
- Bundled sample assets may be used in commercial and non-commercial games built with Detis.
- Ship with the full editor binary or a runtime-only executable.

## Graphics

- Deferred PBR renderer with clustered shading. 
- Configurable quality for shadows, screen-space effects, and internal render scale.
- Temporal anti-aliasing (TAA), optional FXAA, bloom, auto exposure.
- Image-based lighting from equirect sky textures.
- Directional sun with cascaded shadow maps and contact shadows.
- Point and spot lights with distance and frustum culling, optional shadows.
- Screen-space ambient occlusion (GTAO), reflections (SSR), and indirect bounce (SSGI).
- Volumetric fog and fog volumes.
- GPU instancing for static meshes. Skinned characters draw individually currently.
- Depth prepass and mesh frustum / distance culling.
- Normal mapping, parallax, detail maps, emissive surfaces, transmission.
- Various shading types: opaque, foliage, translucent, water, opaque with vertex color blend, unlit, and more.
- Water with waves, foam, caustics, and reflections.
- GPU wind field for foliage.
- Particles.
- Oren-Nayar diffuse on rough surfaces.
- Supports up to four custom fullscreen post-effect shader chains from Lua and GLSL.
- Renderer and post settings control available from Lua scripts.

## Editor Highlights

- Visual editor and game in one executable. 
- Dockable panels for hierarchy, inspectors, browsers, and tools.
- World hierarchy and entity inspector with component editors (transform, mesh, physics, lights, camera, animation, scripts, particles, audio, fog, navigation, terrain, and more).
- Prefab authoring, entity browser with search, drag-and-drop placement, save, load, and apply to instances.
- A simple to use material editor with various shading types.
- World settings for lighting, sky, fog, bloom, exposure, wind, wetness, audio, world scripts, and many more.
- Project settings and configurable defaults.
- A unified viewport editing mode (fly mode, focus selection, orthographic views, transform gizmos with snapping, editor, ligting helpers and more).
- Terrain sculpting, terrain patch editing, and vertex color paint.
- Built-in DDS texture converter and packer.
- Particle emitter editing in the inspector.
- Path-node and navigation zone authoring tools.
- Engine settings for graphics, shadows, audio mix, and editor appearance.
- Hot reload for shaders, materials, meshes, scripts, and related assets.
- Viewport debug modes: wireframe, flat light, albedo, normals, roughness, metallic, ambient occlusion, emission, depth, screen-space AO, ambient fill, and screen-space bounce.
- Physics collision debug visualization.
- Performance metrics panel with FPS, frame time, GPU and CPU render breakdowns, and CSV export.
- Content issues panel for load and validation diagnostics.
- Editor log panel.
- Play time scale control for testing.
- Sound controls.
- Actions history.
- Customizable themes and UI scale.
- Optional links to external editors for scripts, textures, and audio.
- Editor and runtime-only executables for shipping.

## Terrain

- Sculpt and paint heightfield terrain in the editor.
- Up to four material layers on terrain.
- Split large outdoor areas into multiple patches or worlds.

## Programming

- Deep Lua gameplay API for physics, animation, audio, input, UI, renderer, and more.
- Entity, world, and module script attachments with hot reload.
- In-game UI directly from Lua.
- Steam achievements, stats, rich presence, and cloud saves from Lua. Opening the Steam overlay pauses the game.
- World debug wireframes from Lua. Lines and simple shapes last one frame.
- MCP server for external AI IDE workflows.

## 3D models

- Load glTF / GLB (GLB is the preferred one) meshes and animations from disk.
- Skinned meshes with hardware skinning.

## Animation

- Skeletal animation from GLB.
- Linear and step interpolation.
- Bone attachments.

## Physics

- Jolt Physics rigid bodies and constraints.
- Primitive and compound colliders.
- Capsule character controllers.
- Raycasts and sweeps from Lua.
- 16-bit collision layers.

## Navigation

- Path-node graphs and A* pathfinding.

## Sound

- 3D spatialized sound on entities.
- Soundscapes, priority zones, and reverb zones.
- Music bus with fade and master limiter.
- WAV and OGG playback. No third-party audio middleware required.

## GUI

- Resolution-independent in-game UI from Lua.

## Supported file formats

- Models and animation: glTF, GLB.
- Textures: DDS, PNG, JPG; built-in image to texture conversion.
- Audio: WAV, OGG.
- Shading: GLSL
- Scripts: Lua
- Worlds and prefabs: JSON 
- Materials and configs: INI

## System

- 64-bit Windows and 64-bit Linux editor and runtime.
- Single-player PC games. No built-in multiplayer.
- Keyboard, mouse, and standard gamepads.
- OpenGL 4.5 Core. Discrete GPU recommended.
- macOS, mobile, console, and web are out of scope for now.

## Continue reading

**Previous:** [Introduction](introduction.md).

**Next:** [FAQ](faq.md).
