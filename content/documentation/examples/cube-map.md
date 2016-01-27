---
type: examples
example-type: intermediate
title: Cube map
description: >
    Display a cube map panorama. The configuration must be specified in a
    configuration file. The `type` parameter must be set to `cubemap`, and the
    cube faces are specified using the `cubeMap` parameter.
config:
    standalone: config=BASEURL/configs/cube-map.json
    json: >
        {
            "type": "cubemap",
            "cubeMap": [
                "/images/wyman-park-playground-cubic/face0.jpg",
                "/images/wyman-park-playground-cubic/face1.jpg",
                "/images/wyman-park-playground-cubic/face2.jpg",
                "/images/wyman-park-playground-cubic/face3.jpg",
                "/images/wyman-park-playground-cubic/face4.jpg",
                "/images/wyman-park-playground-cubic/face5.jpg"
            ]
        }
---
