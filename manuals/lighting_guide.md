# Lighting best practices

Gameplay lighting for Detis. Scaled lux first. Full physical sun only if you need it.

## Baseline

- Sun Lux: 6.
- Ambient Lux: 2.
- Local lights: start at 800 lm.

Tune local lights after the sun and sky fill are stable.

## Why scaled lux

Local lights stay readable. Auto-exposure is easier across doors. You are not fighting 100,000 lux with 800 lm bulbs.

## Outdoor

### Daylight

- **Lux:** 4 to 10 (start at 6).
- **Ambient Lux:** 1 to 3 (start at 2).
- Local fill: 500 to 1500 lm if a facade needs it.
- Sun **Blur Scale:** leave at 1.0 unless edges are wrong.

### Sunset

- **Lux:** 2 to 6.
- **Ambient Lux:** 0.5 to 2.
- **Temperature (K):** 3000 to 3500.

## Indoor

### Bright room

- Point lights: 400 to 800 lm.
- **Temperature (K):** 4000 to 5000.

### Torchlight

- Main lights: 50 to 200 lm.
- **Temperature (K):** 2700 to 3000.

## Exposure

Factory auto-exposure is **Min EV100** -3, **Max EV100** 17, **Metering Key** 0.18, **Adapt Up Rate** 3, **Adapt Down Rate** 1, **Center Weight** 0.85. Higher EV100 darkens the image. 

Do not use outdoor EV 10–16 with sun **Lux** 6. That band belongs to ~100k lux physical mode. If local lights disappear outdoors, lower **Lux** and **Ambient Lux** before raising every light.

## Shadows

- Sun CSM from Engine Settings **Shadow Quality**.
- Local **Cast Shadows** on hero lights only (budget 16).
- Change **Bias Scale** / **Shadow Bias** only when you see acne or peter-panning.
- Lower blur if contact is mushy.

## Optional full physical mode

- Sun **Lux:** 100,000 to 120,000.
- Auto-exposure must sit in a high EV band (roughly 10–16 outdoors).
- Local lights need much higher lumens to stay visible.

## See also

- [World sun](lighting_sun.md)
- [Light component](lighting_component.md)
- [Local shadows](lighting_local_shadows.md)
- [Exposure & EV100](lighting_exposure.md)
