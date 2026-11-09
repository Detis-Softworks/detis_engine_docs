# Music

Detis uses one global music stream. It is meant for soundtracks, menus, and stingers that follow **game flow**, not for props in the world.

## Basic setup

Music is tied to **what the game is doing** (enter a level, start combat, open a pause menu). There is no Music component on entities. Detis expects you to start and change tracks from **Lua** when those moments happen.

Call **`music_play(path)`** from a world script, module, or entity script. Use **`music_stop`**, **`music_set_paused`**, and **`music_set_volume`** the same way when state changes.

## Mix path

Music loudness -> **Music** slider -> **Master** slider -> speakers.

**Master** (**Edit -> Engine Settings**) applies after the per-bus sliders. **`music_set_volume`** sets the **Music** slider and saves audio settings. **`music_get_volume`** reads that slider. **`music_get_playback_volume`** is the live output level (includes fades).

## Scripting

| Function | Purpose |
|----------|---------|
| **`music_play(file_path)`** | Start the track. Loops. |
| **`music_play(file_path, looping)`** | Start with an explicit loop flag. |
| **`music_play(file_path, looping, fade_duration)`** | Start with fade-in (seconds). |
| **`music_set_volume(volume)`** | Set music loudness (linear). Saved in the settings config.|
| **`music_set_paused(paused)`** | Pause or resume. |
| **`music_set_time(seconds)`** | Seek. |
| **`music_stop()`** | Stop immediately. |
| **`music_stop(fade_duration)`** | Fade out, then stop. |
| **`music_get_is_playing()`** | Whether a track is loaded and playing. |
| **`music_get_is_paused()`** | Pause state. |
| **`music_get_duration()`** | Length in seconds. |
| **`music_get_volume()`** | Current **Music** slider value (linear). |
| **`music_get_playback_volume()`** | Live playback loudness (linear). |
| **`music_get_file_path()`** | Path of the loaded track, or empty. |
| **`music_fade_in(fade_duration)`** | Fade the current track up (seconds). |
| **`music_get_fade_state()`** | Fade state string (`none`, `in`, `out`, `crossfade`). |
| **`music_get_mix_multiplier()`** / **`music_set_mix_multiplier(multiplier)`** | Runtime mix scale on the music bus. |

## Notes

- Only one music track plays at a time.
- Pause for Game / Ambient / Voice does not stop music. Pause music yourself if a pause menu should silence it.

## Script API reference

- [Music](/reference/music.md)

## Continue reading

**Previous:** [Sound zone](audio_sound_zone.md): listener gain, low-pass, and reverb send.
