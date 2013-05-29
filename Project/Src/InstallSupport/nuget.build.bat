REM $(ProjectDir)\..\InstallSupport\nuget.build.bat
@ECHO === === === === === === === ===
SET NUGET=..\..\..\..\InstallSupport\NuGet.exe
SET OUTDIR=D:\temp
SET VER=0.0.0.6-EAP

@ECHO ===NUGET Publishing to %OUTDIR%
%NUGET% pack TestCop.nuspec -Symbols
%NUGET% push Resharper.TestCop.%VER%.symbols.nupkg -ApiKey XXX -Source %OUTDIR%
@ECHO === === === === === === === ===