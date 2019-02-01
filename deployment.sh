#!/bin/sh

# uniquify and sort the Xcode projct files
yarn build
firebase deploy --only hosting:beta