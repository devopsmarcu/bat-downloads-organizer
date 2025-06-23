#!/bin/bash

# Diretórios base do usuário
BASEDIR="$HOME"
DOWNLOADS="$BASEDIR/Downloads"
PICTURES="$BASEDIR/Pictures"
VIDEOS="$BASEDIR/Videos"
DOCUMENTS="$BASEDIR/Documents"
MUSIC="$BASEDIR/Music"
DESKTOP="$BASEDIR/Desktop"

# Subpastas específicas dentro de Downloads
ZIP_FOLDER="$DOWNLOADS/Compactados"
EXE_FOLDER="$DOWNLOADS/Executaveis"
ISO_FOLDER="$DOWNLOADS/ISOs_Instaladores"

# Criar as pastas se não existirem
mkdir -p "$ZIP_FOLDER" "$EXE_FOLDER" "$ISO_FOLDER"

# Função para mover arquivos por extensão
move_files() {
    local source="$1"
    local dest="$2"
    shift 2
    for ext in "$@"; do
        find "$source" -maxdepth 1 -iname "*.$ext" -exec mv {} "$dest" \;
    done
}

echo "Iniciando organização de arquivos..."

# Organização principal
move_files "$DOWNLOADS" "$PICTURES" jpg jpeg png gif bmp tiff webp
move_files "$DOWNLOADS" "$VIDEOS" mp4 mkv mov avi wmv flv webm
move_files "$DOWNLOADS" "$DOCUMENTS" pdf doc docx txt xlsx xls ppt pptx odt
move_files "$DOWNLOADS" "$MUSIC" mp3 wav ogg m4a flac
move_files "$DOWNLOADS" "$ZIP_FOLDER" zip rar 7z tar gz
move_files "$DOWNLOADS" "$EXE_FOLDER" exe msi bat cmd sh
move_files "$DOWNLOADS" "$DESKTOP" py js ps1
move_files "$DOWNLOADS" "$ISO_FOLDER" iso img apk deb rpm

# Correções de arquivos fora do lugar
move_files "$VIDEOS" "$PICTURES" jpg jpeg png gif bmp tiff webp
move_files "$PICTURES" "$VIDEOS" mp4 mkv mov avi wmv flv webm
move_files "$PICTURES" "$DOCUMENTS" doc docx pdf txt xlsx xls ppt pptx odt
move_files "$VIDEOS" "$MUSIC" mp3 wav ogg m4a flac
move_files "$PICTURES" "$MUSIC" mp3 wav ogg m4a flac
move_files "$DOCUMENTS" "$MUSIC" mp3 wav ogg m4a flac
move_files "$DOCUMENTS" "$PICTURES" jpg jpeg png gif bmp tiff webp

echo "Organização finalizada com sucesso."
