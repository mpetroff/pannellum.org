#!/bin/sh

# Generates documentation files.
# Requires documentationjs <http://documentation.js.org/>.

echo "Generating documentation..."

echo "---\ntitle: API\ntype: api\n---\n" > content/documentation/api/index.md
documentation pannellum/src/js/pannellum.js pannellum/src/js/libpannellum.js -f md --name Pannellum --project-version `cat pannellum/VERSION` >> content/documentation/api/index.md

echo "---\ntitle: Reference\ntype: reference\n---\n" > content/documentation/reference/index.md
cat pannellum/doc/url-config-parameters.md >> content/documentation/reference/index.md
cat pannellum/doc/json-config-parameters.md >> content/documentation/reference/index.md
