# Engine Settings

Reference for **File → Settings**. You do not need this page on day one. Open it when you want to tune performance, audio levels, or editor appearance.

<img src="../images/editor/ed_engine_settings_redering.png" alt="Engine Settings rendering" style="max-width:400px;height:auto;display:block">

**Reset to Defaults** puts everything back to the shipped defaults. Restart after you use it.

## Appearance

| Setting | In plain terms |
|---------|----------------|
| **Theme** | Color theme for **editor** panels and menus. It does not change your 3D world or how your in-game HUD is drawn in Lua. |
| **UI Scale (%)** | Scales ImGui text size for the **editor** and for in-game UI that uses the engine **`gui_*`** drawing path. |

## Display

| Setting | In plain terms |
|---------|----------------|
| **VSync Mode** | Shipped default is **Enabled**: frame rate follows your monitor refresh (often 60 or 144 Hz), which usually caps GPU load and reduces tearing. **Disabled** removes that cap so FPS can go higher; the GPU may work harder and you may see tearing. **Adaptive** tries to sync when possible. |
| **Window Mode** | **Windowed** (resizeable window), **Fullscreen** (exclusive), or **Borderless** (fullscreen on the desktop). |
| **Monitor** | Which screen to use when you have more than one. |
| **Resolution** | Pixel size of the game window when you play. The 3D editor view is not locked to this. |

## Rendering

These affect how pretty the picture is and how hard your GPU works.

| Setting | In plain terms |
|---------|----------------|
| **Gamma** | Overall brightness curve of the final image. **Leave the default** while you build worlds. If the demo looks too dark, fix **sun, sky, exposure, and materials** in the world first. Changing gamma only on your PC can make you author lighting too bright for everyone else. |
| **Render Scale (%)** | Renders the 3D view at a lower or higher internal resolution. **Lower** = faster, softer image. **100%** = sharpest, heaviest. |
| **Global Frustum Culling** | Skips drawing objects behind you or outside the camera view. Leave on unless you are debugging visibility. |
| **Global Distance Culling** | Stops drawing far-away objects. Leave on unless you are debugging visibility. |
| **Anisotropic Filtering** | Makes surface textures stay sharp at a shallow angle (ground, walls). Higher **2x** … **16x** looks better on oblique surfaces, costs a little GPU time. |

### Anti-Aliasing

| Setting | In plain terms |
|---------|----------------|
| **Anti Aliasing (FXAA)** | Smooths jagged edges on geometry. Cheap compared to other AA types. |
| **FXAA Super Sampling (1.33x)** | Slightly sharper FXAA by rendering a bit larger, then shrinking. Needs **Anti Aliasing (FXAA)** on. |

### Screen Space

Effects computed from what is already on screen (like many game graphics options menus).

| Setting | In plain terms |
|---------|----------------|
| **Screen Space AO Quality** | Darkens corners and contact points where objects meet (creases, undersides). **Off** is fastest. **High** adds depth, costs GPU time. |
| **SSR Quality** | Reflections on shiny floors, wet surfaces, and similar. **Off** if you do not need reflections or need more FPS. |

### Shadows

| Setting | In plain terms |
|---------|----------------|
| **Shadow Quality** | How far and how sharp **sun** shadows and **local light** (lamps) shadows are. **Ultra** looks best, **Low** or **Off** helps weak GPUs. Changing this needs a **restart** to rebuild shadow maps. |

Reference (distances in meters):

| Shadow Quality | Sun shadow reach | Local lamp shadows (max / fade) |
|----------------|------------------|----------------------------------|
| Off | off | off |
| Low | 50 | 10 / 5 |
| Medium | 100 | 14 / 7 |
| High | 100 | 16 / 8 |
| Ultra | 200 | 24 / 12 |

### Local Lights

Options for worlds with many point and spot lights. Defaults are fine for small scenes.

| Setting | In plain terms |
|---------|----------------|
| **Culling** | Master switch to skip lights you cannot see. Turn off only when debugging lighting. |
| **Local Light Shadows** | Lets lamps cast shadows at all. Each light still needs **Cast Shadows** in the Entity Inspector. |
| **Frustum Culling** | Ignores lights outside the camera view. |
| **Distance Culling** | Fades out lights that are far away. |
| **Max Distance** / **Fade Range** | How far lamp **light** stays visible before it fades. |
| **Shadow Distance Culling** | Stops updating shadows for far lamps. Needs **Local Light Shadows**. |
| **Max Distance** / **Fade Range** (shadow) | How far lamp **shadows** stay before they fade. |

## Sound

| Setting | In plain terms |
|---------|----------------|
| **Master Volume** | Overall loudness cap for everything. |
| **Music Volume** | Background music. |
| **SFX Volume** | Gameplay sounds: footsteps, gunshots, doors, impacts. |
| **UI Volume** | Menus, buttons, HUD bleeps. |
| **Ambient Volume** | Wind, room tone, outdoor beds from soundscapes. |
| **Voice Volume** | Dialogue and voice lines. |
| **Reverb** | Shared echo effect. How strong it is per room comes from **Sound Zone** entities in your world. |

## External Tools

Optional apps Detis opens when you edit files from the editor.

| Setting | In plain terms |
|---------|----------------|
| **Script Editor** | Your code editor for **`.lua`** scripts. |
| **Texture Editor** | Your image editor for textures. |
| **Audio Editor** | Your audio tool for **`.wav`** / **`.ogg`** files. |

**Browse** picks the program. **Clear** removes the path.
