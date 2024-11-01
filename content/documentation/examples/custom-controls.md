---
type: examples
example-type: advanced
title: Custom controls
description: >
    The Pannellum API can be used to display custom panorama controls.
---

<style>
#panorama {
    width: 600px;
    height: 400px;
}
#controls {
    position: absolute;
    bottom: 0;
    z-index: 2;
    text-align: center;
    width: 100%;
    padding-bottom: 3px;
    pointer-events: none;
}
.ctrl {
    padding: 8px 5px;
    width: 30px;
    text-align: center;
    background: rgba(200, 200, 200, 0.8);
    display: inline-block;
    cursor: pointer;
    pointer-events: auto;
}
.ctrl:hover {
    background: rgba(200, 200, 200, 1);
}
</style>

<div id="panorama">
    <div id="controls">
        <div class="ctrl" id="pan-up">&#9650;</div>
        <div class="ctrl" id="pan-down">&#9660;</div>
        <div class="ctrl" id="pan-left">&#9664;</div>
        <div class="ctrl" id="pan-right">&#9654;</div>
        <div class="ctrl" id="zoom-in">&plus;</div>
        <div class="ctrl" id="zoom-out">&minus;</div>
        <div class="ctrl" id="fullscreen">&#x2922;</div>
    </div>
</div>

<script>
// Create viewer
viewer = pannellum.viewer('panorama', ﻿{
    "panorama": "/images/alma-correlator-facility.jpg",
    "autoLoad": true,
    "showControls": false
});

// Make buttons work
document.getElementById('pan-up').addEventListener('click', function(e) {
    viewer.setPitch(viewer.getPitch() + 10);
});
document.getElementById('pan-down').addEventListener('click', function(e) {
    viewer.setPitch(viewer.getPitch() - 10);
});
document.getElementById('pan-left').addEventListener('click', function(e) {
    viewer.setYaw(viewer.getYaw() - 10);
});
document.getElementById('pan-right').addEventListener('click', function(e) {
    viewer.setYaw(viewer.getYaw() + 10);
});
document.getElementById('zoom-in').addEventListener('click', function(e) {
    viewer.setHfov(viewer.getHfov() - 10);
});
document.getElementById('zoom-out').addEventListener('click', function(e) {
    viewer.setHfov(viewer.getHfov() + 10);
});
document.getElementById('fullscreen').addEventListener('click', function(e) {
    viewer.toggleFullscreen();
});
</script>

### API

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Custom controls</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@{{% pnlmversionfull %}}/build/pannellum.css">
    <script src="https://cdn.jsdelivr.net/npm/pannellum@{{% pnlmversionfull %}}/build/pannellum.js"></script>

    <style>
    #panorama {
        width: 600px;
        height: 400px;
    }
    #controls {
        position: absolute;
        bottom: 0;
        z-index: 2;
        text-align: center;
        width: 100%;
        padding-bottom: 3px;
    }
    .ctrl {
        padding: 8px 5px;
        width: 30px;
        text-align: center;
        background: rgba(200, 200, 200, 0.8);
        display: inline-block;
        cursor: pointer;
    }
    .ctrl:hover {
        background: rgba(200, 200, 200, 1);
    }
    </style>
</head>
<body>

<div id="panorama">
    <div id="controls">
        <div class="ctrl" id="pan-up">&#9650;</div>
        <div class="ctrl" id="pan-down">&#9660;</div>
        <div class="ctrl" id="pan-left">&#9664;</div>
        <div class="ctrl" id="pan-right">&#9654;</div>
        <div class="ctrl" id="zoom-in">&plus;</div>
        <div class="ctrl" id="zoom-out">&minus;</div>
        <div class="ctrl" id="fullscreen">&#x2922;</div>
    </div>
</div>

<script>
// Create viewer
viewer = pannellum.viewer('panorama', ﻿{
    "panorama": "/images/alma-correlator-facility.jpg",
    "autoLoad": true,
    "showControls": false
});

// Make buttons work
document.getElementById('pan-up').addEventListener('click', function(e) {
    viewer.setPitch(viewer.getPitch() + 10);
});
document.getElementById('pan-down').addEventListener('click', function(e) {
    viewer.setPitch(viewer.getPitch() - 10);
});
document.getElementById('pan-left').addEventListener('click', function(e) {
    viewer.setYaw(viewer.getYaw() - 10);
});
document.getElementById('pan-right').addEventListener('click', function(e) {
    viewer.setYaw(viewer.getYaw() + 10);
});
document.getElementById('zoom-in').addEventListener('click', function(e) {
    viewer.setHfov(viewer.getHfov() - 10);
});
document.getElementById('zoom-out').addEventListener('click', function(e) {
    viewer.setHfov(viewer.getHfov() + 10);
});
document.getElementById('fullscreen').addEventListener('click', function(e) {
    viewer.toggleFullscreen();
});
</script>

</body>
</html>
```
