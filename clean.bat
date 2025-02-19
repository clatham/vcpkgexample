set CWD=%cd%
set PROJECT_DIR=%~dp0.


cd %PROJECT_DIR%


if exist build\ (
    rmdir /s /q build
)


cd %CWD%
