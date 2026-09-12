# Sound guide

Practical mix notes for Detis audio.

## System guides

- [Audio overview](audio.md)
- [Sound component](audio_sound_component.md)
- [Soundscape](audio_soundscape.md)
- [Sound zone](audio_sound_zone.md)
- [Music](audio_music.md)

## Routing

1. Source: Sound component, soundscape, or music stream.
2. Sound / soundscape: source gain × randomization × category volume × optional zone gain, then master.
3. Music: **Music Volume**, then the same master. No category. No Sound Zone.
4. Master is Engine Settings **Master Volume** (`ma_engine`). Then speakers.

Category volumes in Engine Settings: **SFX Volume** (Game), **UI Volume** (GUI), **Ambient Volume**, **Voice Volume**. Sliders are dB. Stored gain is linear.

## Category usage

| Category | Use |
|----------|-----|
| Game | Gameplay events and interactions |
| GUI | Menu and HUD feedback. Cannot join Sound Zones. |
| Ambient | Environment and soundscapes |
| Voice | Dialogue |

Music is its own stream. Do not treat it as a fifth category.

## Pause behavior

When game pause is on:

| Audio | Behavior |
|-------|----------|
| Sound component in Game / Ambient / Voice | Paused |
| Sound component in GUI | Continues |
| Soundscape loops and one-shots | Paused |
| Music stream | Continues until you pause it |

## Fast tuning ranges

| Control | Typical range |
|---------|---------------|
| Gain randomization | 0.8 to 1.2 around **Gain** |
| Pitch randomization | 0.85 to 1.15 around **Pitch** |
| **Attenuation Outer** | 20 to 50 m |
| Zone **Low Pass Cutoff** | 2000 to 8000 Hz |
| Zone reverb **Level** | 0.2 to 0.6 |
| Zone **Gain** | 0.5 to 1.5 (linear, 0 to 4 allowed) |

## Authoring checklist

1. Assign **Category** first.
2. Set **Gain** and **Pitch** (linear).
3. Enable **Spatial** and attenuation for world sounds.
4. Leave **Affected By Zones** on unless the source must stay dry.
5. Add randomization for repeated one-shots.
6. Check pause: GUI and music keep playing.

## Reload notes

- Sound and soundscape assets reload with Shift+R.
- Restart music playback after swapping the file.

## See also

- [Sound](../reference/sound.md)
- [Music](../reference/music.md)
- [Sound zone](../reference/sound_zone.md)
- [Soundscape zone](../reference/soundscape_zone.md)
- [World soundscape](../reference/world_soundscape.md)
- [World soundzone](../reference/world_soundzone.md)
