# World scripts

A **world script** belongs to the current **`.world`** running. Use it for logic that is not owned by a single entity. Wiring a puzzle, starting music when the level loads, and similar.

When the player loads a different **`.world`**, that world's script is torn down and the new world's script runs. It does not carry over.

## Attach a script

1. **View -> World Settings** (**`Shift+3`**).
2. Open the **Script** section.
3. Set **Script File** to your **`.lua`** under **`content/`**.
4. **File -> Save World**.

## File shape

Same idea as an entity script: return a table with callbacks on it. World scripts do **not** get **`entity_id`**. Use **`entity_get_*`** t access specific entities.

Copy **`content/scripts/_templates/world_script_template.lua`** if you want a starter layout.

## World **`on_ready`** order

World **`on_ready`** runs after every entity script's **`on_ready`**. Module **`on_ready`** runs after that. Use world **`on_ready`** to talk to entities that already finished their own setup.

## Continue reading

**Previous:** [Entity scripts](script_entity.md): **Script** component and parameters.

**Next:** [Module scripts](script_module.md): Module Manager and game-wide modules.
