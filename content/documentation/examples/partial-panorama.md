---
type: examples
example-type: intermediate
title: Partial panorama
description: >
    The extents of a partial equirectangular panorama (not full spherical) can
    be specified using the <abbr title="horizontal angle of view">`haov`</abbr>,
    <abbr title="vertical angle of view">`vaov`</abbr>, and
    <abbr title="vertical offset">`vOffset`</abbr> parameters. These parameters
    will also be read from [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata),
    if present.
panorama: /images/charles-street.jpg
config:
    standalone: panorama=PANORAMA&haov=149.87&vaov=54.15&vOffset=1.17
    json: >
        {
            "type": "equirectangular",
            "panorama": "PANORAMA",
            "haov": 149.87,
            "vaov": 54.15,
            "vOffset": 1.17
        }
---
