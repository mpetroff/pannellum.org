---
type: examples
example-type: simple
title: Auto rotate
description: >
    Make the panorama automatically rotate once loaded using the `autoRotate`
    parameter. The parameter's value should be a number, with the value
    specifying the rotation speed in degrees per second; positive is
    counter-clockwise, and negative is clockwise. The
    `autoRotateInactivityDelay` parameter can also be specified to have the
    panorama begin rotating again after there is no user interaction for the
    specified number of milliseconds.
panorama: /images/jfk.jpg
config:
    standalone: panorama=PANORAMA&autoRotate=-2
    json: >
        {
            "type": "equirectangular",
            "panorama": "PANORAMA",
            "autoRotate": -2
        }
---
