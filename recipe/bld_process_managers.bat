set SUBPKG_NAME=tesseract_process_managers
set SUBPKG_SRC_DIR=src\tesseract_planning\%SUBPKG_NAME%
set SUBPKG_BUILD_DIR=build_%SUBPKG_NAME%

call %RECIPE_DIR%\bld_pkg.bat
if %errorlevel% neq 0 exit /b %errorlevel%
