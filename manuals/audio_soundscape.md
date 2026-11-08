# Soundscape

Think of a soundscape as background air for the world (wind, hum, distant traffic, rain, birds etc). You usually set a default in World Settings, then override it in special areas with Soundscape Zone entities.

World Settings holds the default bed and the Default Sound Zone:

## Setup

1. **View -> World Settings** (`Shift+3`) -> **Sound** -> **Default Soundscape**. Set **Fade Duration**, then add **Ambient Loops** and **One-Shot Emitters** on the default profile.
2. Add entities with a **Soundscape Zone** component where a different profile should win. Set **Priority** and **Fade Duration** on the zone.
3. Edit the zone **Profile** with the same loop and one-shot sections.

## Ambient Loops

| Widget | Purpose |
|--------|---------|
| File | Continuous loop. |
| **Gain** | Linear loudness, 0 to 1. |
| **Pitch** | Playback rate. |
| **Affected By Zones** | Let Sound Zones process this loop. Default on. |

Loop pitch is an editor / JSON field. Lua profile tables do not round-trip it.

## One-Shot Emitters

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

## Default Soundscape (world)

| Widget | Purpose |
|--------|---------|
| **Fade Duration** | Crossfade when switching to or from the world default profile (seconds). |
| Profile rows | **Ambient Loops** and **One-Shot Emitters** when no **Soundscape Zone** wins. |

## Sound Zones

Soundscapes use the Ambient category. With **Affected By Zones** on, they take the listener entity zone.

## Script API reference

- [Soundscape zone](/reference/soundscape_zone.md)
- [World soundscape](/reference/world_soundscape.md)

## Continue reading

**Previous:** [Sound component](audio_sound_component.md): one-shot SFX on entities.

**Next:** [Sound zone](audio_sound_zone.md): muffling and reverb while the listener is inside a box.
