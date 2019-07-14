---
title: Downloads
---

### Pannellum CDN

Although one can self-host Pannellum on virtually any web server as it is
static content, a CDN is also provided for convenience (for low-to-medium
traffic sites).
```html
<!-- Latest compiled and minified standalone viewer -->
{{% pnlmbase %}}/{{% pnlmversion %}}/pannellum.htm

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/pannellum@{{% pnlmversionfull %}}/build/pannellum.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@{{% pnlmversionfull %}}/build/pannellum.css">
```

### Download

One can obviously also choose to download either for self-hosting or
development. When using Pannellum locally, a web server must still be used due
to browser security restrictions. With Python 2, one can use
`python -m SimpleHTTPServer`, and with Python 3, one can use
`python -m http.server`, but any other web server will work as well.

<div class="row">
  <div class="col-sm-6">
    <h4>Pannellum</h4>
    <p>Minified standalone viewer, CSS, and JavaScript. No documentation,
    utilities, or original source files are included.</p>
    <a href="https://github.com/mpetroff/pannellum/releases/download/{{% pnlmversionfull %}}/pannellum-{{% pnlmversionfull %}}.zip" class="btn btn-default btn-lg" role="button">Download Pannellum {{% pnlmversionfull %}}</a>
  </div>
  <div class="col-sm-6">
    <h4>Source Code</h4>
    <p>Full source code, utilities, and some documentation. It is not
    recommended to use the included unminified files in production.</p>
    <a href="https://github.com/mpetroff/pannellum/archive/{{% pnlmversionfull %}}.zip" class="btn btn-default btn-lg" role="button">Download source</a>
  </div>
</div>

[View Changelog](https://github.com/mpetroff/pannellum/blob/{{% pnlmversionfull %}}/changelog.md)

To use Pannellum, either `pannellum.htm` or `pannellum.js` and `pannellum.css` need to be placed on one's web server.


## Building from Source

The `utils/build` folder contains the required build tools, with the exception
of Python 3.2+ and Java installations. To build a minified version of
Pannellum, run either `build.sh` or `build.bat` depending on your platform.


## Donations

<a href="https://ko-fi.com/mpetroff" class="btn btn-info btn-lg" role="button"><img alt="Ko-fi logo" src="/images/ko-fi-logo.svg"> Buy Me a Tea</a>
