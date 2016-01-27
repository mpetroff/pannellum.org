---
type: examples
example-type: intermediate
title: Compass
description: >
    The north offset, in degrees, can be specified using the `northOffset`
    parameter, allowing a compass to be displayed. This parameter will also be
    read from [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata),
    if present.
config:
    standalone: config=BASEURL/configs/compass.json
    json: >
        {
            "type": "equirectangular",
            "panorama": "/images/bloomberg.jpg",
            "compass": true,
            "northOffset": 247.5
        }
---
