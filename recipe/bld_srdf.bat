set SUBPKG_NAME=tesseract_srdf

set SUBPKG_SRC_DIR=src\tesseract\%SUBPKG_NAME%
set SUBPKG_BUILD_DIR=build_%SUBPKG_NAME%

call %RECIPE_DIR%\bld_pkg.bat
if %errorlevel% neq 0 exit /b %errorlevel%
