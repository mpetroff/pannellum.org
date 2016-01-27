---
type: examples
example-type: advanced
title: Tour
description: >
    Multiple panoramas can be joined together into a virtual tour using
    Pannellum's tour feature. A fade animation between scenes can be configured
    using the `sceneFadeDuration` parameter.
config:
    standalone: config=/configs/tour.json
    json: >
        {   
            "default": {
                "firstScene": "circle",
                "author": "Matthew Petroff",
                "sceneFadeDuration": 1000
            },
        
            "scenes": {
                "circle": {
                    "title": "Mason Circle",
                    "hfov": 110,
                    "pitch": -3,
                    "yaw": 117,
                    "type": "equirectangular",
                    "panorama": "/images/from-tree.jpg",
                    "hotSpots": [
                        {
                            "pitch": -2.1,
                            "yaw": 132.9,
                            "type": "scene",
                            "text": "Spring House or Dairy",
                            "sceneId": "house"
                        }
                    ]
                },
        
                "house": {
                    "title": "Spring House or Dairy",
                    "hfov": 110,
                    "yaw": 5,
                    "type": "equirectangular",
                    "panorama": "/images/bma-0.jpg",
                    "hotSpots": [
                        {
                            "pitch": -0.6,
                            "yaw": 37.1,
                            "type": "scene",
                            "text": "Mason Circle",
                            "sceneId": "circle",
                            "targetYaw": -23,
                            "targetPitch": 2
                        }
                    ]
                }
            }
        }
---
