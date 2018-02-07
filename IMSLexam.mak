# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=IMSLexam - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to IMSLexam - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "IMSLexam - Win32 Release" && "$(CFG)" !=\
 "IMSLexam - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "IMSLexam.mak" CFG="IMSLexam - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "IMSLexam - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "IMSLexam - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "IMSLexam - Win32 Debug"
RSC=rc.exe
CPP=cl.exe
F90=fl32.exe

!IF  "$(CFG)" == "IMSLexam - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ""
# PROP Intermediate_Dir ""
# PROP Target_Dir ""
OUTDIR=.
INTDIR=.

ALL : ".\IMSLexam.exe"

CLEAN : 
	-@erase ".\CPSEC.OBJ"
	-@erase ".\IMSLexam.exe"
	-@erase ".\IMSLexam.obj"
	-@erase ".\TDATE.OBJ"
	-@erase ".\TIMDY.OBJ"

# ADD BASE F90 /Ox /I "Release/" /c /nologo
# ADD F90 /4Nportlib /c /nologo
# SUBTRACT F90 /Ox
F90_PROJ=/4Nportlib /c /nologo 
F90_OBJS=
CPP_OBJS=.\.
CPP_SBRS=.\.
# ADD BASE RSC /l 0x419 /d "NDEBUG"
# ADD RSC /l 0x419 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/IMSLexam.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /pdb:none /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /pdb:none /machine:I386\
 /out:"$(OUTDIR)/IMSLexam.exe" 
LINK32_OBJS= \
	".\CPSEC.OBJ" \
	".\IMSLexam.obj" \
	".\TDATE.OBJ" \
	".\TIMDY.OBJ"

".\IMSLexam.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "IMSLexam - Win32 Debug"

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
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : ".\Debug\IMSLexam.exe"

CLEAN : 
	-@erase ".\Debug\CPSEC.OBJ"
	-@erase ".\Debug\IMSLexam.exe"
	-@erase ".\Debug\IMSLexam.ilk"
	-@erase ".\Debug\IMSLexam.obj"
	-@erase ".\Debug\IMSLexam.pdb"
	-@erase ".\Debug\TDATE.OBJ"
	-@erase ".\Debug\TIMDY.OBJ"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Zi /I "Debug/" /c /nologo
# ADD F90 /Zi /I "Debug/" /c /nologo
F90_PROJ=/Zi /I "Debug/" /c /nologo /Fo"Debug/" /Fd"Debug/IMSLexam.pdb" 
F90_OBJS=.\Debug/
CPP_OBJS=.\Debug/
CPP_SBRS=.\.
# ADD BASE RSC /l 0x419 /d "_DEBUG"
# ADD RSC /l 0x419 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/IMSLexam.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/IMSLexam.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/IMSLexam.exe" 
LINK32_OBJS= \
	".\Debug\CPSEC.OBJ" \
	".\Debug\IMSLexam.obj" \
	".\Debug\TDATE.OBJ" \
	".\Debug\TIMDY.OBJ"

".\Debug\IMSLexam.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

CPP_PROJ=/ML 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "IMSLexam - Win32 Release"
# Name "IMSLexam - Win32 Debug"

!IF  "$(CFG)" == "IMSLexam - Win32 Release"

!ELSEIF  "$(CFG)" == "IMSLexam - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\IMSLexam.FOR

!IF  "$(CFG)" == "IMSLexam - Win32 Release"


".\IMSLexam.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "IMSLexam - Win32 Debug"


".\Debug\IMSLexam.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\MSDEV\SAMPLES\GENERAL\IMSL\SYSTEM\CPSEC.FOR

!IF  "$(CFG)" == "IMSLexam - Win32 Release"


".\CPSEC.OBJ" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "IMSLexam - Win32 Debug"


".\Debug\CPSEC.OBJ" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\MSDEV\SAMPLES\GENERAL\IMSL\SYSTEM\TDATE.FOR

!IF  "$(CFG)" == "IMSLexam - Win32 Release"


".\TDATE.OBJ" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "IMSLexam - Win32 Debug"


".\Debug\TDATE.OBJ" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\MSDEV\SAMPLES\GENERAL\IMSL\SYSTEM\TIMDY.FOR

!IF  "$(CFG)" == "IMSLexam - Win32 Release"


".\TIMDY.OBJ" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "IMSLexam - Win32 Debug"


".\Debug\TIMDY.OBJ" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
