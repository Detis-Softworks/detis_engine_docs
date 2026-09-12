# Sound zone

A box that changes how opted-in sounds are heard while the **listener** is inside it. Use zones for indoor reverb, muffling, or outdoor-to-indoor contrast.

## Setup

1. Create an entity with a Sound Zone component. The transform scale is the box.
2. Set **Internal Settings** (listener and source both inside, or any non-spatial source).
3. Set **External Settings** for spatial sources that sit outside the box while the listener is inside.
4. Optionally tune **Default Sound Zone** in World Settings for when no entity zone applies.

## Zone volume

| Widget | Purpose |
|--------|---------|
| Transform **Scale** | X / Y / Z size of the box. |
| **Debug Visualization** | Draw the box in the viewport. Not serialized with the world. |
| **Priority** | Higher wins when listener zones overlap. Can be negative. Ties use the lower entity id. |
| **Fade Duration** | Crossfade when the active listener zone changes (seconds). |

## Which profile applies

Routing only runs when **Affected By Zones** is on (Sound component or soundscape layer). GUI Sound components cannot opt in.

| Case | Result |
|------|--------|
| Gate off | Dry. No zone gain, no reverb send. Not the world default. |
| No entity zone | World **Default Sound Zone**. |
| Listener inside an entity zone, non-spatial / soundscape | **Internal**. |
| Listener inside, spatial source inside the box | **Internal**. |
| Listener inside, spatial source outside the box | **External**. |

World Default Sound Zone has no External profile.

## Emitter processing

Each profile has these emitter controls. Values are linear, not dB.

| Widget | Purpose | Range |
|--------|---------|-------|
| **Gain** | Multiplier on the source. | 0 to 4 |
| **Low Pass Cutoff** | Dry low-pass. | 20 to 20000 Hz |

Underwater-style muffling is a low **Low Pass Cutoff** plus **Gain** below 1 (for example 0.5), not a dB field.

## Reverb

One shared reverb on the mix. **Character** (room size, damping, width, predelay, feed filters) follows the listener **Internal** profile, or the world Default Sound Zone.

Per-source **send** is `reverb_level × category_send`.

| Widget | Purpose |
|--------|---------|
| **Level** | How much this source sends into the shared verb (0 to 1). |
| **Room Size** | Verb space. Drives the wet bus only on Internal / world. |
| **Damping** | How quickly highs die in the tail. Internal / world character. |
| **Width** | Stereo spread of the verb. Internal / world character. |
| **Predelay** | Delay before the tail, in ms. Internal / world character. |
| **Low Pass Feed** / **High Pass Feed** | Filters on the verb input. Internal / world character. |
| **Game** / **Ambient** / **Voice** send | Category send multipliers. |

External **Room Size**, **Damping**, **Width**, **Predelay**, and feed filters still appear in the inspector. They do **not** drive the shared wet bus. External still uses **Gain**, **Low Pass Cutoff**, **Level**, and the category sends.

There is no Lua API for category send.

## World Default Sound Zone

World Settings → **Default Sound Zone**. Used when the listener is outside every entity zone. Same Internal-style params (gain, LPF, verb character, Game / Ambient / Voice send). No External block.

## Example starting points

**Small indoor room (Internal):**

- **Low Pass Cutoff:** 8000 Hz
- **Level:** 0.5
- **Room Size:** 0.3
- **Damping:** 0.8

**Cave (Internal):**

- **Low Pass Cutoff:** 5000 Hz
- **Level:** 0.8
- **Room Size:** 0.8
- **Damping:** 0.3

**Outside heard from indoors (External):**

- Lower **Gain** (for example 0.5)
- Lower **Low Pass Cutoff**
- Keep **Level** modest. Character still comes from Internal.

## Notes

- Keep footsteps on Game and beds on Ambient. Lower the Game send on the zone if foley should stay drier than the room.
- Overlapping listener zones pick the highest **Priority**, then the lower entity id.

## See also

- [Audio overview](audio.md)
- [Sound component guide](audio_sound_component.md)
- [Soundscape guide](audio_soundscape.md)
- [Sound zone API](../reference/sound_zone.md)
- [World soundzone API](../reference/world_soundzone.md)
