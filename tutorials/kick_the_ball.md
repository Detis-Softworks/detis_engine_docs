# Kick the ball

Take the sphere from [Your first prefab](your_first_prefab.md), make it a Dynamic body, attach an entity script, push it with Interact, then copy the script and give it a short hop so you can see Lua reload.

You need:

- The tutorial world with the demo player
- At least one `sphere` from `entities/primitive/sphere.entity` (Static collision is fine to start)

## What you will learn

- Switching a PhysicsBody from **Static** to **Dynamic**
- Enabling Transform interpolation for smoother motion
- How a **Script** component points at a `.lua` file
- How the demo player finds `interactable` targets and shows a HUD prompt
- That the prompt uses your **Interact** binding (default **E** in `game_input_bindings.ini`), not a hardcoded key
- How to tweak script parameters in the inspector
- How to copy a shipped script, edit it, and reload

Mouse push / pull (LMB / RMB) is a later tutorial. This page stays on Interact.

## 1. Give the ball room and a clear backdrop

1. Select `ground` in the World Inspector.
2. Open **Transform** and set Scale to `100`, `0`, `100`.

That gives you a wide floor to chase the ball.

3. **View → World Settings** (`Shift+3`).
4. Open **Sky / Environment**.
5. Turn off **Render Dome**.

That hides the visual sky only. **Ambient Lux** still fills the scene. IBL can stay on. Hiding the dome makes the white ball easier to track against a plain backdrop.

## 2. Make the body Dynamic

The prefab tutorial left the sphere **Static**. Impulses need a **Dynamic** body.

1. Open the **Physics Body** section.
2. Set **Body Type** to **Dynamic**.
3. Open the **Transform** section.
4. Turn on **Enable Interpolation**.

Physics steps on a fixed tick. Interpolation blends the rendered pose between those steps so rolling and kicks look smoother instead of stuttering.

5. Place the sphere on the ground if it is still sitting on the cube. Position Y `0.5` is a good start for a radius `0.5` mesh.

Optional: enable **Debug Visualization** (or **Debug → Toggle Collision Debug**, `Shift+C`) to confirm the sphere shape still matches.

## 3. Switch off triplanar for a rolling ball

Triplanar materials are projected in world space. When a Dynamic sphere rolls, the mesh turns but the triplanar look stays put, so it looks like the ball is skating in place.

1. Open the **Mesh** section.
2. On **Material 0**, browse to `materials/primitive/primitive_no_texture_white.mat`.

A plain material will rotate with the mesh, so rolling reads correctly. Keep triplanar for Static props if you like.

## 4. Add a Script component

1. With the sphere selected, click **Add Component**.
2. Choose **Script**.
3. Open the **Script** section.
4. On **Script File**, browse to `scripts/components/push_impulse_interactable.lua`.

That is a shipped gameplay script used by several demos. On ready it tags the entity `interactable` so the demo player can aim at it.

## 5. Script parameters

Scripts can expose values to the Entity Inspector so you can tweak them without editing Lua every time. This push script shows a few, including **impulse_strength** (default `40`).

Parameter widgets use the names from the `--@PARAMETER` lines in the script (`impulse_strength`, `interact_label`), not title case.

You will use that dial in a moment. Leave **impulse_strength** on `40` for the first kick.

## 6. Play and push (default strength)

1. **File → Save World** (`Ctrl+S`).
2. **Debug → Play Game** (`Ctrl+P` / `Alt+P`), or **Play** on the viewport toolbar.
3. Walk up to the sphere and look at it.
4. The HUD should show the interact label and your **Interact** key (whatever is bound, often **E**).
5. Press Interact.

On a light Dynamic sphere, `40` is huge. The ball should launch like it exploded off the kick. That is intentional. Toggle back to the editor with `Ctrl+P` / `Alt+P`.

## 7. Dial the impulse down

1. Select the sphere.
2. In **Script**, set **impulse_strength** to `10`.
3. Play again and Interact once more.

Same script file, much calmer kick. That is the point of inspector parameters: tune feel without opening the `.lua`.

## 8. Copy the script before you edit it

Do not permanently change `scripts/components/push_impulse_interactable.lua`. Demos share that file.

1. Copy it to `content/scripts/tutorials/kick_ball.lua` (create the `tutorials` folder if needed).
2. Open `kick_ball.lua` in a text editor.
3. Rename the table from `PushImpulseInteractable` to `KickBall` everywhere in the file (local table, every `function KickBall.…`, and `return KickBall`).
4. On the sphere’s Script component, browse to `scripts/tutorials/kick_ball.lua` instead of the shipped component script.
5. In the Script inspector, set **interact_label** to `Kick`.
6. Save the world.

## 9. Add a short hop

In `kick_ball.lua`, find the block that flattens look direction to the ground:

```lua
-- Drop pitch so looking up/down does not lift the body.
forward = vec3(forward.x, 0.0, forward.z)
local length = vec3_length(forward)
if length < 0.0001 then
    return
end

-- Normalize the forward direction.
forward = vec3_mul(forward, 1.0 / length)
```

Replace it with a small upward bias so the kick arcs:

```lua
-- Mostly forward, with a little lift so the kick hops.
forward = vec3(forward.x, 0.5, forward.z)
local length = vec3_length(forward)
if length < 0.0001 then
    return
end

-- Normalize the forward direction.
forward = vec3_mul(forward, 1.0 / length)
```

Save the `.lua` file.

## 10. Reload and play again

Scripts do not pick up disk edits by themselves while the world is loaded.

1. Select the sphere.
2. In **Script**, click **Reload** on the **Script File** field.

Or use **Debug → Reload Assets** (`Shift+R`). That reloads shaders, textures, materials, flipbooks, sounds, animations, scripts/modules, themes, property defaults, surface types, and editor input bindings. It does **not** run on file save.

3. Play, look at the ball, press Interact.

You should get a hop instead of a flat shove. If the label still says `Push`, check that the Script File points at `kick_ball.lua` and that **interact_label** is `Kick` in the inspector.

> **Early Alpha Notice:** After you edit a `.lua` file on disk, reload it from the editor (Script File **Reload**, or **Debug → Reload Assets** / `Shift+R`). Automatic script change detection is planned.

## 11. Optional: expose kick lift as a parameter

Hardcoding `0.5` works. If you want to tune the hop from the inspector like **impulse_strength**, expose it.

1. Near the other `--@PARAMETER` lines at the top of `kick_ball.lua`, add:

```lua
--@PARAMETER kick_up FLOAT 0.5 "Upward bias mixed into the kick direction."
```

2. In the hop block, use that value instead of the literal:

```lua
forward = vec3(forward.x, kick_up, forward.z)
```

3. Save the file, **Reload** the script, then dial **kick_up** in the Script inspector and play again.

That is how script parameters are declared: a `--@PARAMETER` line, then use the name in the script. Keep this optional if you are happy with a fixed hop.

## 12. Make it bounce

The hop from the script only adds lift on Interact. Bounce when the ball hits the ground comes from the PhysicsBody.

1. Select the sphere.
2. Open **Physics Body**.
3. Set **Restitution** to about `0.7` (try `0.5` to `0.8` until it feels right).

Restitution is how much energy comes back on impact. `0` is dead. Near `1` is very springy.

4. Play, kick the ball, and watch it bounce a few times before settling.

Optional: lower **Rolling Friction** a little if the ball stops spinning too fast.

## 13. Optional: bake Dynamic + script into the prefab

If you want every new sphere instance to come in ready to kick:

1. Confirm Mesh (plain white material), PhysicsBody (**Dynamic**, with your restitution), Transform (**Enable Interpolation**), and Script look right.
2. Prefab → **Save As** → overwrite or update `entities/primitive/sphere.entity` (or save a tutorial-specific prefab under `entities/tutorials/`).

Otherwise leave these changes on this world instance only. The shipped primitive can stay Static if you prefer.

## Next

You have finished the guided path through Kick the ball.

For a map of scripting kinds, lifecycle, parameters, and reload, see [Script overview](../manuals/script_overview.md).

For sun, local lights, and exposure, see [Lighting](../manuals/lighting.md). For mix, zones, and music, see [Audio](../manuals/audio.md).

If you want to revisit something, use the sidebar.
