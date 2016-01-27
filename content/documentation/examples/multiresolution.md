---
type: examples
example-type: advanced
title: Multiresolution panorama
description: >
    To display high-resolution panoramas, Pannellum's multiresolution feature
    must be used. This requires converting an equirectangular panorama into
    Pannellum's multiresolution format using the [`generate.py`](https://raw.githubusercontent.com/mpetroff/pannellum/master/utils/multires/generate.py)
    script.
config:
    standalone: config=BASEURL/configs/multiresolution.json
    json: >
        {
            "type": "multires",
            "multiRes": {
                "basePath": "/images/multires/library",
                "path": "/%l/%s%y_%x",
                "fallbackPath": "/fallback/%s",
                "extension": "jpg",
                "tileResolution": 512,
                "maxLevel": 6,
                "cubeResolution": 8432
            }
        }
---
