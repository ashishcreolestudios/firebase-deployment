#!/bin/sh

# Script to create build and deploy to beta
echo "Creating optimized build that will be deployed on beta server...." &
build= yarn build
wait $build
echo "Build is been generated... Deploying Project to beta..." &
deploy= firebase deploy --only hosting:beta
wait $deploy
echo "Project is been deployed. pushing code to repository....."