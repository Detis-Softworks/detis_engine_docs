# World sun

One directional light for the whole world. Configure it in World Settings.

## Setup

1. Open World Settings.
2. Enable **Active** under sunlight.
3. Set **Lux** (gameplay default **6**).
4. Set **Azimuth (deg)** and **Elevation (deg)**.
5. Set **Tint** and/or **Temperature (K)**.
6. Optional: enable shadow **Active** and tune bias / blur scales.

## Properties

World Settings sunlight widgets:

| Widget | Purpose | Default |
|--------|---------|---------|
| **Active** | Enable the sun. | on |
| **Lux** | Illuminance. | 6 |
| **Azimuth (deg)** | Compass angle, 0 to 360. | from direction |
| **Elevation (deg)** | Height above the horizon, -15 to 90. | from direction |
| **Tint** | RGB color. | white |
| **Temperature (K)** | Color temperature. | 5500 |
| **Specular Intensity** | Highlight strength. | 1.0 |

There is no sun **Cast Specular** checkbox. Specular is **Specular Intensity**.

The stored direction vector is light travel **into** the scene. Default `(0, -1, 0)` is noon (straight down). Lua `renderer_set_sunlight_direction` uses that vector.

Pair **Lux** 6 with **Ambient Lux** 2 as the gameplay baseline. **Ambient Lux** is the sky fill widget, not "Sky ambient".

Full physical sun (~100,000 lux) is optional and needs a matching exposure range. Do not use outdoor EV 10–16 with sun lux 6.

## Shadows (World Settings)

| Widget | Purpose | Default |
|--------|---------|---------|
| **Active** | Enable sun shadows. | on |
| **Blur Scale** | Edge softness scale. | 1.0 |
| **Bias Scale** | Self-shadow offset scale. | 1.0 |
| **Normal Bias Scale** | Normal-offset scale. | 1.0 |

These are **scales**, not raw 0.0001 bias values.

Cascade count and sun shadow **distance** come from Engine Settings **Shadow Quality**. They are not World Settings sliders.

| Shadow Quality | Cascades | Sun shadow distance | Local shadow max / fade |
|----------------|----------|---------------------|-------------------------|
| OFF | — | — | — |
| LOW | 1 | 50 m | 10 / 5 |
| MEDIUM | 2 | 100 m | 14 / 7 |
| HIGH | 3 | 100 m | 16 / 8 |
| ULTRA | 3 | 200 m | 24 / 12 |

Quality overwrites those distances at load. Near-cascade split is 0.1 × distance. Changing **Shadow Quality** needs an engine restart for map resolution and cascade count.

Lua still has `renderer_set_sunlight_shadow_distance`. Quality apply will overwrite the preset distance on the next settings load.

## Scripting

| Function | Purpose |
|----------|---------|
| `renderer_set_sunlight_active(active)` | Enable the sun. |
| `renderer_set_sunlight_lux(lux)` | Set **Lux**. |
| `renderer_set_sunlight_direction(direction)` | Set the travel-into-scene vector. |
| `renderer_set_sunlight_color(color)` | Set **Tint**. |
| `renderer_set_sunlight_temperature_k(kelvin)` | Set **Temperature (K)**. |
| `renderer_set_sunlight_specular_intensity(intensity)` | Set **Specular Intensity**. |
| `renderer_set_sunlight_shadow_active(active)` | Enable sun shadows. |
| `renderer_set_sunlight_shadow_bias(bias)` | **Bias Scale**. |
| `renderer_set_sunlight_shadow_blur(blur)` | **Blur Scale**. |
| `renderer_set_sky_ambient_lux(lux)` | Sky fill (**Ambient Lux**). |

## Moonlight

For night, either disable **Active** and light with Point / Spot, or keep the sun on with low **Lux** and a cool **Temperature (K)** (for example 0.27 lux, 9000K).

## Combining with local lights

1. Sun **Lux** 6, **Ambient Lux** 2.
2. Point fill around 500–800 lm on the shaded side.
3. Keep local shadow casters to hero lights. See [Local shadows](lighting_local_shadows.md).

## See also

- [Lighting overview](lighting.md)
- [Light component](lighting_component.md)
- [Local shadows](lighting_local_shadows.md)
- [Exposure & EV100](lighting_exposure.md)
- [Renderer API](../reference/renderer.md)
