# Music

One global music stream. No spatial position, no Sound Category, no Sound Zone.

## When to use

Soundtracks, menu themes, and any music that should be heard equally from anywhere.

## Basic setup

1. Call `music_play(path)` from a script.
2. Control volume from Engine Settings **Music Volume**, or `music_set_volume`.

`music_play(path, looping)` takes an optional second argument. Looping defaults to **true**. Lua has no music fade arguments.

## Mix path

Music volume → **Master Volume** → speakers.

Master is `ma_engine` output (Engine Settings **Master Volume**). `music_get_volume` / `music_set_volume` are the music slider only. Master is not applied a second time on the stream.

## Controls

| Control | Purpose |
|---------|---------|
| File path | Track to play. |
| Looping | Repeat when the track ends. Default true. |
| Volume | Linear loudness. Engine Settings **Music Volume** is a dB slider stored as linear gain. |
| Paused | Pause or resume. |
| Playback time | Seek in seconds. |
| Stop | Stop playback. |

## Scripting

| Function | Purpose |
|----------|---------|
| `music_play(file_path)` | Start the track. Loops. |
| `music_play(file_path, looping)` | Start with an explicit loop flag. |
| `music_set_volume(volume)` | Set music loudness (linear). |
| `music_set_paused(paused)` | Pause or resume. |
| `music_set_time(seconds)` | Seek. |
| `music_stop()` | Stop. |
| `music_get_is_playing()` | Whether a track is loaded and playing. |
| `music_get_is_paused()` | Pause state. |
| `music_get_duration()` | Length in seconds. |

## Notes

- Only one music track plays at a time.
- Music is not a `SoundCategory`. Do not route it through Game / GUI / Ambient / Voice.
- Pause for Game / Ambient / Voice does not stop music. Pause music yourself if a pause menu should silence it.

## See also

- [Audio overview](audio.md)
- [Sound component guide](audio_sound_component.md)
- [Music API reference](../reference/music.md)
