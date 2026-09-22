# Lighting

Light scenes with the world sun and local Point / Spot lights. Balance brightness with lux, lumens, and auto-exposure. The next pages cover the world sun, local lights, shadows, and exposure in order.

## Light system

**World sun** — One directional light for the whole scene. Brightness is **Lux**. Angle is **Azimuth (deg)** and **Elevation (deg)**.

**Local lights** — Point and Spot only. There is no local directional light. Brightness is **Lumens**.

| Type | Use | Shadows |
|------|-----|---------|
| **Point** | Lanterns, bulbs, fill. | Optional |
| **Spot** | Flashlights, cones. **Cone Angle (deg)** is half-angle, default 45. | Optional |

## Key concepts

**Lumens** — Point and Spot output. Default **800** lm.

**Lux** — Illuminance. Sun uses **Lux** (gameplay default **6**). Sky fill is **Ambient Lux** (default **2**), Lua `renderer_set_sky_ambient_lux`. There is no property named "Sky ambient".

**EV100** — Camera exposure. `exposure_scale = exp2(-ev100)`. Higher EV100 **darkens** the image.

**Color temperature** — Kelvin. Warm ~2700K, daylight ~5500K.

## Shadow maps

Sun shadows are cascaded (CSM). Cascade count and sun shadow distance come from **File -> Settings** -> **Shadow Quality**, not World Settings.

Local shadows use a budget of 16 lights and two AND gates. The **Local shadows** chapter covers the limits.

## API reference

- [Light](../reference/light.md)
- [Renderer](../reference/renderer.md)
- [Settings](../reference/settings.md)

## Continue reading

**Previous:** [Engine Settings](editor_engine_settings.md): graphics, shadows, and audio mixer.

**Next:** [World sun](lighting_sun.md): global sun and sun-shadow scales.
