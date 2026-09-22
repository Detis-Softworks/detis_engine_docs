# Audio

Play sounds from entities, layer ambient soundscapes, shape them with Sound Zones, and stream music.

## In this section

- [Sound component](audio_sound_component.md): playback on an entity.
- [Soundscape](audio_soundscape.md): loops and scattered one-shots.
- [Sound zone](audio_sound_zone.md): listener-based gain, low-pass, and reverb send.
- [Music](audio_music.md): one global music stream.

## Categories (Busses)

Every in-game sound (except music which uses its own buss) uses one category. You pick it on the Sound component in the editor.

| Category | Engine Settings slider | Use |
|----------|------------------------|-----|
| **Game** | **SFX Volume** | Footsteps, impacts, interactions. |
| **GUI** | **UI Volume** | Menus and HUD. Cannot join Sound Zones. |
| **Ambient** | **Ambient Volume** | Soundscapes and environment beds. |
| **Voice** | **Voice Volume** | Dialogue. |

Think of a category as **which group owns this sound**. Assign footsteps to **Game** and they ride **SFX Volume** with every other Game sound. Turn that slider down and the whole group goes down together. You control those category levels in **File -> Settings**. Inside Sound Zones, the category also picks which **reverb send** row applies (Game vs Ambient vs Voice).

<img src="../images/editor/ed_engine_settings_sound_mixer.png" alt="Engine Settings mixer" style="max-width:600px;height:auto;display:block">

## Pause behavior

When the player pauses the game, the **same category groups** decide what pauses with the world and what keeps playing.

- **Game**, **Ambient**, and **Voice** pause. They resume when the game unpauses.
- **GUI** does not pause with the game.
- **Music** does not pause with the game. Use the music API if a pause menu should silence the track.

## Signal flow

<img src="../images/audio_signal_flow.svg" alt="Audio signal flow" style="max-width:600px;height:auto;display:block">


## Script API reference

- [Sound](../reference/sound.md)
- [Music](../reference/music.md)
- [Sound zone](../reference/sound_zone.md)
- [Soundscape zone](../reference/soundscape_zone.md)
- [World soundscape](../reference/world_soundscape.md)
- [World soundzone](../reference/world_soundzone.md)

## Continue reading

**Next:** [Sound component](audio_sound_component.md): add a Sound component and play from Lua.
