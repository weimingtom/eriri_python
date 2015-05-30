# Microsoft Developer Studio Project File - Name="python" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=python - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "python.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "python.mak" CFG="python - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "python - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "python - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "python - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "python - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "Include" /I "." /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "python - Win32 Release"
# Name "python - Win32 Debug"
# Begin Group "Modules"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Modules\_sre.c
# End Source File
# Begin Source File

SOURCE=.\Modules\config.c
# End Source File
# Begin Source File

SOURCE=.\Modules\errnomodule.c
# End Source File
# Begin Source File

SOURCE=.\Modules\gcmodule.c
# End Source File
# Begin Source File

SOURCE=.\Modules\getbuildinfo.c
# End Source File
# Begin Source File

SOURCE=.\Modules\getpath.c
# End Source File
# Begin Source File

SOURCE=.\Modules\main.c
# End Source File
# Begin Source File

SOURCE=.\Modules\newmodule.c
# End Source File
# Begin Source File

SOURCE=.\Modules\posixmodule.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Modules\python.c
# End Source File
# Begin Source File

SOURCE=.\Modules\signalmodule.c
# End Source File
# Begin Source File

SOURCE=.\Modules\sre.h
# End Source File
# Begin Source File

SOURCE=.\Modules\sre_constants.h
# End Source File
# Begin Source File

SOURCE=.\Modules\symtablemodule.c
# End Source File
# Begin Source File

SOURCE=.\Modules\threadmodule.c
# End Source File
# Begin Source File

SOURCE=.\Modules\xxsubtype.c
# End Source File
# End Group
# Begin Group "Objects"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Objects\abstract.c
# End Source File
# Begin Source File

SOURCE=.\Objects\bufferobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\cellobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\classobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\cobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\complexobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\descrobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\dictobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\fileobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\floatobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\frameobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\funcobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\intobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\iterobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\listobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\longobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\methodobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\moduleobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\object.c
# End Source File
# Begin Source File

SOURCE=.\Objects\rangeobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\sliceobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\stringobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\structseq.c
# End Source File
# Begin Source File

SOURCE=.\Objects\tupleobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\typeobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\unicodectype.c
# End Source File
# Begin Source File

SOURCE=.\Objects\unicodeobject.c
# End Source File
# Begin Source File

SOURCE=.\Objects\unicodetype_db.h
# End Source File
# Begin Source File

SOURCE=.\Objects\weakrefobject.c
# End Source File
# End Group
# Begin Group "Parser"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Parser\acceler.c
# End Source File
# Begin Source File

SOURCE=.\Parser\bitset.c
# End Source File
# Begin Source File

SOURCE=.\Parser\grammar1.c
# End Source File
# Begin Source File

SOURCE=.\Parser\listnode.c
# End Source File
# Begin Source File

SOURCE=.\Parser\metagrammar.c
# End Source File
# Begin Source File

SOURCE=.\Parser\myreadline.c
# End Source File
# Begin Source File

SOURCE=.\Parser\node.c
# End Source File
# Begin Source File

SOURCE=.\Parser\parser.c
# End Source File
# Begin Source File

SOURCE=.\Parser\parser.h
# End Source File
# Begin Source File

SOURCE=.\Parser\parsetok.c
# End Source File
# Begin Source File

SOURCE=.\Parser\pgen.h
# End Source File
# Begin Source File

SOURCE=.\Parser\tokenizer.c
# End Source File
# Begin Source File

SOURCE=.\Parser\tokenizer.h
# End Source File
# End Group
# Begin Group "Python"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Python\bltinmodule.c
# End Source File
# Begin Source File

SOURCE=.\Python\ceval.c
# End Source File
# Begin Source File

SOURCE=.\Python\codecs.c
# End Source File
# Begin Source File

SOURCE=.\Python\compile.c
# End Source File
# Begin Source File

SOURCE=.\Python\dynload_shlib.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Python\dynload_stub.c

!IF  "$(CFG)" == "python - Win32 Release"

!ELSEIF  "$(CFG)" == "python - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Python\dynload_win.c

!IF  "$(CFG)" == "python - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "python - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Python\errors.c
# End Source File
# Begin Source File

SOURCE=.\Python\exceptions.c
# End Source File
# Begin Source File

SOURCE=.\Python\frozen.c
# End Source File
# Begin Source File

SOURCE=.\Python\future.c
# End Source File
# Begin Source File

SOURCE=.\Python\getargs.c
# End Source File
# Begin Source File

SOURCE=.\Python\getcompiler.c
# End Source File
# Begin Source File

SOURCE=.\Python\getcopyright.c
# End Source File
# Begin Source File

SOURCE=.\Python\getmtime.c
# End Source File
# Begin Source File

SOURCE=.\Python\getopt.c
# End Source File
# Begin Source File

SOURCE=.\Python\getplatform.c
# End Source File
# Begin Source File

SOURCE=.\Python\getversion.c
# End Source File
# Begin Source File

SOURCE=.\Python\graminit.c
# End Source File
# Begin Source File

SOURCE=.\Python\import.c
# End Source File
# Begin Source File

SOURCE=.\Python\importdl.c
# End Source File
# Begin Source File

SOURCE=.\Python\importdl.h
# End Source File
# Begin Source File

SOURCE=.\Python\marshal.c
# End Source File
# Begin Source File

SOURCE=.\Python\modsupport.c
# End Source File
# Begin Source File

SOURCE=.\Python\mysnprintf.c
# End Source File
# Begin Source File

SOURCE=.\Python\mystrtoul.c
# End Source File
# Begin Source File

SOURCE=.\Python\pyfpe.c
# End Source File
# Begin Source File

SOURCE=.\Python\pystate.c
# End Source File
# Begin Source File

SOURCE=.\Python\pythonrun.c
# End Source File
# Begin Source File

SOURCE=.\Python\structmember.c
# End Source File
# Begin Source File

SOURCE=.\Python\symtable.c
# End Source File
# Begin Source File

SOURCE=.\Python\sysmodule.c
# End Source File
# Begin Source File

SOURCE=.\Python\thread.c
# End Source File
# Begin Source File

SOURCE=.\Python\thread_nt.h
# End Source File
# Begin Source File

SOURCE=.\Python\thread_pthread.h
# End Source File
# Begin Source File

SOURCE=.\Python\traceback.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\pyconfig.h
# End Source File
# End Target
# End Project
