# Module scripts

A **module script** loads with the game and **stays loaded** while the player moves between different worlds. Use it for game-wide services such as input mode, pause handling, camera effects, save metadata, and anything that should not reset on every world load.

Entity and world scripts are tied to the current world. Modules are not.

## Register a module

Use the editor: **View -> Module Manager** (**`Shift+0`**). Add a module (name, script path, priority), then **Save Changes**. That writes **`content/config/modules.ini`**. **Reload Modules** applies what is on disk after you edit scripts or the INI.

The **short name** in the manager is what Lua uses, not the file name. **`priority`** is the order among modules (lower runs earlier).

You can always edit **`modules.ini`** by hand. The manager and the file stay in sync.

## File shape

Return a table with callbacks, same as entity and world scripts. Modules do **not** get **`entity_id`** and they do **not** use **`--@PARAMETER`** on the module file itself.

Starter layout: **`content/scripts/_templates/module_script_template.lua`**.

## When module callbacks run

Lower **`priority`** runs earlier when the engine walks modules (ready, process, and the other tick passes).

**`on_initialize`:** Runs when the module is first loaded. That is engine start. It runs again only after the module was unloaded (leave **Play**, or quit the engine). 

**`on_ready`:** On each ready pass the order is entity scripts, then the world script, then modules (lower priority first). It runs after a world change once that world's entities and world have finished **`on_ready`**. 

**`on_process` / `on_fixed_process` / `on_late_process` / `on_draw`:** Same names and functionality as other script types. If **`pauseable`** is true (the default), that module's tick callbacks are skipped while the game is paused.

**`on_shutdown`:** For modules it is **not** called on a world change. Called when you leave **Play** and when the engine quits, after the world script and the entity scripts. The module is unloaded. The next **Play** runs **`on_initialize`** again.


## Continue reading

**Previous:** [World scripts](script_world.md): per-world **`.world`** logic.

**Next:** [Communication](script_communication.md): call entity, world, and module functions.
