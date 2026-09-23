# Engine reference

Facts that apply everywhere in Detis: platforms, recommended hardware, and shared conventions.

## Platforms

| Topic | Detis today |
|-------|-------------|
| **OS** | **64-bit Windows** and **64-bit Linux** |
| **Graphics API** | **OpenGL 4.5 Core** |
| **Input** | Keyboard, mouse, and standard gamepads |
| **Gameplay language** | **Lua** |
| **Scope** | **Single-player 3D PC** games. Hand-authored **worlds**, not a general-purpose or live-service platform |

macOS, mobile, and consoles are out of scope for now.

## Recommended hardware (development)

Detis does **not** publish a certified **minimum** spec or benchmark matrix. Treat the table below as a **recommended starting point** for development on a typical PC. Note that these recommendations scale with your project.

| Area | Recommended |
|------|-------------|
| **OS** | **64-bit Windows** or **64-bit Linux** |
| **Graphics** | **Discrete GPU** with **OpenGL 4.5 Core** and up-to-date drivers. Some integrated GPUs can run at reduced quality with lower frame rates. |
| **System RAM** | **16 GB** for comfortable work with the editor and other tools open. Smaller projects can run on less. |
| **CPU** | **64-bit x86-64**, recent **multi-core** desktop or laptop. |
| **Disk** | Space for the engine install plus your **`content/`** tree. |

## Core terminology

| Term | Meaning |
|------|---------|
| **World** | The level you edit and play. One world is loaded at a time. It is saved as a **`.world`** file. |
| **Entity** | One game object in the world (a prop, light, trigger, character, and so on). |
| **Component** | A piece you add to an entity so it does something (show geometry, collide, shine light, play sound, run logic, and so on). |
| **Prefab** | An entity setup saved to disk so you can spawn copies. It is saved as a **`.entity`** file. |
| **Mesh** | A 3D shape held in a **GLB** or **GLTF** file. A **Mesh** component on an entity picks which shape to draw. |
| **Texture** | An image the engine loads for drawing on meshes. Unlike a plain image file, it carries **mipmaps** (smaller copies of the same picture used when the surface is smaller on screen). |
| **Material** | How a surface looks (color, textures, how it reacts to light). It is saved as a **`.mat`** file. |
| **Script** | **Lua** code that drives gameplay. |

## Units and space

Detis uses **metric** distances in the 3D world unless a panel labels another unit.

| Topic | Convention |
|-------|-------------|
| **Length** | **1 unit = 1 meter**. Positions, physics, light range, shadow distances, and audio falloff use meters. |
| **Axes** | The world is **right-handed**. **+Y is up**. Default gravity is **(0, -9.81, 0)** m/s². Entity **forward** is **local -Z** (OpenGL-style). **Right** is **+X**. |
| **Angles** | **Degrees** in the editor and in most script parameters (cone angle, sun azimuth, and similar). Lua **`math.*`** trig functions still use **radians**. |
| **Time** | **Seconds** in Lua (**`delta_time`**, timers, music fades). |
| **Lighting** | Physical labels where shown: sun **lux**, local lights **lumens**, color **Kelvin**. |

Author meshes in **glTF / GLB** with **Y up** to match the world.

## Continue reading

**Previous:** [FAQ](faq.md): what Detis is and is not.

**Next:** [Installation](installation.md): download and run the editor.
