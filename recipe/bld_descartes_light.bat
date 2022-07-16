set SUBPKG_NAME=descartes_light

set SUBPKG_SRC_DIR=src\descartes_light\%SUBPKG_NAME%
set SUBPKG_BUILD_DIR=build_%SUBPKG_NAME%

call %RECIPE_DIR%\bld_pkg.bat
if %errorlevel% neq 0 exit /b %errorlevel%
