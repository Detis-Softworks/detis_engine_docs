# Edit a script

Continue from [Kick the ball](kick_the_ball.md). You already have a **Dynamic** sphere with **`push_impulse_interactable.lua`** and you tuned **impulse_strength** in the **Entity Inspector**.

Do not edit `scripts/components/push_impulse_interactable.lua`. Demos share that shipped interactable script.

## 1. Copy the interactable script, then assign it to the ball

1. Copy `content/scripts/components/push_impulse_interactable.lua`and save your copy as **`kick_ball.lua`**.
2. Select the sphere.
3. In the **Entity Inspector**, open the **Script** section.
4. On **Script File**, browse to `scripts/tutorials/kick_ball.lua.
5. **File -> Save World** (`Ctrl+S`).

From here on, edit only `scripts/tutorials/kick_ball.lua`.

## 2. Rename the script table

1. Open `scripts/tutorials/kick_ball.lua` in a text editor.
2. Rename the table from `PushImpulseInteractable` to `KickBall` everywhere in the file (local table, every `function KickBall`, and `return KickBall`). Change the `[PushImpulseInteractable]` text in **print_error** lines too if you want logs to match.
3. Select the sphere. In the **Entity Inspector**, open the **Script** section. Set **interact_label** to `Kick` (default is `Push` from the script).
4. **File -> Save World** (`Ctrl+S`).

## 3. Add a short hop

In `scripts/tutorials/kick_ball.lua`, find the block that flattens look direction to the ground:

```lua
    -- Skip pitch so looking up/down does not lift the body.
    forward = vec3(forward.x, 0.0, forward.z)
    local length = vec3_length(forward)
    if length < 0.0001 then
        return
    end

    -- Normalize forward dir.
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

    -- Normalize forward dir.
    forward = vec3_mul(forward, 1.0 / length)
```

Save the `.lua` file.

## 4. Reload and play again

Scripts do not pick up disk edits by themselves while the world is loaded.

1. Select the sphere.
2. In the **Entity Inspector**, open the **Script** section and click **Reload** on the **Script File** field (or **Debug -> Reload Assets**, `Shift+R`, to reload scripts among other assets).
3. Play, look at the ball, press Interact.

You should get a hop instead of a flat shove. 

> **Note:** Automatic script change detection is planned as an optional feature later.

## 5. Optional: expose kick lift as a parameter

Hardcoding `0.5` works. If you want to tune the hop from the inspector like **impulse_strength**, expose it.

1. Near the other `--@PARAMETER` lines at the top of `scripts/tutorials/kick_ball.lua`, add:

```lua
--@PARAMETER kick_up FLOAT 0.5 "Upward impulse bias."
```

2. In the hop block, use that value instead of the literal:

```lua
    forward = vec3(forward.x, kick_up, forward.z)
```

3. Save the file, **Reload** the script, then dial **kick_up** in **Entity Inspector -> Script** and play again.

That is how script parameters are declared: a `--@PARAMETER` line, then use the name in the script. Keep this optional if you are happy with a fixed hop.

## 6. Make it bounce

The hop from the script only adds lift on Interact. Bounce when the ball hits the ground comes from the PhysicsBody.

1. Select the sphere.
2. In the **Entity Inspector**, open **Physics Body**.
3. Set **Restitution** to about `0.7` (try `0.5` to `0.8` until it feels right).
4. Play, kick the ball, and watch it bounce a few times before settling.

Restitution is how much energy comes back on impact. `0` is dead. Near `1` is very springy. Optional: lower **Rolling Friction** a little if the ball stops spinning too fast.

## 7. Optional: bake Dynamic + script into the prefab

If you want every new sphere instance to come in ready to kick:

1. Confirm Mesh (plain white material), PhysicsBody (**Dynamic**, with your restitution), Transform (**Enable Interpolation**), and Script look right.
2. Prefab -> **Save As** -> overwrite or update `entities/primitive/sphere.entity` (or save a tutorial-specific prefab under `entities/tutorials/`).

Otherwise leave these changes on this world instance only. The shipped primitive can stay Static if you prefer.

## Continue reading

**Previous:** [Kick the ball](kick_the_ball.md): Dynamic body, Interact, and script parameters.

You have finished the guided tutorial path. Continue with the [Audio manual](/manuals/audio.md), or use the sidebar for Getting started and reference.
