# Lua editor setup

This page walks through **Visual Studio Code**. Other editors (Neovim, JetBrains, whatever you use) can do the same trick.

## What stubs are

While you type Lua, the editor does not know about your code unless you tell it. **Stub files** are fake declarations the **engine generates** for that purpose. These files list engine functions, types, and globals so autocomplete and hints work. They are **not** functional code and **do not** run in the game.

Stubs are automatically generated. You do not need to edit them by hand. 

| File | What it describes |
|------|-------------------|
| **`engine/stubs/engine_stubs.lua`** | Engine API (**`entity_*`**, **`gui_*`**, **`input_*`**, and the rest) |
| **`content/stubs/game_stubs.lua`** | Things that depend on user scripts (**`entity_id`**, **`--@PARAMETER`** names, and similar) |

## VS Code setup

1. In VS Code, **File -> Open Folder** and choose your **project root** (the folder that contains **`bin`**, **`content`**, and **`engine`**). 
2. Install the **Lua** extension (publisher **LuaLS**).
3. At the project root, create **`.vscode/settings.json`**:

```json
{
  "Lua.workspace.library": [
    "${workspaceFolder}/engine/stubs",
    "${workspaceFolder}/content/stubs"
  ],
  "Lua.workspace.checkThirdParty": false
}
```

4. Open any **`.lua`** file under **`content/scripts/`**. Type **`entity_`** and you should see suggestions.

## Continue reading

**Previous:** [Scripting overview](script_overview.md): three script types.

**Next:** [Entity scripts](script_entity.md): **Script** component and callbacks.
