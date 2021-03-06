---
title: API
type: api
---

<!-- Generated by documentation.js. Update this documentation by updating the source code. -->

## Renderer

Creates a new panorama renderer.

### Parameters

-   `container` **[HTMLElement][1]** The container element for the renderer.

### init

Initialize renderer.

#### Parameters

-   `_image`  
-   `_imageType`  
-   `_dynamic`  
-   `haov` **[number][2]** Initial horizontal angle of view.
-   `vaov` **[number][2]** Initial vertical angle of view.
-   `voffset` **[number][2]** Initial vertical offset angle.
-   `callback` **[function][3]** Load callback function.
-   `params` **[Object][4]?** Other configuration parameters (`horizonPitch`, `horizonRoll`, `backgroundColor`).
-   `image` **([Image][5] \| [Array][6] \| [Object][4])** Input image; format varies based on
         `imageType`. For `equirectangular`, this is an image; for
         `cubemap`, this is an array of images for the cube faces in the
         order [+z, +x, -z, -x, +y, -y]; for `multires`, this is a
         configuration object.
-   `imageType` **[string][7]** The type of the image: `equirectangular`,
         `cubemap`, or `multires`.
-   `dynamic` **[boolean][8]** Whether or not the image is dynamic (e.g. video).

### destroy

Destroy renderer.

### resize

Resize renderer (call after resizing container).

### setPose

Set renderer horizon pitch and roll.

#### Parameters

-   `horizonPitch`  
-   `horizonRoll`  

### render

Render new view of panorama.

#### Parameters

-   `pitch` **[number][2]** Pitch to render at (in radians).
-   `yaw` **[number][2]** Yaw to render at (in radians).
-   `hfov` **[number][2]** Horizontal field of view to render with (in radians).
-   `params` **[Object][4]?** Extra configuration parameters.
    -   `params.roll` **[number][2]?** Camera roll (in radians).
    -   `params.returnImage` **[boolean][8]?** Return rendered image?

### isLoading

Check if images are loading.

Returns **[boolean][8]** Whether or not images are loading.

### getCanvas

Retrieve renderer's canvas.

Returns **[HTMLElement][1]** Renderer's canvas.

## Viewer

Creates a new panorama viewer.

### Parameters

-   `container` **([HTMLElement][1] \| [string][7])** The container (div) element for the
         viewer, or its ID.
-   `initialConfig` **[Object][4]** Inital configuration for viewer.

### isLoaded

Checks whether or not a panorama is loaded.

Returns **[boolean][8]** `true` if a panorama is loaded, else `false`

### isLoaded

Check if a panorama is loaded.

Returns **[boolean][8]** True if a panorama is loaded, else false

### getPitch

Returns the pitch of the center of the view.

Returns **[number][2]** Pitch in degrees

### setPitch

Sets the pitch of the center of the view.

#### Parameters

-   `pitch` **[number][2]** Pitch in degrees
-   `animated` **([boolean][8] \| [number][2])** Animation duration in milliseconds or false for no animation (optional, default `1000`)
-   `callback` **[function][3]?** Function to call when animation finishes
-   `callbackArgs` **[object][4]?** Arguments to pass to callback function

Returns **[Viewer][9]** `this`

### getPitchBounds

Returns the minimum and maximum allowed pitches (in degrees).

Returns **[Array][6]&lt;[number][2]>** [minimum pitch, maximum pitch]

### setPitchBounds

Set the minimum and maximum allowed pitches (in degrees).

#### Parameters

-   `bounds` **[Array][6]&lt;[number][2]>** [minimum pitch, maximum pitch]

Returns **[Viewer][9]** `this`

### getYaw

Returns the yaw of the center of the view.

Returns **[number][2]** Yaw in degrees

### setYaw

Sets the yaw of the center of the view.

#### Parameters

-   `yaw` **[number][2]** Yaw in degrees [-180, 180]
-   `animated` **([boolean][8] \| [number][2])** Animation duration in milliseconds or false for no animation (optional, default `1000`)
-   `callback` **[function][3]?** Function to call when animation finishes
-   `callbackArgs` **[object][4]?** Arguments to pass to callback function

Returns **[Viewer][9]** `this`

### getYawBounds

Returns the minimum and maximum allowed pitches (in degrees).

Returns **[Array][6]&lt;[number][2]>** [yaw pitch, maximum yaw]

### setYawBounds

Set the minimum and maximum allowed yaws (in degrees [-180, 180]).

#### Parameters

-   `bounds` **[Array][6]&lt;[number][2]>** [minimum yaw, maximum yaw]

Returns **[Viewer][9]** `this`

### getHfov

Returns the horizontal field of view.

Returns **[number][2]** Horizontal field of view in degrees

### setHfov

Sets the horizontal field of view.

#### Parameters

-   `hfov` **[number][2]** Horizontal field of view in degrees
-   `animated` **([boolean][8] \| [number][2])** Animation duration in milliseconds or false for no animation (optional, default `1000`)
-   `callback` **[function][3]?** Function to call when animation finishes
-   `callbackArgs` **[object][4]?** Arguments to pass to callback function

Returns **[Viewer][9]** `this`

### getHfovBounds

Returns the minimum and maximum allowed horizontal fields of view
(in degrees).

Returns **[Array][6]&lt;[number][2]>** [minimum hfov, maximum hfov]

### setHfovBounds

Set the minimum and maximum allowed horizontal fields of view (in degrees).

#### Parameters

-   `bounds` **[Array][6]&lt;[number][2]>** [minimum hfov, maximum hfov]

Returns **[Viewer][9]** `this`

### lookAt

Set a new view. Any parameters not specified remain the same.

#### Parameters

-   `pitch` **[number][2]?** Target pitch
-   `yaw` **[number][2]?** Target yaw
-   `hfov` **[number][2]?** Target hfov
-   `animated` **([boolean][8] \| [number][2])** Animation duration in milliseconds or false for no animation (optional, default `1000`)
-   `callback` **[function][3]?** Function to call when animation finishes
-   `callbackArgs` **[object][4]?** Arguments to pass to callback function

Returns **[Viewer][9]** `this`

### getNorthOffset

Returns the panorama's north offset.

Returns **[number][2]** North offset in degrees

### setNorthOffset

Sets the panorama's north offset.

#### Parameters

-   `heading` **[number][2]** North offset in degrees

Returns **[Viewer][9]** `this`

### getHorizonRoll

Returns the panorama's horizon roll.

Returns **[number][2]** Horizon roll in degrees

### setHorizonRoll

Sets the panorama's horizon roll.

#### Parameters

-   `roll` **[number][2]** Horizon roll in degrees [-90, 90]

Returns **[Viewer][9]** `this`

### getHorizonPitch

Returns the panorama's horizon pitch.

Returns **[number][2]** Horizon pitch in degrees

### setHorizonPitch

Sets the panorama's horizon pitch.

#### Parameters

-   `pitch` **[number][2]** Horizon pitch in degrees [-90, 90]

Returns **[Viewer][9]** `this`

### startAutoRotate

Start auto rotation.

Before starting rotation, the viewer is panned to `pitch`.

#### Parameters

-   `speed` **[number][2]?** Auto rotation speed / direction. If not specified, previous value is used.
-   `pitch` **[number][2]?** The pitch to rotate at. If not specified, inital pitch is used.

Returns **[Viewer][9]** `this`

### stopAutoRotate

Stop auto rotation.

Returns **[Viewer][9]** `this`

### stopMovement

Stops all movement.

### getRenderer

Returns the panorama renderer.

Returns **[Renderer][10]** 

### setUpdate

Sets update flag for dynamic content.

#### Parameters

-   `bool` **[boolean][8]** Whether or not viewer should update even when still

Returns **[Viewer][9]** `this`

### mouseEventToCoords

Calculate panorama pitch and yaw from location of mouse event.

#### Parameters

-   `event` **[MouseEvent][11]** Document mouse down event.

Returns **[Array][6]&lt;[number][2]>** [pitch, yaw]

### loadScene

Change scene being viewed.

#### Parameters

-   `sceneId` **[string][7]** Identifier of scene to switch to.
-   `pitch` **[number][2]?** Pitch to use with new scene
-   `yaw` **[number][2]?** Yaw to use with new scene
-   `hfov` **[number][2]?** HFOV to use with new scene

Returns **[Viewer][9]** `this`

### getScene

Get ID of current scene.

Returns **[string][7]** ID of current scene

### addScene

Add a new scene.

#### Parameters

-   `sceneId` **[string][7]** The ID of the new scene
-   `config` **[string][7]** The configuration of the new scene

Returns **[Viewer][9]** `this`

### removeScene

Remove a scene.

#### Parameters

-   `sceneId` **[string][7]** The ID of the scene

Returns **[boolean][8]** False if the scene is the current scene or if the scene doesn't exists, else true

### toggleFullscreen

Toggle fullscreen.

Returns **[Viewer][9]** `this`

### getConfig

Get configuration of current scene.

Returns **[Object][4]** Configuration of current scene

### getContainer

Get viewer's container element.

Returns **[HTMLElement][1]** Container `div` element

### addHotSpot

Add a new hot spot.

#### Parameters

-   `hs` **[Object][4]** The configuration for the hot spot
-   `sceneId` **[string][7]?** Adds hot spot to specified scene if provided, else to current scene


-   Throws **any** Throws an error if the scene ID is provided but invalid

Returns **[Viewer][9]** `this`

### removeHotSpot

Remove a hot spot.

#### Parameters

-   `hotSpotId` **[string][7]** The ID of the hot spot
-   `sceneId` **[string][7]?** Removes hot spot from specified scene if provided, else from current scene

Returns **[boolean][8]** True if deletion is successful, else false

### resize

This method should be called if the viewer's container is resized.

### isOrientationSupported

Check if device orientation control is supported.

Returns **[boolean][8]** True if supported, else false

### stopOrientation

Stop using device orientation.

### startOrientation

Start using device orientation (does nothing if not supported).

### isOrientationActive

Check if device orientation control is currently activated.

Returns **[boolean][8]** True if active, else false

### on

Subscribe listener to specified event.

#### Parameters

-   `type` **[string][7]** Type of event to subscribe to.
-   `listener` **[Function][3]** Listener function to subscribe to event.

Returns **[Viewer][9]** `this`

### destroy

Destructor.

### off

Remove an event listener (or listeners).

#### Parameters

-   `type` **[string][7]?** Type of event to remove listeners from. If not specified, all listeners are removed.
-   `listener` **[Function][3]?** Listener function to remove. If not specified, all listeners of specified type are removed.

Returns **[Viewer][9]** `this`

[1]: https://developer.mozilla.org/docs/Web/HTML/Element

[2]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number

[3]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Statements/function

[4]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Object

[5]: https://developer.mozilla.org/docs/Web/API/HTMLImageElement/Image

[6]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Array

[7]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String

[8]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Boolean

[9]: #viewer

[10]: #renderer

[11]: https://developer.mozilla.org/docs/Web/API/MouseEvent
