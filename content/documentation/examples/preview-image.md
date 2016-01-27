---
type: examples
example-type: simple
title: Preview image
description: >
    A preview image can be displayed before the user loads the panorama. This
    image is specified using the `preview` parameter.
panorama: /images/tocopilla.jpg
config:
    standalone: panorama=PANORAMA&preview=/images/tocopilla-preview.jpg
    json: >
        {
            "type": "equirectangular",
            "panorama": "PANORAMA",
            "preview": "/images/tocopilla-preview.jpg"
        }
---
