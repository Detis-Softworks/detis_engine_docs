# Music

Detis uses one global music stream. It is meant for soundtracks, menus, and stingers that follow **game flow**, not for props in the world.

## Basic setup

Music is tied to **what the game is doing** (enter a level, start combat, open a pause menu). There is no Music component on entities. Detis expacts you to start and change tracks from **Lua** when those moments happen.

Call **`music_play(path)`** from a world script, module, or entity script. Use **`music_stop`**, **`music_set_paused`**, and **`music_set_volume`** the same way when state changes.

## Mix path

Music volume -> **Master Volume** -> speakers.

**Master volume** (Engine Settings) applies after the music slider. **`music_get_volume`** / **`music_set_volume`** are the music slider only. 

## Scripting

| Function | Purpose |
|----------|---------|
| **`music_play(file_path)`** | Start the track. Loops. |
| **`music_play(file_path, looping)`** | Start with an explicit loop flag. |
| **`music_play(file_path, looping, fade_duration)`** | Start with fade-in (seconds). |
| **`music_set_volume(volume)`** | Set music loudness (linear). |
| **`music_set_paused(paused)`** | Pause or resume. |
| **`music_set_time(seconds)`** | Seek. |
| **`music_stop()`** | Stop immediately. |
| **`music_stop(fade_duration)`** | Fade out, then stop. |
| **`music_get_is_playing()`** | Whether a track is loaded and playing. |
| **`music_get_is_paused()`** | Pause state. |
| **`music_get_duration()`** | Length in seconds. |
| **`music_get_volume()`** | Current music slider value (linear). |

## Notes

- Only one music track plays at a time.
- Pause for Game / Ambient / Voice does not stop music. Pause music yourself if a pause menu should silence it.

## Script API reference

- [Music](/reference/music.md)

## Continue reading

**Previous:** [Sound zone](audio_sound_zone.md): listener gain, low-pass, and reverb send.
