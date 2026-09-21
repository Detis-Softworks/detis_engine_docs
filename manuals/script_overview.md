# Script overview

This page explains the big picture. Where scripts live, what shape a file has, etc. Gameplay is **Lua**. You attach **`.lua`** files to an entity, the current **world**, or the whole game. The engine calls named functions on your script when things happen. You call **`entity_*`**, **`input_*`**, **`gui_*`**, and other globals to read and change the world.

## Shipped sample code

Everything under **`content/scripts/`** in the package is **sample and demo code**. You do not have to copy it. It shows one way to wire things. Your game can use different file names, layout, and helpers. Feel free to use, copy, modify, or delete it. It is up to you.

Templates under **`content/scripts/_templates/`** are optional starters. Copy and rename them if you want a head start.

---

## Three script types

| Type | Attached to | What it is for |
|------|-------------|----------------|
| **Entity script** | Entity as a ScriptComponent | Defines the behavior for **that entity**. Every placed copy of the same prefab runs the same script file on its own instance. |
| **World script** | Active World | Logic that belongs to **this `.world` only**. Holds rules that do not belong on a single prefab. |
| **Module script** | Whole game | Logic for the **whole game**. Loaded at startup and **kept** when the player loads another world. |

Shared **`.lua`** files loaded with **`dofile`** are **not** a fourth type. They have no lifecycle. Other scripts pull in functions from them.

---

## Basic script shape

Every gameplay script is a **Lua table** with functions on it. The file **returns** that table. The table name must match what you **`return`**.

```lua
local MyDoor = {}

function MyDoor.on_ready()
end

return MyDoor
```

Attach the **`.lua`** file path on the entity, world, or in **`modules.ini`**. The engine looks up functions by name (**`on_ready`**, **`on_process`**, and so on).

---

## Built-in globals

Entity scripts receive **`entity_id`** for the owning entity. Other globals depend on script type. Automatically generated stubs list what exists:

- **`engine/stubs/engine_stubs.lua`**: engine API (**`entity_*`**, **`gui_*`**, …)
- **`content/stubs/game_stubs.lua`**: script globals and **`@PARAMETER`** names

Use stubs for IDE autocomplete. Do not edit them.

---

## Hot reload

While the engine is running you can reload a script after editing the **`.lua`** file. Use **`Shift` + `R`** (**Debug -> Reload Assets**)

---

## Next

**[Where logic lives](script_placement.md)**: choose entity, world, module, or shared helper.
