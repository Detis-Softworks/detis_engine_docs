# Lighting

Light a scene with one world sun plus local Point and Spot lights. Tune brightness with lux, lumens, and auto-exposure.

## Pages

- [World sun](lighting_sun.md) — Global sun and sun-shadow scales.
- [Light component](lighting_component.md) — Local Point and Spot lights.
- [Local shadows](lighting_local_shadows.md) — Per-light shadows and Engine Settings limits.
- [Exposure & EV100](lighting_exposure.md) — Physical units and auto-exposure.

## Light a scene

1. Set the sun in World Settings. Gameplay baseline is **Lux** 6 and **Ambient Lux** 2.
2. Add Point lights for bulbs and fill, Spot lights for cones and flashlights.
3. Turn **Cast Shadows** on only for lights that need them.
4. Set auto-exposure **Min EV100** / **Max EV100** after the lights feel right.

There is no local directional light. Angle the sun with **Azimuth (deg)** and **Elevation (deg)**.

| Type | Use | Brightness | Shadows |
|------|-----|------------|---------|
| **Sun** | Whole scene | **Lux** | Cascaded. Distance and cascade count come from Engine Settings **Shadow Quality**. |
| **Point** | Lanterns, bulbs, fill | **Lumens** (default 800) | Optional. Budget of 16. |
| **Spot** | Flashlights, cones | **Lumens** (default 800) | Optional. **Cone Angle (deg)** is half-angle, default 45. |

**Ambient Lux** is the sky fill widget (Lua `renderer_set_sky_ambient_lux`). There is no property named "Sky ambient".

Higher EV100 darkens the image. Color temperature is Kelvin: warm ~2700K, daylight ~5500K.

## API reference

- [Light](../reference/light.md)
- [Renderer](../reference/renderer.md)
- [Settings](../reference/settings.md)
