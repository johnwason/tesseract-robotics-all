set -e

export SUBPKG_NAME=descartes_light

export SUBPKG_SRC_DIR=src/descartes_light/$SUBPKG_NAME
export SUBPKG_BUILD_DIR=build_$SUBPKG_NAME

$RECIPE_DIR/build_pkg.sh
