---
type: examples
example-type: advanced
title: Video
description: >
    Equirectangular video can be displayed in conjunction with
    [Video.js](http://videojs.com/). For this functionality, Pannellum's API
    must be used.
---

<link href="https://vjs.zencdn.net/5.4.6/video-js.css" rel="stylesheet" type="text/css" property="stylesheet">
<script src="https://vjs.zencdn.net/5.4.6/video.js"></script>
<script src="/js/videojs-pannellum-plugin.js"></script>

<video id="panorama" class="video-js vjs-default-skin vjs-big-play-centered"
  controls preload="none" style="width:100%;height:400px;"
  poster="/images/video/jfk-poster.jpg" data-setup="{}" crossorigin="anonymous">
    <source src="/images/video/jfk.webm" type="video/webm"/>
    <source src="/images/video/jfk.mp4" type="video/mp4"/>
    <p class="vjs-no-js">
        To view this video please enable JavaScript, and consider upgrading to
        a web browser that <a href="http://videojs.com/html5-video-support/"
        target="_blank">supports HTML5 video</a>
    </p>
</video>

<script>
videojs('panorama', {
    plugins: {
        pannellum: {}
    }
});
</script>

### API

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Pannellum Video Demo</title>
    <link rel="stylesheet" href="https://cdn.pannellum.org/2.3/pannellum.css"/>
    <script type="text/javascript" src="https://cdn.pannellum.org/2.3/pannellum.js"></script>

    <link href="https://vjs.zencdn.net/5.4.6/video-js.css" rel="stylesheet"
      type="text/css">
    <script src="https://vjs.zencdn.net/5.4.6/video.js"></script>
    <script src="/js/videojs-pannellum-plugin.js"></script>
</head>
<body>

<video id="panorama" class="video-js vjs-default-skin vjs-big-play-centered"
  controls preload="none" style="width:100%;height:400px;"
  poster="/images/video/jfk-poster.jpg" data-setup="{}" crossorigin="anonymous">
    <source src="/images/video/jfk.webm" type="video/webm"/>
    <source src="/images/video/jfk.mp4" type="video/mp4"/>
    <p class="vjs-no-js">
        To view this video please enable JavaScript, and consider upgrading to
        a web browser that <a href="http://videojs.com/html5-video-support/"
        target="_blank">supports HTML5 video</a>
    </p>
</video>

<script>
videojs('panorama', {
    plugins: {
        pannellum: {}
    }
});
</script>

</body>
</html>
```
