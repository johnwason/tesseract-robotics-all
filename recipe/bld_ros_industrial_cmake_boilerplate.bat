
set SUBPKG_NAME=ros_industrial_cmake_boilerplate

set SUBPKG_SRC_DIR=src\ros_industrial_cmake_boilerplate\ros_industrial_cmake_boilerplate
set SUBPKG_BUILD_DIR=build_%SUBPKG_NAME%

call %RECIPE_DIR%\bld_pkg.bat
if %errorlevel% neq 0 exit /b %errorlevel%