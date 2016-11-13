---
type: examples
example-type: advanced
title: Custom hot spots
description: >
    The Pannellum API can be used to customize hot spots.
---

<style>
#panorama {
    width: 600px;
    height: 400px;
}
.custom-hotspot {
    height: 50px;
    width: 50px;
    background: #f00;
}
div.custom-tooltip span {
    visibility: hidden;
    position: absolute;
    border-radius: 3px;
    background-color: #fff;
    color: #000;
    text-align: center;
    max-width: 200px;
    padding: 5px 10px;
    margin-left: -220px;
    cursor: default;
}
div.custom-tooltip:hover span{
    visibility: visible;
}
div.custom-tooltip:hover span:after {
    content: '';
    position: absolute;
    width: 0;
    height: 0;
    border-width: 10px;
    border-style: solid;
    border-color: #fff transparent transparent transparent;
    bottom: -20px;
    left: -10px;
    margin: 0 50%;
}
</style>

<div id="panorama"></div>

<script>
// Create viewer
viewer = pannellum.viewer('panorama', ﻿{
    "type": "equirectangular",
    "panorama": "/images/bma-1.jpg",
    "hotSpots": [
        {
            "pitch": 14.1,
            "yaw": 1.5,
            "cssClass": "custom-hotspot",
            "createTooltipFunc": hotspot,
            "createTooltipArgs": "Baltimore Museum of Art"
        },
        {
            "pitch": -9.4,
            "yaw": 222.6,
            "cssClass": "custom-hotspot",
            "createTooltipFunc": hotspot,
            "createTooltipArgs": "Art Museum Drive"
        },
        {
            "pitch": -0.9,
            "yaw": 144.4,
            "cssClass": "custom-hotspot",
            "createTooltipFunc": hotspot,
            "createTooltipArgs": "North Charles Street"
        }
    ]
});

// Hot spot creation function
function hotspot(hotSpotDiv, args) {
    hotSpotDiv.classList.add('custom-tooltip');
    var span = document.createElement('span');
    span.innerHTML = args;
    hotSpotDiv.appendChild(span);
    span.style.width = span.scrollWidth - 20 + 'px';
    span.style.marginLeft = -(span.scrollWidth - hotSpotDiv.offsetWidth) / 2 + 'px';
    span.style.marginTop = -span.scrollHeight - 12 + 'px';
}
</script>

### API

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Custom hot spots</title>
    <link rel="stylesheet" href="https://cdn.pannellum.org/2.3/pannellum.css"/>
    <script type="text/javascript" src="https://cdn.pannellum.org/2.3/pannellum.js"></script>

    <style>
    #panorama {
        width: 600px;
        height: 400px;
    }
    .custom-hotspot {
        height: 50px;
        width: 50px;
        background: #f00;
    }
    div.custom-tooltip span {
        visibility: hidden;
        position: absolute;
        border-radius: 3px;
        background-color: #fff;
        color: #000;
        text-align: center;
        max-width: 200px;
        padding: 5px 10px;
        margin-left: -220px;
        cursor: default;
    }
    div.custom-tooltip:hover span{
        visibility: visible;
    }
    div.custom-tooltip:hover span:after {
        content: '';
        position: absolute;
        width: 0;
        height: 0;
        border-width: 10px;
        border-style: solid;
        border-color: #fff transparent transparent transparent;
        bottom: -20px;
        left: -10px;
        margin: 0 50%;
    }
    </style>
</head>
<body>

<div id="panorama"></div>

<script>
// Create viewer
viewer = pannellum.viewer('panorama', ﻿{
    "type": "equirectangular",
    "panorama": "/images/bma-1.jpg",
    "hotSpots": [
        {
            "pitch": 14.1,
            "yaw": 1.5,
            "cssClass": "custom-hotspot",
            "createTooltipFunc": hotspot,
            "createTooltipArgs": "Baltimore Museum of Art"
        },
        {
            "pitch": -9.4,
            "yaw": 222.6,
            "cssClass": "custom-hotspot",
            "createTooltipFunc": hotspot,
            "createTooltipArgs": "Art Museum Drive"
        },
        {
            "pitch": -0.9,
            "yaw": 144.4,
            "cssClass": "custom-hotspot",
            "createTooltipFunc": hotspot,
            "createTooltipArgs": "North Charles Street"
        }
    ]
});

// Hot spot creation function
function hotspot(hotSpotDiv, args) {
    hotSpotDiv.classList.add('custom-tooltip');
    var span = document.createElement('span');
    span.innerHTML = args;
    hotSpotDiv.appendChild(span);
    span.style.width = span.scrollWidth - 20 + 'px';
    span.style.marginLeft = -(span.scrollWidth - hotSpotDiv.offsetWidth) / 2 + 'px';
    span.style.marginTop = -span.scrollHeight - 12 + 'px';
}
</script>

</body>
</html>
```
