# Input

Script API functions in the `input` group.

### `input_get_action_binding_string`

`input_get_action_binding_string(t_binding)`

```lua
---@param t_binding string
---@return string
function input_get_action_binding_string(t_binding) end
```

### `input_get_action_gamepad_binding_string`

`input_get_action_gamepad_binding_string(t_binding)`

```lua
---@param t_binding string
---@return string
function input_get_action_gamepad_binding_string(t_binding) end
```

### `input_get_action_pressed_event`

`input_get_action_pressed_event(t_string_1)`

```lua
---@param t_string_1 string
---@return boolean
function input_get_action_pressed_event(t_string_1) end
```

### `input_get_action_prompt_binding_string`

`input_get_action_prompt_binding_string(t_binding)`

```lua
---@param t_binding string
---@return string
function input_get_action_prompt_binding_string(t_binding) end
```

### `input_get_action_prompt_display_string`

`input_get_action_prompt_display_string(t_display)`

```lua
---@param t_display string
---@return string
function input_get_action_prompt_display_string(t_display) end
```

### `input_get_action_released_event`

`input_get_action_released_event(t_string_1)`

```lua
---@param t_string_1 string
---@return boolean
function input_get_action_released_event(t_string_1) end
```

### `input_get_action_strength`

`input_get_action_strength(t_string_1)`

```lua
---@param t_string_1 string
---@return number
function input_get_action_strength(t_string_1) end
```

### `input_get_binding_display_string`

`input_get_binding_display_string(t_display)`

```lua
---@param t_display string
---@return string
function input_get_binding_display_string(t_display) end
```

### `input_get_gamepad_axis`

`input_get_gamepad_axis(t_string_1)`

```lua
---@param t_string_1 string
---@return number
function input_get_gamepad_axis(t_string_1) end
```

### `input_get_gamepad_rebind_allowed`

`input_get_gamepad_rebind_allowed()`

```lua
---@return boolean
function input_get_gamepad_rebind_allowed() end
```

### `input_get_has_gamepad_connected`

`input_get_has_gamepad_connected()`

```lua
---@return boolean
function input_get_has_gamepad_connected() end
```

### `input_get_is_action_pressed`

`input_get_is_action_pressed(t_string_1)`

```lua
---@param t_string_1 string
---@return boolean
function input_get_is_action_pressed(t_string_1) end
```

### `input_get_is_last_input_device_gamepad`

`input_get_is_last_input_device_gamepad()`

```lua
---@return boolean
function input_get_is_last_input_device_gamepad() end
```

### `input_get_is_last_input_device_mouse`

`input_get_is_last_input_device_mouse()`

```lua
---@return boolean
function input_get_is_last_input_device_mouse() end
```

### `input_get_is_mouse_action_pressed`

`input_get_is_mouse_action_pressed(t_string_1)`

```lua
---@param t_string_1 string
---@return boolean
function input_get_is_mouse_action_pressed(t_string_1) end
```

### `input_get_just_pressed_key_name`

`input_get_just_pressed_key_name()`

```lua
---@return string
function input_get_just_pressed_key_name() end
```

### `input_get_mouse_action_pressed_event`

`input_get_mouse_action_pressed_event(t_string_1)`

```lua
---@param t_string_1 string
---@return boolean
function input_get_mouse_action_pressed_event(t_string_1) end
```

### `input_get_mouse_action_released_event`

`input_get_mouse_action_released_event(t_string_1)`

```lua
---@param t_string_1 string
---@return boolean
function input_get_mouse_action_released_event(t_string_1) end
```

### `input_get_mouse_capture`

`input_get_mouse_capture()`

```lua
---@return boolean
function input_get_mouse_capture() end
```

### `input_get_mouse_delta`

`input_get_mouse_delta()`

```lua
---@return vec2
function input_get_mouse_delta() end
```

### `input_get_mouse_position`

`input_get_mouse_position()`

```lua
---@return vec2
function input_get_mouse_position() end
```

### `input_get_mouse_wheel_down`

`input_get_mouse_wheel_down()`

```lua
---@return boolean
function input_get_mouse_wheel_down() end
```

### `input_get_mouse_wheel_up`

`input_get_mouse_wheel_up()`

```lua
---@return boolean
function input_get_mouse_wheel_up() end
```

### `input_set_action_binding_string`

`input_set_action_binding_string(t_string_1, t_string_2)`

```lua
---@param t_string_1 string
---@param t_string_2 string
function input_set_action_binding_string(t_string_1, t_string_2) end
```

### `input_set_gamepad_rebind_allowed`

`input_set_gamepad_rebind_allowed(t_boolean_1)`

```lua
---@param t_boolean_1 boolean
function input_set_gamepad_rebind_allowed(t_boolean_1) end
```

### `input_set_mouse_capture`

`input_set_mouse_capture(t_boolean_1)`

```lua
---@param t_boolean_1 boolean
function input_set_mouse_capture(t_boolean_1) end
```
