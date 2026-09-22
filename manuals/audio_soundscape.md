# Soundscape

Think of a soundscape as background air for the world (wind, hum, distant traffic, rain, birds etc). You usually set a default in World Settings, then override it in special areas with Soundscape Zone entities.

World Settings holds the default bed and the Default Sound Zone:

## Setup

1. Set a **World Soundscape** in World Settings for the default bed.
2. Add Soundscape Zone entities where a different profile should win and set priorities.
3. Add loop and one-shot layers on each profile.

## Loop layers

| Widget | Purpose |
|--------|---------|
| File | Continuous loop. |
| **Gain** | Linear loudness, 0 to 1. |
| **Pitch** | Playback rate. |
| **Affected By Zones** | Let Sound Zones process this loop. Default on. |

Loop pitch is an editor / JSON field. Lua profile tables do not round-trip it.

## One-shot layers

| Widget | Purpose |
|--------|---------|
| Files | List of files. One is picked at random each shot. |
| **Interval Min** / **Interval Max** | Seconds between shots. |
| **Gain** range | Linear loudness range per shot. |
| **Pitch** range | Pitch range per shot. |
| **Spatial Scatter** | Place the shot in 3D around the listener. |
| **Scatter Radius** | How far shots can spawn. |
| **Inner Radius** / **Outer Radius** | Attenuation when spatial. |
| **Affected By Zones** | Let Sound Zones process this one-shot layer. Default on. |

## Soundscape zones

| Widget | Purpose |
|--------|---------|
| Profile | Layers used while the listener is inside this zone. |
| **Priority** | Higher wins when zones overlap. |
| **Fade Duration** | Crossfade when the active profile changes (seconds). |

## World soundscape

| Widget | Purpose |
|--------|---------|
| **World Soundscape** | Default profile when no Soundscape Zone applies. |

World soundscape fade duration has no Lua setter. Entity Soundscape Zones use `soundscape_zone_set_fade_duration`.

## Sound Zones

Soundscapes use the Ambient category. With **Affected By Zones** on, they take the listener entity zone.

## Script API reference

- [Soundscape zone](/reference/soundscape_zone.md)
- [World soundscape](/reference/world_soundscape.md)

## Continue reading

**Previous:** [Sound component](audio_sound_component.md): one-shot SFX on entities.

**Next:** [Sound zone](audio_sound_zone.md): muffling and reverb while the listener is inside a box.
