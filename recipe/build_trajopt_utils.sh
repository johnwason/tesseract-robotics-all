set -e

export SUBPKG_NAME=trajopt_utils

export SUBPKG_SRC_DIR=src/trajopt/$SUBPKG_NAME
export SUBPKG_BUILD_DIR=build_$SUBPKG_NAME

$RECIPE_DIR/build_pkg.sh
