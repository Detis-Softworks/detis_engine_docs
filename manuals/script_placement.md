# Where logic lives

Before you write any code, decide **which script owns the behavior**. 

---

## The four buckets

| Bucket | What it is | Supports Lifecycle |
|--------|------------|------------|
| **Entity script** | One object’s behavior | Yes |
| **World script** | Logic for **this world only** | Yes |
| **Module script** | Logic for the **whole game** across world loads | Yes |
| **Shared helper** | **`.lua`** loaded with **`dofile`** | No |

**Lifecycle** hooks are functions the **engine** calls on your script table (**`on_ready`**, **`on_process`**, and the rest). You define them. You do not call them from your own code the way you call a helper.

Helpers under **`content/scripts/shared/`** (or your own folders) are libraries. They do not get **`on_process`** from the engine. An entity or world script calls into them.

---

## Decision guide

| Question | Put it here |
|----------|-------------|
| Should this run on **one prefab** everywhere it is placed? | **Entity script** (or a shared helper the entity calls) |
| Is it **only for this world** (one puzzle, one sequence, wiring two doors in this **`.world`**)? | **World script** |
| Must it **stay alive when the player loads another world**? | **Module script** |
| Is it **math, UI layout, or reused code** with no engine callbacks? | **Shared helper** |

---

## What not to do

- Do not hide **world-only puzzle rules** inside a “generic” entity script that only makes sense in one **`.world`**. World script owns that wiring.
- Do not grow a **module** with content that only one world cares about. Modules are for game-wide services.
- Do not treat **demo components** in **`content/scripts/components/`** as engine features. They are examples you can copy or ignore.

---

## Where files usually go

You can organize your project however you like. Shipped samples use paths such as:

| Path | Typical use |
|------|-------------|
| **`content/scripts/components/`** | Reusable entity scripts |
| **`content/scripts/worlds/`** | World scripts |
| **`content/scripts/modules/`** | Module scripts listed in **`modules.ini`** |
| **`content/scripts/shared/`** | Helpers (**`dofile`**) |

---

## Next

**[Lifecycle and timesteps](script_lifecycle.md)**: which engine callbacks run when.
