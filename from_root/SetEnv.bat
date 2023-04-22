rem echo %~dp0
rem echo %~dp1
rem echo %~d0
rem echo %~f0

set PICO_ROOT=%~dp0


set P=%PICO_ROOT%bin\cmake\bin
set PATH=%P%;%PATH%

set P=%PICO_ROOT%bin\ninja
set PATH=%P%;%PATH%

set P=%PICO_ROOT%bin\gcc\bin
set PATH=%P%;%PATH%

set P=%PICO_ROOT%bin\gcc\arm-none-eabi\bin
set PATH=%P%;%PATH%

set P=%PICO_ROOT%bin\git
set PATH=%P%;%PATH%

set P=%PICO_ROOT%bin\python
set PATH=%P%;%PATH%

rem set P=%PICO_ROOT%bin\msys2
rem set PATH=%P%;%PATH%

set P=%PICO_ROOT%bin\msys2\mingw64\bin
set PATH=%P%;%PATH%


set PICO_SDK_PATH=%PICO_ROOT%pico-sdk
set CMAKE_MAKE_PROGRAM=ninja
set PICO_TOOLCHAIN_PATH=%PICO_ROOT%bin\gcc

rem set CXX=gcc

rem set
rem pause

