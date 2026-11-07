# Installation

Detis does not use a launcher or a multi-project workspace. One unzipped package is one project. There is no account wall to start building.

Download the Windows or Linux zip that matches your machine from [Detis Softworks](https://detissoftworks.com/). The shipped tree also includes `engine/installation.txt` with the same install and update notes.

## Unzip and layout

Unzip the download into a folder you own. Keep **`bin`**, **`engine`**, and **`content`** next to each other in that folder. Do not split them across drives or rename the layout. Paths resolve from the executable in **`bin/`**.

## Windows

1. Open **`bin/`** at your project root.
2. Double-click **`detis_engine.exe`**.

**`detis_engine.exe`** includes the editor. **`detis_engine_no_editor.exe`** is the same runtime without the editor (for shipped games).

If Windows shows **Windows protected your PC** or SmartScreen says the app is from an unknown publisher, that is expected while builds are not digitally signed yet.

1. Click **More info**.
2. Click **Run anyway**.

## Linux

Use the **Linux** zip, not the Windows build. Supported targets are **64-bit** distributions with **OpenGL 4.5+** and current graphics drivers. Performance and compatibility vary by GPU and driver stack.

1. Open a terminal at your project root.
2. Run:

```bash
chmod +x bin/detis_engine && ./bin/detis_engine
```

**`detis_engine`** includes the editor. **`detis_engine_no_editor`** is the runtime-only build (for shipped games).

## Editor and game

You normally run one executable: **`detis_engine`** (or **`detis_engine.exe`** on Windows).

By default it starts in **editor** mode. Enter **game** with the **Play** button on the viewport toolbar, **Debug -> Play Game**, or `Ctrl+P` / `Alt+P`. The same shortcut returns you to the editor.

Starting in game mode on launch is a packaging choice (`detis_engine_no_editor` or a custom default). 

## Updating the engine

When a new engine zip ships:

**Merge `bin/` and `engine/`** from the new package.

If you changed files under `content/*/demo_content/` for your own project (scripts, config, your art), **do not** overwrite your tree blindly with the zip. Merge in only the new `content/` files you still want. The `demo_content` directory will likely become an optional download in the future. 

## Another game, another copy

Want a second game? Make a copy of the engine package. It's as simple as that. Each copy is its own project root.

Do not put several unrelated games inside one copy.

## Continue reading

**Previous:** [FAQ](faq.md): scope and quick answers.

**Next:** [Quick start](quick_start.md): load a demo, play, then edit something.
