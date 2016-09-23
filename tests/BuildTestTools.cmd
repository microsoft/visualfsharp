@echo off

if /i "%1" == "debug" goto :ok
if /i "%1" == "release" goto :ok

echo Builds a few test tools using latest compiler and runtime
echo Usage:
echo    BuildTestTools.cmd debug
echo    BuildTestTools.cmd release
exit /b 1

:ok

if exist "%VS150COMNTOOLS%\VsMSBuildCmd.bat" (
    call "%VS150COMNTOOLS%\VsMSBuildCmd.bat"
    goto :havemsbuild
)

if exist "%VS140COMNTOOLS%\VsMSBuildCmd.bat" (
    call "%VS140COMNTOOLS%\VsMSBuildCmd.bat"
    goto :havemsbuild
)

if exist "%VS120COMNTOOLS%\VsMSBuildCmd.bat" (
    call "%VS120COMNTOOLS%\VsMSBuildCmd.bat"
    goto :havemsbuild
)

echo Error: Could not find VS installation. Will not be able to locate msbuild.
goto :eof

:havemsbuild
set _msbuildexe=msbuild

if not exist "%~dp0fsharpqa\testenv\bin" mkdir "%~dp0fsharpqa\testenv\bin"  || goto :error
%_msbuildexe% %~dp0fsharpqa\testenv\src\ILComparer\ILComparer.fsproj /p:Configuration=%1 /t:Build  || goto :error
xcopy /Y %~dp0fsharpqa\testenv\src\ILComparer\bin\%1\* %~dp0fsharpqa\testenv\bin  || goto :error

%_msbuildexe% %~dp0fsharpqa\testenv\src\diff\diff.fsproj /p:Configuration=%1 /t:Build  || goto :error
xcopy /Y %~dp0fsharpqa\testenv\src\diff\bin\%1\* %~dp0fsharpqa\testenv\bin  || goto :error

%_msbuildexe% %~dp0fsharpqa\testenv\src\HostedCompilerServer\HostedCompilerServer.fsproj /p:Configuration=%1 /t:Build  || goto :error
xcopy /Y %~dp0fsharpqa\testenv\src\HostedCompilerServer\bin\%1\* %~dp0fsharpqa\testenv\bin  || goto :error

%_msbuildexe% %~dp0fsharpqa\testenv\src\ExecAssembly\ExecAssembly.fsproj /p:Configuration=%1 /t:Build /p:Platform=x86  || goto :error
xcopy /IY %~dp0fsharpqa\testenv\src\ExecAssembly\bin\%1\* %~dp0fsharpqa\testenv\bin\x86  || goto :error

%_msbuildexe% %~dp0fsharpqa\testenv\src\ExecAssembly\ExecAssembly.fsproj /p:Configuration=%1 /t:Build /p:Platform=x64  || goto :error
xcopy /IY %~dp0fsharpqa\testenv\src\ExecAssembly\bin\%1\* %~dp0fsharpqa\testenv\bin\AMD64  || goto :error

if exist %~dp0..\%1\net40\bin (
    xcopy /Y %~dp0..\%1\net40\bin\FSharp.Core.sigdata %~dp0fsharpqa\testenv\bin  || goto :error
    xcopy /Y %~dp0..\%1\net40\bin\FSharp.Core.optdata %~dp0fsharpqa\testenv\bin  || goto :error
)

echo set NUNITPATH=%~dp0%..\packages\NUnit.Console.3.0.0\tools\
set NUNITPATH=%~dp0%..\packages\NUnit.Console.3.0.0\tools\
echo if not exist "%NUNITPATH%" 

set _fsiexe="%~dp0..\%1\net40\bin\fsi.exe"
  
if '%BUILD_CORECLR%' == '1' (

  if not exist "%NUNITPATH%" (
      pushd %~dp0..
      ..\.nuget\nuget.exe restore ..\packages.config -PackagesDirectory ..\packages
      popd
  )    

  rem deploy x86 version of compiler and dependencies
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/win7-x86 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\fsc\win7-x86 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:yes --v:quiet
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/win7-x86 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\win7-x86 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:no --v:quiet

  rem deploy x64 version of compiler
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/win7-x64 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\fsc\win7-x64 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:yes --v:quiet
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/win7-x64 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\win7-x64 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:no --v:quiet

  rem deploy linux version of built compiler
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/ubuntu.14.04-x64 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\fsc\ubuntu.14.04-x64 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:yes --v:quiet
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/ubuntu.14.04-x64 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\ubuntu.14.04-x64 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:no --v:quiet

  rem deploy osx version of built compiler
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/osx.10.10-x64 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\fsc\osx.10.10-x64 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:yes --v:quiet
  %_fsiexe% --exec %~dp0fsharpqa\testenv\src\DeployProj\DeployProj.fsx --targetPlatformName:.NETStandard,Version=v1.6/osx.10.10-x64 --projectJson:%~dp0fsharp\project.json --projectJsonLock:%~dp0fsharp\project.lock.json --packagesDir:%~dp0..\packages --fsharpCore:%~dp0..\%1\coreclr\bin\fsharp.core.dll --output:%~dp0testbin\%1\coreclr\osx.10.10-x64 --nugetPath:%~dp0..\.nuget\nuget.exe --nugetConfig:%~dp0..\.nuget\nuget.config --copyCompiler:no --v:quiet

  echo  "%NUNITPATH%*.*"  "%~dp0fsharpqa\testenv\bin\nunit\*.*" /S /Q /Y
  xcopy "%NUNITPATH%*.*"  "%~dp0fsharpqa\testenv\bin\nunit\*.*" /S /Q /Y

  echo  "%~dp0fsharpqa\testenv\src\nunit*.*" "%~dp0fsharpqa\testenv\bin\nunit\*.*" /S /Q /Y
  xcopy "%~dp0fsharpqa\testenv\src\nunit*.*" "%~dp0fsharpqa\testenv\bin\nunit\*.*" /S /Q /Y

)

goto :EOF

:error
echo Failed with error %errorlevel%.
exit /b %errorlevel%
