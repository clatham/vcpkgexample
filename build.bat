set CWD=%cd%
set PROJECT_DIR=%~dp0.
set CMAKE_TOOL=%PROJECT_DIR%\vcpkg\downloads\tools\cmake-3.30.1-windows\cmake-3.30.1-windows-i386\bin\cmake.exe


cd %PROJECT_DIR%


if not exist build\ (
    %CMAKE_TOOL% -B .\build -S . -DCMAKE_TOOLCHAIN_FILE=%PROJECT_DIR%\vcpkg\scripts\buildsystems\vcpkg.cmake
)

%CMAKE_TOOL% --build .\build --config Release --target ALL_BUILD


cd %CWD%
