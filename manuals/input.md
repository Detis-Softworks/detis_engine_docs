# Input & Settings

Input in Detis is action based and polled from Lua each frame, while engine settings control rendering, display, audio, and physics defaults stored in ini files.

## How Input Works

Actions are defined in ini binding files and checked with `input_*` functions. The editor uses `engine/config/editor_input_bindings.ini`, the game uses its own bindings, and scripts poll in `on_process` or `on_fixed_process`.

There is no key event callback. Poll each frame:

- `input_get_is_action_pressed(action)` for held state
- `input_get_action_pressed_event(action)` for a press this frame
- `input_get_action_released_event(action)` for a release this frame
- `input_get_action_strength(action)` for analog strength
- `input_get_just_pressed_key_name()` for rebinding prompts
- `input_get_action_binding_string(action)` to show the bound key

## Polling Actions in Lua

Poll discrete actions in `on_process` for movement, sprint, jump, and interaction.

```lua
local PlayerInput = {}

function PlayerInput.on_process(dt)
  local fwd = input_get_is_action_pressed("move_forward")
  local back = input_get_is_action_pressed("move_backward")
  local left = input_get_is_action_pressed("move_left")
  local right = input_get_is_action_pressed("move_right")

  if input_get_action_pressed_event("jump") then
    -- start jump
  end
  if input_get_action_pressed_event("sprint_toggle") then
    -- toggle sprint for gamepad
  end

  local binding = input_get_action_binding_string("interact")
  -- show "Press [E] to interact" with binding
  local strength = input_get_action_strength("move_forward")
  local is_gamepad = input_get_is_last_input_device_gamepad()
end

return PlayerInput
```

Build axes from held actions as in `content/scripts/player/player_controller.lua`. Use `on_fixed_process` only when the result drives physics.

## Mouse and Gamepad Input

Mouse state is separate from action bindings. Capture controls whether the cursor is locked for look.

```lua
function PlayerInput.on_process(dt)
  local mouse_pos = input_get_mouse_position()
  local mouse_delta = input_get_mouse_delta()

  if input_get_is_mouse_action_pressed("aim") then
    -- RMB held
  end
  if input_get_mouse_action_pressed_event("select") then
    -- left click this frame
  end
  if input_get_mouse_wheel_up() or input_get_mouse_wheel_down() then
    -- scroll
  end
  input_set_mouse_capture(get_game_mode_active())

  if input_get_has_gamepad_connected() then
    local rx = input_get_gamepad_axis("right_x")
    local ry = input_get_gamepad_axis("right_y")
    -- apply look with rx, ry
  end
end
```

Other mouse calls: `input_get_mouse_capture()`, `input_get_mouse_action_released_event(action)`, `input_get_mouse_wheel_up()`. Gamepad axes are typically `left_x`, `left_y`, `right_x`, `right_y` and triggers, matching your `game_input_bindings.ini`.

## Settings: Reading and Writing

Settings wrap the user ini and expose typed getters and setters. Read in `on_ready`, write on confirm, then save.

```lua
-- read
local gamma = settings_get_gamma()
local vsync = settings_get_vsync_mode()
local master = settings_get_master_volume()
local fog = settings_get_bool("Renderer", "global_frustum_culling_active", true)
local scale = settings_get_float("Renderer", "render_scale", 1.0)

-- write and persist
settings_set_gamma(1.2)
settings_set_master_volume(0.9)
settings_set_bool("Renderer", "global_frustum_culling_active", false)
settings_save()

-- maintenance helpers
-- settings_reset_to_defaults()
-- settings_apply_loaded()
-- local path = settings_get_user_ini_path()
```

Typed pairs: `settings_get_int` / `settings_set_int`, `settings_get_string` / `settings_set_string`, `settings_get_float` / `settings_set_float`. Dedicated helpers include `settings_get_render_scale`, `settings_set_render_scale`, `settings_get_shadow_map_quality`, `settings_get_ssao_quality`, `settings_get_ssr_quality`, `settings_get_anisotropic_filter_level`, `settings_get_resolution`, `settings_set_resolution`, `settings_get_window_mode`, `settings_get_monitor_index`, `settings_get_available_monitors`, and volume helpers like `settings_get_music_volume`.

Settings are stored at the path from `settings_get_user_ini_path()` and `game_get_settings_user_path()`. Defaults ship in `engine/config/default_engine_settings.ini`. See [Engine Settings](../getting_started/engine_settings.md) for the editor UI that edits the same values.

## Default Engine Settings and Collision Layers

`default_engine_settings.ini` sections and keys:

```ini
[Window]
title = MyGame
width = 1280
height = 720
[Display]
vsync_mode = Enabled
window_mode = Windowed
[Renderer]
render_scale = 1.0
anisotropic_filtering = 16x
global_frustum_culling_active = true
local_lights_distance_culling_max_distance = 80.0
shadow_map_quality = 3
ssao_quality = 2
fxaa_active = true
[Audio]
master_volume = 1.0
reverb_quality = 2
[Physics]
sleep_linear_threshold = 0.8
collision_steps = 1
```

`engine/config/collision_layers.ini` names 16 layers: `layer_0=Static`, `layer_1=Kinematic`, `layer_2=Player`, `layer_3=Character`, `layer_4=Dynamic`, `layer_5=Interactive`, `layer_6=Debris`, `layer_7=Trigger`, `layer_8` to `layer_15` reserved. Read with `physics_body_get_collision_layer` and write with `physics_body_set_collision_layer`. Memory budgets are in `engine/config/memory_profiles/none.ini` selected by `[Memory] profile = none`.

## Where Files Live

- `engine/config/default_engine_settings.ini` : shipped defaults for window, display, renderer, audio, physics
- `engine/config/collision_layers.ini` : 16 collision layer names
- `engine/config/memory_profiles/none.ini` : budget profile for arena, heap, and pools
- `engine/config/editor_input_bindings.ini` : editor action bindings
- User settings path : returned by `settings_get_user_ini_path()`, edited via File > Settings

## Next

- [Engine Settings](../getting_started/engine_settings.md) : editor UI for the same settings
- [Script overview](script_overview.md) : lifecycle and where to poll input
- [Input reference](../reference/input.md) : full `input_*` list
- [Settings reference](../reference/settings.md) : full `settings_*` list
