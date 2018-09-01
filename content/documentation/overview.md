---
title: Overview
type: overview
---

<div class="alert alert-info" role="alert">
<strong>Quick and easy:</strong> If you just have a simple panorama that you want to display
without anything fancy, read the
<a class="alert-link" href="{{% ref "/documentation/overview/tutorial.md" %}}">simple tutorial</a>.
</div>

Pannellum is built using WebGL and JavaScript, with a sprinkling of HTML5 and
CSS3. It can run standalone or can be embedded using either an `<iframe>` or
a JavaScript API. The standalone method, which is used for `<iframe>`
embedding, is the easiest and simplest to use, but the JavaScript API is more
powerful and provides tighter integration. Internally, the standalone viewer
parses URL parameters to build a JSON-based configuration and then instantiates
the viewer using the JavaScript API. The standalone viewer accepts a subset of
configuration parameters as URL parameters; the rest of the parameters can be
set using a JSON configuration file specified using the special `config` URL
parameter.


### Using Pannellum

Since Pannellum is static content, it can be hosted on virtually any web
server. A CDN is also provided for convenience. For more information on getting
Pannellum, see the [downloads page]({{% ref "/download.md" %}}).


### Panorama formats

Panoramic images can be provided in either equirectangular, cube map, or
multiresolution formats. Equirectangular is the simplest to use as only a
single image is needed; [Google Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata)
is automatically read and used if provided. However, to ensure support among
all WebGL-capable devices, the maximum image size should be preferably limited
to 4096&thinsp;px wide; 8192&thinsp;px is also acceptable for most devices.
Cube maps require six images but support somewhat higher resolution panoramas,
as the vast majority of devices support cube faces up to 4096&thinsp;px across.
Additionally, cube maps are supported by Pannellum's fallback CSS 3D
transform-based renderer and will therefore work on older mobile devices that
don't support WebGL. Although larger images are supported, download sizes
should be taken into consideration. The final input format is Pannellum's
multiresolution format, which is generated from an equirectangular image using
Pannellum's [`generate.py`](https://github.com/mpetroff/pannellum/blob/master/utils/multires/generate.py)
Python script. This format is a cube map-based format, except each cube face is
a [tiled image pyramid](https://msdn.microsoft.com/en-us/library/cc645077%28v=vs.95%29.aspx#Anchor_0)
instead of a single image. Arbitrarily large images are supported, the CSS 3D
transform-based fallback renderer is supported, and load times are quick due to
the image pyramids. The downside of this format is that extra work is required
to convert an image to it and the large number of files that must be hosted.


### Additional features

Additional features of Pannellum include hot spots for displaying information,
linking of multiple panoramas into virtual tours, and video support. The best
way to learn about Pannellum's features and how to use them is to peruse the
[examples]({{% ref "/documentation/examples/simple-example.md" %}}) and
[configuration reference]({{% ref "/documentation/reference/index.md" %}}). Since it is not
obvious from the examples, it is prudent to note that the `hotSpotDebug`
parameter exists to aid in the placing of hot spots. It can be enabled while
setting up the hot spots, but it should always be disabled in production.

<a href="{{% ref "/documentation/overview/tutorial.md" %}}" class="btn btn-default" role="button">Continue to simple tutorial &raquo;</a>
