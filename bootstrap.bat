set CWD=%cd%
set PROJECT_DIR=%~dp0.


cd %PROJECT_DIR%


if not exist vcpkg\vcpkg-bootstrap.bat (
    git submodule update --init --recursive
)


if not exist vcpkg\vcpkg.exe (
    call vcpkg\bootstrap-vcpkg.bat -disableMetrics
)


if not exist %CMAKE_TOOL% (
    vcpkg\vcpkg.exe install --triplet=x64-windows
)


cd %CWD%
