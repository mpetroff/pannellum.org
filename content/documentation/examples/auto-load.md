---
type: examples
example-type: simple
title: Auto load
description: Automatically load the panorama by using the `autoLoad` parameter.
panorama: /images/cerro-toco-0.jpg
config:
    standalone: panorama=PANORAMA&autoLoad=true
    json: >
        {
            "type": "equirectangular",
            "panorama": "PANORAMA",
            "autoLoad": true
        }
---
