# Engine reference

Facts that apply everywhere in Detis: platforms, recommended hardware, and shared conventions.

Hard caps are in [Engine limitations](limitations.md) when you need them.

## Platforms

**OS**: 64-bit Windows and 64-bit Linux only.

**Graphics API**: OpenGL 4.5 Core required. Use a discrete GPU with current drivers.

**Input**: Keyboard, mouse, and standard gamepads.

**Gameplay language**: Lua.

**Product scope**: Single-player 3D PC games. Not a general-purpose or live-service platform.

**Out of scope for now**: macOS, mobile, and consoles.

## Recommended hardware

Detis does not publish a certified minimum spec or benchmark matrix. Treat the items below as a reasonable starting point for development. Needs grow with project size and content.

**Graphics**: Discrete GPU with OpenGL 4.5 Core and up-to-date drivers. Some integrated GPUs can run at reduced quality with lower frame rates.

**System RAM**: 16 GB for comfortable work with the editor and other tools open. Smaller/simpler projects can run on much less.

**CPU**: 64-bit x86-64, recent multi-core desktop or laptop.

**Disk**: Space for the engine install plus your `content/` tree.

## Core terminology

**World**: The level you edit and play. One world is loaded at a time. It is saved as a `.world` file.

**Entity**: One game object in the world (a prop, light, trigger, character, and so on).

**Component**: A piece you add to an entity so it does something (show geometry, collide, shine light, play sound, run logic, and so on).

**Prefab**: An entity setup saved to disk so you can spawn copies. It is saved as a `.entity` file.

**Mesh**: A 3D shape held in a GLB or GLTF file. A **Mesh** component on an entity picks which shape to draw.

**Texture**: An image the engine loads for drawing on meshes. Unlike a plain image file, it carries mipmaps (smaller copies used when the surface is farther away or smaller on screen).

**Material**: How a surface looks (color, textures, how it reacts to light). It is saved as a `.mat` file.

**Script**: Lua code that drives gameplay.

## Units and space

Detis uses metric distances in the 3D world unless a panel labels another unit.

**Length**: 1 unit = 1 meter. Positions, physics, light range, shadow distances, and audio falloff use meters.

**Axes**: Right-handed world. +Y is up. Entity forward is local -Z (OpenGL-style). Right is +X. Default gravity is (0, -9.81, 0) m/s².

**Angles**: Degrees in the editor and in most script parameters (cone angle, sun azimuth, and similar). Lua `math.*` trig functions still use radians.

**Time**: Seconds in Lua (`delta_time`, timers, music fades).

**Lighting**: Physical labels where shown: sun lux, local lights lumens, light color temperature in Kelvin.

**DCC export**: Author meshes in glTF / GLB with Y up to match the world.

## Continue reading

**Previous:** [FAQ](faq.md): what Detis is and is not.
