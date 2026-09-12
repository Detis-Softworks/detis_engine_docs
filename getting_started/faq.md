# FAQ

Quick answers about Detis Engine scope for the upcoming alpha release.

## What is Detis Engine?

Detis is a lightweight, hyper-focused 3D C++ game engine for single-player PC games built around level-based, hand-authored worlds.

It is built from scratch for solo developers and small teams who want rapid iteration without general-purpose engine overhead. You get an integrated editor, a deep Lua gameplay API, PBR rendering, physics, 3D audio, animation, and pathfinding in one focused package.

## Where can I download it? When is it available?

Detis started as an internal tool for a specific game. Following interest from other developers, it is being prepared for a public alpha release. It is in closed testing today.

When alpha opens, you get the engine as a download package. One folder, one executable, your game inside it. No launcher or account wall to start building.

## Why choose Detis over a general-purpose engine?

Detis is for developers making 3D single-player PC games who value iteration speed and proven, reliable tech over bleeding-edge overhead.

General-purpose engines try to support every feature, genre, and platform. That breadth brings bloat, long wait times, steep learning curves, and complex pipelines that slow you down in production and in the shipped game.

Detis keeps the workflow direct. Editor and game live in one executable, so you toggle play in the same viewport. Meshes and textures go in raw as glTF, GLB, DDS, or KTX with no import queue. Maps load data on demand, so startup and iteration stay snappy. Gameplay lives in Lua, and worlds, materials, scripts, and shaders stay plain text on disk. You spend less time fighting the engine and more time building and tuning your game.

## Does it include an editor?

Yes. A full visual editor ships as a small part of the game executable and can be disabled entirely in release builds.

That keeps iteration fast for you and leaves the door open for end-user modding in shipped games if you want it.

## What language is used?

Lua for gameplay. C++ for the engine core.

## Which input devices are supported?

Keyboard, mouse, and standard gamepads out of the box. Bindings live in plain-text INI files under `content/config/`.

## Is Detis AI-friendly?

Yes. Worlds, materials, scripts, configs, and most project data are plain text.

An AI agent can read the Lua API stubs, sample scripts, and your project files, then generate gameplay systems, entity scripts, or world content directly in the tree. Nothing important is locked inside opaque binary blobs.

## Which platforms are supported?

Windows and Linux desktop on 64-bit PC with a dedicated GPU.

macOS needs significantly more effort and is not part of the alpha target. Mobile and console are out of scope.

## What is the asset pipeline?

Detis uses a zero-import pipeline. Meshes are raw `.glb` or `.gltf`. Textures are DDS or KTX. There is no separate import step before you can place or play content.

Change assets on disk, then use **Debug → Reload Assets** (`Shift+R`) in the editor to pick up shaders, textures, materials, sounds, animations, scripts, and related data. Maps also load on demand, which keeps load times short and makes linking smaller worlds into a larger game practical.

## Why use OpenGL as the base rendering API?

Vulkan and DirectX 12 are industry standards, but most of what they buy you shows up when AAA engines push hardware to the limit and compete on raw throughput. That complexity lands on everyone else as driver wrangling, wrapper libraries, and maintenance you did not need to ship your game.

Detis is built for solo developers and small teams who should spend that time on content, gameplay, and polish, not on acting like a GPU driver author.

OpenGL is perfectly capable of modern graphics. Virtually every PC GPU supports it today. Vendor drivers on Windows and Linux are mature and stable. That is a production-ready foundation, not a dead end.

Right now, the focus is a minimum functional engine that ships. OpenGL is the right call for that. Proven drivers, fast iteration, and a renderer that already covers what Detis targets. Additional graphics APIs are planned as the engine matures. That is a growth path, not a bet against today’s stack.

The rendering features OpenGL does not expose are not on Detis’s roadmap. Detis is not trying to win a spec-sheet race. It invests in reliable, stable ways to get the look you want through artist-controlled lighting, PBR materials, post effects, and workflows that hold up across real hardware.

No good game ever failed because it used an older API. Detis picks the stack that keeps your project moving.

## Does it support big seamless open worlds?

Not as a built-in streaming open world. Detis is built for authored levels, not infinite terrain streaming.

You can still build large games by linking multiple smaller `.world` files together. Each map stays loadable and editable on its own.

## Does it support multiplayer?

No. Detis targets single-player PC games.

Networking is not planned for alpha or the near term.

## Does it include global illumination (GI)?

Not in the initial alpha release. Lighting today is built around artist-controlled bounce. Sun, sky fill, local lights, exposure, and materials you tune in the editor.

A dedicated GI solution is planned after alpha. The current renderer is already capable for the look Detis is going for without waiting on that system.

## Which physics engine is used?

Jolt Physics.

## Is it open source?

No. Detis is proprietary.

Running a public open-source project takes significant ongoing effort. The priority is shipping games and improving the engine, not maintaining public repositories.

Public access is a binary release with a deep Lua scripting API, which covers what most developers need to make a full game. Native C++ extension and source access may be added post-alpha if there is enough demand.

## Is Detis free?

Detis is planned as a one-time purchase, about the price of an indie game. No subscription, no royalties, and no revenue share.

Ship a hobby project or cross serious revenue. The license terms stay the same. Updates and fixes for the current generation are included. The goal is a sustainable engine that keeps improving for the developers who build with it.

## Can bundled assets be used commercially?

Yes. Assets shipped in the engine’s `content/` folders are free to use in projects built with Detis, including commercial releases. Each asset folder includes license notes. Included samples are CC0.

## Where can I find detailed docs?

Start with [Introduction](introduction.md), then [Installation](installation.md), [Quick start](quick_start.md), and the tutorials.

## Next

**[Installation](installation.md).** Download and get up and running.
