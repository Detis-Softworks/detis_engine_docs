# Sound component

Play sounds from an entity. Use this for actions, effects, and anything tied to an object's position.

## Basic setup

1. Select an entity.
2. Add a Sound component.
3. Assign one or more audio files.
4. Set **Category** (Game, GUI, Ambient, Voice).
5. Play with `sound_play(entity_id)` from a script, or enable **Play On Start**.

## Properties

| Widget | Purpose |
|--------|---------|
| **Files** | Audio files on this component (`.wav`, `.ogg`). |
| **Play Mode** | How to pick a file when more than one is assigned. **Random**, **Forward**, or **Backward**. Default is Random. Disabled until two files are assigned. |
| **Category** | Game, GUI, Ambient, or Voice. |
| **Play On Start** | Play when the entity activates. |
| **Looping** | Repeat until stopped. |
| **Gain** | Linear loudness, 0 to 1. Not dB. |
| **Pitch** | Playback rate (0.5 is half speed, 2.0 is double). |

Lua: `sound_play(entity_id)` or `sound_play(entity_id, fade_seconds)`. Fade is optional and defaults to 0.

## Spatial audio

| Widget | Purpose |
|--------|---------|
| **Spatial** | 3D positioning from the entity transform. Needs a Transform. |
| **Attenuation Inner** | Radius where volume stays full. |
| **Attenuation Outer** | Distance where the sound fades out. |
| **Full Spatialization At** | Distance where panning reaches full 3D. |
| **Pan** | Left/right when **Spatial** is off. Disabled when Spatial is on. |

## Air absorption

High-frequency loss over distance. Only applies when **Spatial** is on.

| Widget | Purpose |
|--------|---------|
| **Air Absorption** | Turn distance filtering on. |
| **Filter Type** | **Low Pass** or **High Pass**. |
| **Outer Cutoff** | Filter frequency at the outer radius. |
| **Absorption Inner** | Distance where filtering starts. |
| **Absorption Outer** | Distance where filtering is full. |

## Variation

| Widget | Purpose |
|--------|---------|
| **Randomize Gain** | Vary loudness on each play. |
| **Gain Min** / **Gain Max** | Linear multipliers around **Gain**. |
| **Randomize Pitch** | Vary pitch on each play. |
| **Pitch Min** / **Pitch Max** | Multipliers around **Pitch**. |

## Sound zones

| Widget | Purpose |
|--------|---------|
| **Affected By Zones** | Let the active listener Sound Zone change dry LPF, gain, and reverb send. Default on. |

GUI category cannot opt in. The checkbox is disabled. With the gate off, the source stays dry: no zone gain, no reverb send. It does **not** fall back to the world Default Sound Zone.

## See also

- [Sound zone guide](audio_sound_zone.md)
- [Soundscape guide](audio_soundscape.md)
- [Music guide](audio_music.md)
- [Sound API reference](../reference/sound.md)
