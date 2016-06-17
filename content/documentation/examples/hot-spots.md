---
type: examples
example-type: advanced
title: Hot spots
description: >
    Additional information can be displayed on the panorama using hot spots.
    The `hotSpotDebug` parameter exists to assist with locating where to place
    hot spots; when enabled, it prints the coordinates of mouse clicks to the
    browser's developer console, which makes it much easier to figure out where
    to place hot spots.
config:
    standalone: config=BASEURL/configs/hot-spots.json
    json: >
        {
            "type": "equirectangular",
            "panorama": "/images/bma-1.jpg",
            /*
             * Uncomment the next line to print the coordinates of mouse clicks
             * to the browser's developer console, which makes it much easier
             * to figure out where to place hot spots. Always remove it when
             * finished, though.
             */
            //"hotSpotDebug": true,
            "hotSpots": [
                {
                    "pitch": 14.1,
                    "yaw": 1.5,
                    "type": "info",
                    "text": "Baltimore Museum of Art",
                    "URL": "https://artbma.org/"
                },
                {
                    "pitch": -9.4,
                    "yaw": 222.6,
                    "type": "info",
                    "text": "Art Museum Drive"
                },
                {
                    "pitch": -0.9,
                    "yaw": 144.4,
                    "type": "info",
                    "text": "North Charles Street"
                }
            ]
        }
---
