# FAQ

Quick answers about Detis Engine scope and release expectations.

## What is Detis Engine?

Detis is a lightweight, focused 3D C++ engine for single-player PC games with hand-authored, level-based worlds.

## Why choose Detis over a general-purpose engine?

Detis is designed for solo developers and small teams who value iteration speed and reliable workflows over broad feature bloat.

General-purpose engines target many platforms, genres, and workflows. That flexibility often comes with heavier pipelines and more setup overhead.

Detis keeps things direct: integrated editor, Lua scripting, raw-asset workflow, and plain-text project files.

## Does it include an editor?

Yes. The editor is part of the game executable and can be disabled in release builds.

## What language is used?

Gameplay logic is Lua. Engine core is C++.

## Which input devices are supported?

Keyboard, mouse, and standard gamepads.

## Is it AI-friendly?

Yes. Most files are plain text, so AI tools can inspect APIs and existing project files and generate scripts/config safely in-tree.

## Which platforms are supported?

Windows and Linux desktop.

## Does it support mobile devices?

No. Mobile is not in scope.

> Alpha note: mobile support is not part of alpha scope.

## What is the asset pipeline?

Zero-import workflow with raw assets, including `.glb` / `.gltf` and DDS/KTX textures, plus hot reload for fast iteration.

## Does it support big seamless open worlds?

Not as a built-in seamless streaming model. Larger games are built by linking smaller worlds.

> Alpha note: seamless open-world streaming is not part of alpha scope.

## Does it support multiplayer?

No. Detis targets single-player PC games.

> Alpha note: networking is not part of alpha scope.

## Does it include GI?

Not in the initial alpha scope as a dedicated built-in system. Current lighting uses artist-controlled bounce.

> Alpha note: a dedicated GI solution is planned after alpha.

## Which physics engine is used?

Jolt Physics.

## Is it open source?

No. Detis is proprietary.

## Is it free?

Planned model is a one-time purchase with no subscription and no royalties.

## Can bundled assets be used commercially?

Yes. Assets in the engine content folders can be used in projects built with Detis.

## Where can I find detailed docs?

Start with [Introduction](introduction.md), then continue to [Installation](installation.md) and [Quick start](quick_start.md).

## Next

[Installation](installation.md).
