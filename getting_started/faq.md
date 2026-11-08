# FAQ

Quick answers about Detis Engine scope. 

## What is Detis Engine?

Detis is a lightweight, hyper-focused 3D C++ game engine designed from the ground up for single-player PC games and hand-authored worlds.

It is built for small indie teams and solo developers who want rapid iteration without general-purpose engine overhead. You get an integrated editor, a deep Lua gameplay API, PBR rendering, physics, 3D audio, animation, pathfinding and much more, in one focused package.

## Where can I download it?

The engine is not available for download yet but will be very soon.

## Who is Detis Engine for?
Detis is for small developers making 3D single-player PC games who value iteration speed and proven, reliable tech over bleeding-edge overhead. Detis is not for everyone, nor does it pretend to be. It is built specifically for handcrafted worlds rather than infinite, seamless or procedurally generated open worlds, and it targets single-player experiences.

## Why choose Detis over a general-purpose engine?

Big engines try to support every feature, genre, and platform, which brings bloat, long wait times, steep learning curves, and complex pipelines. Detis eliminates that friction with a unified editor and runtime executable, instant raw asset loading (glTF, GLB, DDS) with zero import queues, Lua scripting, and plain-text project files on disk so you spend your time building games instead of fighting engine overhead.

## Does it include an editor?

Yes. A full visual editor is built right into the engine. You get two separate executables to choose from when shipping your game: one that includes the editor (if you want to allow end-user modding) and a clean runtime-only executable that ships just the game. During development, a single button press runs your world in the same window, and stopping play brings the editor right back.

## What language is used?

Lua for gameplay and C++ for the engine core. The current personal license only offers the binary version of the engine, though a source code option will be made available later.

## Which input devices are supported?

Keyboard, mouse, and standard gamepads out of the box (one gamepad at a time). 

## Is Detis AI-ready?

Yes. Worlds, materials, scripts, configs, and most project data are plain text. An AI agent can read the Lua API stubs, sample scripts, and your project files, then generate gameplay systems, entity scripts, or world content directly in the tree. Nothing important is locked inside opaque binary blobs. Additionally, Detis includes an MCP server (**`detis_mcp`** in **`bin/`**) for agentic gameplay scripting. See [MCP server for agentic scripting](/manuals/script_mcp.md). Native editor prompting is planned for a future update.

## Which platforms are supported?

Windows and Linux on **64-bit PC**. **macOS**, mobile, and console are out of scope today but not ruled out. 

## What hardware do I need?

Detis does **not** publish a certified **minimum** spec or benchmark matrix. Treat the table below as a **recommended starting point** for development on a typical indie PC. **What you need at runtime** (RAM in Play mode, VRAM, disk, CPU headroom) scales with **your project**: world size, asset weight, entity count, and **Edit -> Engine Settings** quality.

| Area | Recommended |
|------|----------|
| **OS** | **64-bit Windows** or **64-bit Linux** |
| **Graphics** | **Discrete GPU** with **OpenGL 4.5 Core** support and up-to-date drivers. Some **integrated** GPUs can run at reduced quality, but expect lower frame rates.  |
| **System RAM** | **16 GB** for comfortable everyday work with the editor and other tools open. Smaller projects can run on less. |
| **CPU** | **64-bit x86-64** recent **multi-core** desktop or laptop processor. Simulation and loading scale with your content. |
| **Disk** | Space for the engine install plus your **`content/`** tree. |

## What is the asset pipeline?

Detis uses a zero-import pipeline. Meshes and animations are raw .glb (or .gltf). Textures are .dds (BC1 / BC3) or everyday formats such as PNG and JPEG where mipmaps aren't needed. There is no separate import step before you can place or play content. Additionally, the engine includes built-in tools for image-to-texture converting, meaning it does not rely on external software or plugins.

> **Note:** Prefer DDS for compressed texture maps. The bundled loader library can read KTX too, but the engine has not properly tested that path yet, so .ktx files do not load atm.

Change assets on disk, then use Debug -> Reload Assets (Shift+R) in the editor to pick up shaders, textures, materials, meshes, sounds, animations, scripts, and more. Worlds also load on demand, which keeps load times short and makes linking smaller worlds into a larger game practical.

## Why use OpenGL as the base rendering API?

OpenGL was chosen as the most optimal, reliable foundation to build and ship the base engine quickly without wasting time on driver-level overhead. While no longer receiving major specification updates, the API natively covers every graphics capability Detis needs today. Vendor drivers on Windows and Linux are mature, stable, and deliver a production-ready feature set for modern PBR, lighting, and post-processing. As Detis matures, support for additional graphics APIs is planned for future development.

## Does it support big seamless open or procedural worlds?

Not as a built-in streaming open world. Detis is built for authored worlds, not infinite terrain streaming.

You can still build large games by linking multiple smaller **`.world`** files together. Each world stays loadable and editable on its own.

## Does it support multiplayer?

No. Detis targets single-player PC games only.

Networking is not planned for the near term.

## Does it include global illumination (GI)?

Yes, in the screen-space sense. The rest of the lighting stays artist-controlled in the editor: sun, sky fill (IBL), local lights, exposure, and PBR materials. A full global illumination solution is planned for a future update.

## Does it support custom shaders?

Yes, for post effects. You write GLSL fragment shaders and drive them from Lua. The shipped `content/scripts/shaders` includes working examples.

The default material types shipped with the engine are already more than capable for a full game. Custom surface shader materials are not supported yet and are planned for a future update.

## Which physics engine is used?

Jolt Physics.

## Is it open source?

No. Detis is proprietary. You get a binary release with a deep Lua scripting API, which covers what most developers need to make a full game. Native C++ extension and source access will be added later if there is enough demand.

## Is Detis free?

Detis is planned as a one-time purchase, about the price of an indie game. No subscription, no royalties, and no revenue share.

## Can bundled assets be used commercially?

Yes. Assets shipped in the engine's `content/` folders are free to use in projects built with Detis, including commercial releases. The bundled sample assets are CC0, with license notes in their asset folders and a full list under **Help -> Credits** in the editor.

## Where are hard engine limits documented?

See [Engine limitations](limitations.md) when behavior looks wrong but might be an intentional cap (shadow counts, animation rules, cull distances, and similar). Optional reading. Not required before install.

For platforms, units, and terminology, see [Engine reference](engine_reference.md).

## Continue reading

**Previous:** [Introduction](introduction.md): what Detis is and where to start.

**Next:** [Installation](installation.md): download and run the editor.
