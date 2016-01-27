---
title: API
type: api
---

# Renderer

Creates a new panorama renderer.

**Parameters**

-   `container` **HTMLElement** The container element for the renderer.
-   `image` **Image or Array or Object** Input image; format varies based on
         `imageType`. For `equirectangular`, this is an image; for `cubemap`,
         this is an array of images for the cube faces in the order [+z, +x, -z,
         -x, +y, -y]; for `multires`, this is a configuration object.
-   `imageType` **string** The type of the image: `equirectangular`,
         `cubemap`, or `multires`.
-   `dynamic` **boolean** Whether or not the image is dynamic (e.g. video).

## destroy

Destroy renderer.

## getCanvas

Retrieve renderer's canvas.

Returns **HTMLElement** Renderer's canvas.

## init

Initialize renderer.

**Parameters**

-   `haov` **number** Initial horizontal angle of view.
-   `vaov` **number** Initial vertical angle of view.
-   `voffset` **number** Initial vertical offset angle.
-   `callback` **function** Load callback function.

## isLoading

Check if images are loading.

Returns **boolean** Whether or not images are loading.

## render

Render new view of panorama.

**Parameters**

-   `pitch` **number** Pitch to render at.
-   `yaw` **number** Yaw to render at.
-   `hfov` **number** Horizontal field of view to render with.
-   `returnImage` **boolean** Return rendered image?

## resize

Resize renderer (call after resizing container).

# Viewer

Creates a new panorama viewer.

**Parameters**

-   `container` **HTMLElement or string** The container (div) element for the
         viewer, or its ID.
-   `initialConfig` **Object** Inital configuration for viewer.

## getHfov

Returns the horizontal field of view.

Returns **number** Horizontal field of view in degrees

## getHfovBounds

Returns the minimum and maximum allowed horizontal fields of view
(in degrees).

Returns **Array&lt;number&gt;** [minimum hfov, maximum hfov]

## getPitch

Returns the pitch of the center of the view.

Returns **number** Pitch in degrees

## getPitchBounds

Returns the minimum and maximum allowed pitches (in degrees).

Returns **Array&lt;number&gt;** [minimum pitch, maximum pitch]

## getRenderer

Returns the panorama renderer.

Returns **Renderer** 

## getYaw

Returns the yaw of the center of the view.

Returns **number** Yaw in degrees

## getYawBounds

Returns the minimum and maximum allowed pitches (in degrees).

Returns **Array&lt;number&gt;** [yaw pitch, maximum yaw]

## mouseEventToCoords

Calculate panorama pitch and yaw from location of mouse event.

**Parameters**

-   `event` **MouseEvent** Document mouse down event.

Returns **Array&lt;number&gt;** [pitch, yaw]

## setHfov

Sets the horizontal field of view.

**Parameters**

-   `hfov` **number** Horizontal field of view in degrees

Returns **Viewer** `this`

## setHfovBounds

Set the minimum and maximum allowed horizontal fields of view (in degrees).

**Parameters**

-   `bounds` **Array&lt;number&gt;** [minimum hfov, maximum hfov]

Returns **Viewer** `this`

## setPitch

Sets the pitch of the center of the view.

**Parameters**

-   `pitch` **number** Pitch in degrees

Returns **Viewer** `this`

## setPitchBounds

Set the minimum and maximum allowed pitches (in degrees).

**Parameters**

-   `bounds` **Array&lt;number&gt;** [minimum pitch, maximum pitch]

Returns **Viewer** `this`

## setUpdate

Sets update flag for dynamic content.

**Parameters**

-   `bool` **boolean** Whether or not viewer should update even when still

Returns **Viewer** `this`

## setYaw

Sets the yaw of the center of the view.

**Parameters**

-   `yaw` **number** Yaw in degrees

Returns **Viewer** `this`

## setYawBounds

Set the minimum and maximum allowed yaws (in degrees).

**Parameters**

-   `bounds` **Array&lt;number&gt;** [minimum yaw, maximum yaw]

Returns **Viewer** `this`
