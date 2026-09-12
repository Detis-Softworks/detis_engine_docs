# Local shadows

Point and Spot shadow maps only. Sun CSM is on [World sun](lighting_sun.md).

## Enable a local shadow

1. Select a Point or Spot light.
2. Enable **Cast Shadows**.
3. Tune **Shadow Bias**, **Shadow Normal Bias**, and **Shadow Blur**.

Defaults: Point **Shadow Bias** 0.1, Spot **0.03**, **Shadow Normal Bias** 1.0, **Shadow Blur** 1.0.

## Budget

- At most **16** local lights cast shadows at once.
- Nearest eligible lights to the camera win.
- Lights that lose the budget still illuminate. They just drop shadows.

Both of these must be on:

1. Per-light **Cast Shadows**.
2. Engine Settings **Local Light Shadows**.

## Engine Settings

**Shadow Quality** also writes local-shadow max distance and fade (LOW 10 / 5, MEDIUM 14 / 7, HIGH 16 / 8, ULTRA 24 / 12) when settings load.

Under **Local Lights**:

| Widget | Purpose |
|--------|---------|
| **Culling** | Master local-light culling. |
| **Frustum Culling** | Drop lights outside the camera frustum. |
| **Distance Culling** | Drop lights beyond **Max Distance**. |
| **Max Distance** / **Fade Range** | Light (not shadow) distance fade. |
| **Local Light Shadows** | Global shadow gate. |
| **Shadow Distance Culling** | Cull shadow maps by distance. |
| **Max Distance** / **Fade Range** | Shadow-map distance fade. |

**Ignore Distance Culling** on the Light component keeps that light (and its shadow request) when far from the camera.

## Troubleshooting

**Acne:** raise **Shadow Bias** or **Shadow Normal Bias** a little.

**Too soft:** lower **Shadow Blur**.

**Missing shadows:** too many **Cast Shadows** lights, **Local Light Shadows** off, or the light is past shadow **Max Distance**.

## Performance

1. Shadows on hero lights only.
2. Keep Engine Settings shadow **Max Distance** tight.
3. Use sun CSM for broad outdoor coverage.

## See also

- [Light component](lighting_component.md)
- [World sun](lighting_sun.md)
- [Lighting overview](lighting.md)
- [Exposure & EV100](lighting_exposure.md)
- [Renderer API](../reference/renderer.md)
- [Settings API](../reference/settings.md)
