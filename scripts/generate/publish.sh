#!/bin/sh

set -e

pnpm i --frozen-lockfile

pnpm build

cd dist/bzsh-icon
npm publish --provenance
cd -

echo "✅ Publish completed"

