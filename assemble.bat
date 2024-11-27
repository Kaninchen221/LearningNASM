@echo off

mkdir build 2>nul
nasm\nasm.exe -f obj "main.asm" -o "build/main.obj"