# World settings and sky

Keep your tutorial world open from [Edit a script](edit_a_script.md). You already know entity components and scripts. This step is about properties stored on the **`.world`** file.

## 1. Open World Settings

In the **Entity Inspector** we tweaked one entity at a time. **World Settings** edits the loaded world (sky, sun, fog, exposure, sound, and more).

**View -> World Settings** (`Shift+3`). Or the **globe** button on the viewport toolbar (tooltip **World Settings**).

At the top of the panel:

- **World Name** renames the world.
- **Script** holds World Script (optional `.lua` game logic for this world).

Scroll down for collapsible categories. The editor lists them in this order: 
- **Culling**
- **Sky / Environment**
- **Sunlight**
- **Screen Space AO**
- **Screen Space Bounce**
- **Reflections**
- **Exposure**
- **Bloom**
- **Wind (Experimental)**
- **Fog**
- **Wetness (Experimental)**
- **Color**
- **Sound**. 

For this tutorial we'll only need **Sky / Environment**. 

## 2. Sky / Environment defaults

Expand **Sky / Environment**.

<img src="../images/tutorials/tut_sky_settings.jpg" alt="Sky / Environment in World Settings">

The sky panorama mesh draws only when Sky/Environment **Active** setting is on and **Render Dome** is on. If a **Texture File** is loaded you'll see the texture if not you'll see a solid color set using the **Tint** color picker control. 

Turn off the visible sky dome by setting **Active** to false. Use this when you want lighting without a backdrop, for example an indoor environment.

## 4. Assign a sky `.dds` and IBL

1. Keep **Active** on.
2. On **Texture File**, use the **folder** icon (tooltip **Select file**) and pick a `.dds` texture file. Select `textures/demo_content/sky/sky_daylight_02.dds` from shipped demo content.

The engine loads the texture and rebakes sky IBL for reflections. Make sure **Render Dome** is on to see the panorama in the viewport.

Under **IBL** (Image Based Lighting), leave **Active** on for environment specular and diffuse (defaults `1.0` / `1.0`). 

3. **File -> Save World** (`Ctrl+S`). Play (`Ctrl+P` / `Alt+P`) and look at the backdrop and how materials catch reflections.

## Continue reading

**Previous:** [Edit a script](edit_a_script.md): copy the interactable script, reload, hop, and bounce.

You have finished the guided tutorial path.

For scripting depth, see [Scripting overview](/manuals/script_overview.md). Or use [Home](/README.md) and the sidebar for other topics.
