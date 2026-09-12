# Audio

Play sounds on entities, layer ambient beds, shape them with Sound Zones, and stream one music track.

## Pages

- [Sound component](audio_sound_component.md) — Playback on an entity.
- [Soundscape](audio_soundscape.md) — Loops and scattered one-shots.
- [Sound zone](audio_sound_zone.md) — Listener-based gain, low-pass, and reverb send.
- [Music](audio_music.md) — One global music stream.

## Categories

Four volume groups. Music is not a category.

| Category | Integer | Engine Settings slider | Use |
|----------|---------|------------------------|-----|
| **Game** | 0 | **SFX Volume** | Footsteps, impacts, interactions. |
| **GUI** | 1 | **UI Volume** | Menus and HUD. Cannot join Sound Zones. |
| **Ambient** | 2 | **Ambient Volume** | Soundscapes and environment beds. |
| **Voice** | 3 | **Voice Volume** | Dialogue. |

Sliders show dB and store linear gain. Game pause stops Game, Ambient, and Voice. GUI keeps playing. Pause music yourself with the music API if a pause menu should silence it.

## Signal flow

![Audio signal flow](../images/audio_signal_flow.svg)

Sounds and soundscapes go: source → category volume → optional Sound Zone (dry low-pass, gain, reverb send) → **Master Volume**.

Music goes: stream → **Music Volume** → the same **Master Volume**.

Music never uses a category or a Sound Zone.

## API reference

- [Sound](../reference/sound.md)
- [Music](../reference/music.md)
- [Sound zone](../reference/sound_zone.md)
- [Soundscape zone](../reference/soundscape_zone.md)
- [World soundscape](../reference/world_soundscape.md)
- [World soundzone](../reference/world_soundzone.md)
