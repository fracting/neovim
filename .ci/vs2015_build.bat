mkdir build
cd build
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=..\INSTALL .. || goto :error
nmake VERBOSE=1 || goto :error
bin\nvim.exe --version || goto :error

cd ..

goto :EOF
:error
exit /b %errorlevel%
