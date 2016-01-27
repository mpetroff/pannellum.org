---
type: examples
example-type: intermediate
title: Initial view
description: >
    The initial pitch, yaw, and horizontal field of view can be specified using
    the `pitch`, `yaw`, and `hfov` parameters, respectively. These parameters
    will also be read from [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata),
    if present.
panorama: /images/lascar.jpg
config:
    standalone: panorama=PANORAMA&pitch=2.3&yaw=-135.4&hfov=120
    json: >
        {
            "type": "equirectangular",
            "panorama": "PANORAMA",
            "pitch": 2.3,
            "yaw": -135.4,
            "hfov": 120
        }
---
