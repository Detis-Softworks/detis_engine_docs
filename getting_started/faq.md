# FAQ

Quick answers about Detis Engine scope.

## What is Detis Engine?

Detis is a lightweight, focused 3D C++ engine for single-player PC games built around hand-authored, level-based worlds.

## Why choose Detis over a general-purpose engine?

Detis is built for solo developers and small teams who want fast iteration and reliable workflows without general-purpose engine bloat.

General-purpose engines are designed to cover many platforms, genres, and workflows. That flexibility often adds heavier pipelines, longer iteration loops, and more setup overhead.

Detis keeps the workflow direct: integrated editor, Lua gameplay scripting, raw-asset pipeline, and plain-text project files.

## Does it include an editor?

Yes. The editor is part of the game executable and can be disabled in release builds.

## What language is used?

Gameplay logic is Lua. Engine core is C++.

## Which input devices are supported?

Keyboard, mouse, and standard gamepads.

## Is Detis AI-friendly?

Yes. Most project files, scripts, and configs are plain text, so AI tools can inspect existing code and generate changes directly in the project.

## Which platforms are supported?

Windows and Linux desktop.

## Does it support mobile devices?

No. Mobile is not in scope.

## What is the asset pipeline?

Detis uses a zero-import pipeline. It reads raw `.glb` / `.gltf` assets and DDS/KTX textures directly, with hot reload for fast iteration.

## Does it support big seamless open worlds?

Not as a built-in seamless streaming model. Larger games are built by linking smaller worlds.

## Does it support multiplayer?

No. Detis targets single-player PC games.

## Does it include GI?

Not as a dedicated built-in system in alpha. Current lighting is based on artist-controlled bounce.

## Which physics engine is used?

Jolt Physics.

## Is it open source?

No. Detis is proprietary.

## Is it free?

Detis uses a one-time purchase model with no subscription and no royalties.

## Can bundled assets be used commercially?

Yes. Assets in the engine content folders can be used in projects built with Detis.

## Where can I find detailed docs?

Start with [Introduction](introduction.md), then continue to [Installation](installation.md) and [Quick start](quick_start.md).

## Next

[Installation](installation.md).
