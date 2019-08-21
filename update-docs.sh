#!/bin/sh

# Generates documentation files.
# Requires documentationjs <https://documentation.js.org/>.

echo "Generating documentation..."

echo "---\ntitle: API\ntype: api\n---\n" > content/documentation/api/index.md
documentation build pannellum/src/js/pannellum.js pannellum/src/js/libpannellum.js -f md --project-name Pannellum --project-version `cat pannellum/VERSION` --markdown-toc false >> content/documentation/api/index.md

echo "---\ntitle: Reference\ntype: reference\n---\n" > content/documentation/reference/index.md
cat pannellum/doc/url-config-parameters.md >> content/documentation/reference/index.md
cat pannellum/doc/json-config-parameters.md >> content/documentation/reference/index.md
cat pannellum/doc/events.md >> content/documentation/reference/index.md
