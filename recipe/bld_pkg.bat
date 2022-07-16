@echo off

cmake -GNinja ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -DBUILD_SHARED_LIBS=ON ^
  -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON ^
  -DTESSERACT_ENABLE_EXAMPLES=OFF ^
  -DTESSERACT_BUILD_TRAJOPT_IFOPT=OFF ^
  -DNO_OPENCL=ON ^
  %SUBPKG_CMAKE_ARGS% %SUBPKG_CMAKE_ARGS_WIN% ^
  -S %SUBPKG_SRC_DIR% ^
  -B %SUBPKG_BUILD_DIR%
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build %SUBPKG_BUILD_DIR% --config Release
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build %SUBPKG_BUILD_DIR% --config Release --target install
if %errorlevel% neq 0 exit /b %errorlevel%
cd %SUBPKG_BUILD_DIR%
if %errorlevel% neq 0 exit /b %errorlevel%
ctest --output-on-failure
if %errorlevel% neq 0 exit /b %errorlevel%
