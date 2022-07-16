#!/bin/sh

set -e

export SUBPKG_NAME=tesseract_collision

export SUBPKG_SRC_DIR=src/tesseract/$SUBPKG_NAME
export SUBPKG_BUILD_DIR=build_$SUBPKG_NAME

$RECIPE_DIR/build_pkg.sh
