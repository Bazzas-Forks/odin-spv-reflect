@echo off

call setup_cl.bat

cl -nologo -MT -TC -Zi -c spirv_reflect.c
lib -nologo spirv_reflect.obj

del *.obj
