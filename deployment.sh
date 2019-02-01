#!/bin/sh

# uniquify and sort the Xcode projct files
# yarn build
# firebase deploy --only hosting:beta

echo "Creating a build to be deployed" &
build= yarn build
wait $build
echo "Build generated" &
deploy= firebase deploy --only hosting:beta
wait $deploy
echo "project deployed"