# Audio

Play sounds from entities, layer ambient soundscapes, shape them with Sound Zones, and stream music.

## In this section

- [Sound component](audio_sound_component.md) — Playback on an entity.
- [Soundscape](audio_soundscape.md) — Loops and scattered one-shots.
- [Sound zone](audio_sound_zone.md) — Listener-based gain, low-pass, and reverb send.
- [Music](audio_music.md) — One global music stream.
- [Sound design handbook](sound_guide.md) — Categories, pause, and mix notes.

## Categories

`SoundCategory` is four integers. Music is **not** a category.

| Category | Integer | Engine Settings slider | Use |
|----------|---------|------------------------|-----|
| **Game** | 0 | **SFX Volume** | Footsteps, impacts, interactions. |
| **GUI** | 1 | **UI Volume** | Menus and HUD. Cannot join Sound Zones. |
| **Ambient** | 2 | **Ambient Volume** | Soundscapes and environment beds. |
| **Voice** | 3 | **Voice Volume** | Dialogue. |

Each slider is shown in dB and stored as linear gain on sources. Pause stops Game, Ambient, and Voice. GUI keeps playing.

These are volume / pause / reverb-send groups. They are not separate miniaudio mix buses.

## Signal flow

![Audio signal flow](../images/audio_signal_flow.svg)

Left lane: Sound component or soundscape → category volume → optional Sound Zone (dry LPF, gain, reverb send) → **Master volume**.

Right lane: Music stream → **Music Volume** → the same **Master volume**.

Master is `ma_engine` output (Engine Settings **Master Volume**). Speakers come after master. Music is not multiplied by master a second time on the stream. Music never uses a category or a Sound Zone.

## API reference

- [Sound](../reference/sound.md)
- [Music](../reference/music.md)
- [Sound zone](../reference/sound_zone.md)
- [Soundscape zone](../reference/soundscape_zone.md)
- [World soundscape](../reference/world_soundscape.md)
- [World soundzone](../reference/world_soundzone.md)
