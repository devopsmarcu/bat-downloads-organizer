@echo off
setlocal enabledelayedexpansion

:: Caminho base dinâmico (usuário atual)
set "BASEDIR=%USERPROFILE%"
set "DOWNLOADS=%BASEDIR%\Downloads"

:: Pastas padrão
set "PICTURES=%BASEDIR%\Pictures"
set "VIDEOS=%BASEDIR%\Videos"
set "DOCUMENTS=%BASEDIR%\Documents"
set "MUSIC=%BASEDIR%\Music"
set "DESKTOP=%BASEDIR%\Desktop"

:: Criar subpastas específicas dentro de Downloads
set "ZIP_FOLDER=%DOWNLOADS%\Compactados"
set "EXE_FOLDER=%DOWNLOADS%\Executaveis"
set "ISO_FOLDER=%DOWNLOADS%\ISOs_Instaladores"

mkdir "%ZIP_FOLDER%" >nul 2>&1
mkdir "%EXE_FOLDER%" >nul 2>&1
mkdir "%ISO_FOLDER%" >nul 2>&1

:: Organização principal
call :MoveFiles "%DOWNLOADS%" "%PICTURES%" jpg jpeg png gif bmp tiff webp
call :MoveFiles "%DOWNLOADS%" "%VIDEOS%" mp4 mkv mov avi wmv flv webm
call :MoveFiles "%DOWNLOADS%" "%DOCUMENTS%" pdf doc docx txt xlsx xls ppt pptx odt
call :MoveFiles "%DOWNLOADS%" "%MUSIC%" mp3 wav ogg m4a flac
call :MoveFiles "%DOWNLOADS%" "%ZIP_FOLDER%" zip rar 7z tar gz
call :MoveFiles "%DOWNLOADS%" "%EXE_FOLDER%" exe msi bat cmd
call :MoveFiles "%DOWNLOADS%" "%DESKTOP%" py js sh ps1
call :MoveFiles "%DOWNLOADS%" "%ISO_FOLDER%" iso img apk deb rpm

:: Correções de arquivos fora do lugar
call :MoveFiles "%VIDEOS%" "%PICTURES%" jpg jpeg png gif bmp tiff webp
call :MoveFiles "%PICTURES%" "%VIDEOS%" mp4 mkv mov avi wmv flv webm
call :MoveFiles "%PICTURES%" "%DOCUMENTS%" doc docx pdf txt xlsx xls ppt pptx odt
call :MoveFiles "%VIDEOS%" "%MUSIC%" mp3 wav ogg m4a flac
call :MoveFiles "%PICTURES%" "%MUSIC%" mp3 wav ogg m4a flac
call :MoveFiles "%DOCUMENTS%" "%MUSIC%" mp3 wav ogg m4a flac
call :MoveFiles "%DOCUMENTS%" "%PICTURES%" jpg jpeg png gif bmp tiff webp

echo Organização finalizada com sucesso.
pause
exit /b

:MoveFiles
set "SOURCE=%~1"
set "DEST=%~2"
shift
shift

:loop_ext
if "%~1"=="" exit /b
set "EXT=%~1"
for %%f in ("%SOURCE%\*.%EXT%") do (
    if exist "%%f" move "%%f" "%DEST%" >nul
)
shift
goto loop_ext
