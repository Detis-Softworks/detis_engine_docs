# Detis Engine Documentation

This is the user manual for Detis Engine.

**[Detis Engine Manual](manuals/index.md)** is the hub for editor guides, topic manuals, and the script API. Read the getting-started path in order if you are new. Each of those pages ends with **Continue reading** (**Previous** / **Next**).

## Start here

**[Introduction](getting_started/introduction.md)**: what Detis is, and whether it fits your project.

Then continue through FAQ, Installation, Quick start, Project layout, Sample content, and the first tutorials. For the full editor tour, open [Editor overview](manuals/editor_overview.md) under **Manual → Editor**.

## Full path

### Getting started

1. [Introduction](getting_started/introduction.md)
2. [FAQ](getting_started/faq.md)
3. [Installation](getting_started/installation.md)
4. [Quick start](getting_started/quick_start.md)
5. [Project layout](getting_started/project_layout.md)
6. [Sample content](getting_started/sample_content.md)

### Tutorials

1. [Your first world](tutorials/your_first_world.md)
2. [Your first prefab](tutorials/your_first_prefab.md)
3. [Kick the ball](tutorials/kick_the_ball.md)
4. [Edit a script](tutorials/edit_a_script.md)

### Manual

- [Manual](manuals/index.md)
- [Lighting](manuals/lighting.md)
- [Audio](manuals/audio.md)
- [Art](manuals/art.md)
- [Scripting](manuals/script_overview.md)
- [Script API reference](reference/README.md)

## Preview locally

From this repo folder (where `index.html` lives), start a small web server. Do not open `index.html` as a `file://` link. Docsify needs **http://**.

```bash
npx docsify-cli serve .
```

Open the URL it prints (usually `http://localhost:3000`). Needs internet once to load Docsify from the CDN.

Or: `python -m http.server 8080` then open `http://localhost:8080`.

## Publish on GitHub Pages (free)

This site is static: `index.html`, `_sidebar.md`, and the markdown folders. Use **GitHub Pages**, not the repo Wiki.

1. Push this repo to GitHub (public repos: Pages is free on normal GitHub plans).
2. On GitHub: **Settings → Pages**.
3. **Build and deployment → Source:** Deploy from a branch.
4. **Branch:** `main` (or your default branch), folder **`/ (root)`**.
5. Save. After a minute or two, GitHub shows the site URL, usually `https://<user>.github.io/detis_engine_docs/`.

The repo includes **`.nojekyll`** so GitHub serves `_sidebar.md`. **`relativePath`** in `index.html` keeps links working on that `/repo-name/` URL.

Point the engine at the live manual if you want **Help → Documentation** to open it: set `help.documentation_url` in the editor ini to your Pages URL.

To preview the same layout before publish, use **Preview locally** above.
