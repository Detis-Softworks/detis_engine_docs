# Light component

Local Point and Spot lights. For the world sun, see [World sun](lighting_sun.md).

## Setup

1. Create an entity.
2. Add a Light component.
3. Choose Point or Spot.
4. Set **Lumens** (default **800**).
5. Enable **Cast Shadows** only on lights that need them.

## Shared properties

| Widget | Purpose | Default |
|--------|---------|---------|
| **Tint** | RGB color. | white |
| **Temperature (K)** | Color temperature. | 6500 |
| **Lumens** | Output. | 800 |
| **Range (m)** | Distance where the light fades out. | 10 |
| **Cast Specular** | Contribute to highlights. | on |
| **Cast Shadows** | Request a local shadow map. | off |
| **Ignore Distance Culling** | Keep the light when far from the camera. | off |

Spot only:

| Widget | Purpose | Default |
|--------|---------|---------|
| **Cone Angle (deg)** | Half-angle of the cone. | 45 |

There is no local directional light.

## Shadows

| Widget | Purpose | Default |
|--------|---------|---------|
| **Cast Shadows** | Opt this light into the local-shadow budget. | off |
| **Shadow Bias** | Acne offset. Point default **0.1**. Spot default **0.03** (set when you switch to Spot). | |
| **Shadow Normal Bias** | Offset along normals. | 1.0 |
| **Shadow Blur** | Edge softness. | 1.0 |

Up to 16 local lights can cast shadows at once. Engine Settings **Local Light Shadows** must be on. See [Local shadows](lighting_local_shadows.md).

## Volumetric fog

| Widget | Purpose |
|--------|---------|
| **Active** | This light feeds volumetric fog. |
| **Strength** | Fog contribution. |

## Scripting

| Function | Purpose |
|----------|---------|
| `light_set_lumens(entity_id, lumens)` | **Lumens**. |
| `light_set_color(entity_id, color)` | **Tint**. |
| `light_set_temperature_k(entity_id, kelvin)` | **Temperature (K)**. |
| `light_set_range(entity_id, range)` | **Range (m)**. |
| `light_set_angle(entity_id, degrees)` | Spot **Cone Angle (deg)**. |
| `light_set_cast_shadows(entity_id, enabled)` | **Cast Shadows**. |

## See also

- [World sun](lighting_sun.md)
- [Local shadows](lighting_local_shadows.md)
- [Exposure & EV100](lighting_exposure.md)
- [Light API](../reference/light.md)
