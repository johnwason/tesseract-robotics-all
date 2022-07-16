#!/bin/sh

set -e

export SUBPKG_NAME=ros_industrial_cmake_boilerplate

export SUBPKG_SRC_DIR=src/ros_industrial_cmake_boilerplate/ros_industrial_cmake_boilerplate
export SUBPKG_BUILD_DIR=build_$SUBPKG_NAME

$RECIPE_DIR/build_pkg.sh
