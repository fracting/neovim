:: libuv uses gyp, force it to use VS 2015
set GYP_MSVS_VERSION=2015
mkdir .deps
cd .deps
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release ..\third-party\ || goto :error
nmake VERBOSE=1 || goto :error
cd ..

goto :EOF
:error
exit /b %errorlevel%
