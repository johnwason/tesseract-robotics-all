set -e

export SUBPKG_NAME=vhacd

export SUBPKG_SRC_DIR=src/trajopt/trajopt_ext/$SUBPKG_NAME
export SUBPKG_BUILD_DIR=build_$SUBPKG_NAME

$RECIPE_DIR/build_pkg.sh
