# =========================================================================
#     This makefile was generated by
#     Bakefile 0.1.1 (http://bakefile.sourceforge.net)
#     Do not modify, all changes will be overwritten!
# =========================================================================

!include ../../../build/config.wat

# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
!  loaddll wlink    wlink
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

PORTNAME =
!ifeq USE_GUI 0
PORTNAME = base
!endif
!ifeq USE_GUI 1
PORTNAME = msw
!endif
VENDORTAG =
!ifeq OFFICIAL_BUILD 0
VENDORTAG = _$(VENDOR)
!endif
!ifeq OFFICIAL_BUILD 1
VENDORTAG = 
!endif
WXDEBUGFLAG =
!ifeq BUILD debug
WXDEBUGFLAG = d
!endif
WXDLLFLAG =
!ifeq SHARED 1
WXDLLFLAG = dll
!endif
WXUNICODEFLAG =
!ifeq UNICODE 1
WXUNICODEFLAG = u
!endif
WXUNIVNAME =
!ifeq WXUNIV 1
WXUNIVNAME = univ
!endif
__DEBUGFLAG =
!ifeq BUILD debug
__DEBUGFLAG = -d2
!endif
!ifeq BUILD release
__DEBUGFLAG = -d0
!endif
__DEBUGFLAG_1 =
!ifeq BUILD debug
__DEBUGFLAG_1 = debug all
!endif
!ifeq BUILD release
__DEBUGFLAG_1 = 
!endif
__DEBUG_DEFINE_p =
!ifeq BUILD debug
__DEBUG_DEFINE_p = -d__WXDEBUG__
!endif
__OPTIMIZEFLAG =
!ifeq BUILD debug
__OPTIMIZEFLAG = -od
!endif
!ifeq BUILD release
__OPTIMIZEFLAG = -ot -ox
!endif
__RUNTIME_LIBS =
!ifeq RUNTIME_LIBS dynamic
__RUNTIME_LIBS = -br
!endif
!ifeq RUNTIME_LIBS static
__RUNTIME_LIBS = 
!endif
__UNICODE_DEFINE_p =
!ifeq UNICODE 1
__UNICODE_DEFINE_p = -dwxUSE_UNICODE=1
!endif
__WXLIB_BASE_p =
!ifeq MONOLITHIC 0
__WXLIB_BASE_p = wxbase25$(WXUNICODEFLAG)$(WXDEBUGFLAG).lib
!endif
__WXLIB_CORE_p =
!ifeq MONOLITHIC 0
__WXLIB_CORE_p = wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_core.lib
!endif
__WXLIB_MONO_p =
!ifeq MONOLITHIC 1
__WXLIB_MONO_p = wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG).lib
!endif
__WXUNIV_DEFINE_p =
!ifeq WXUNIV 1
__WXUNIV_DEFINE_p = -d__WXUNIVERSAL__
!endif
__animatedll___depname =
!ifeq SHARED 1
__animatedll___depname = ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)250$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate_wat$(VENDORTAG).dll
!endif
__animatelib___depname =
!ifeq SHARED 0
__animatelib___depname = ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib
!endif

### Variables: ###

ANIMATEDLL_CXXFLAGS = $(CPPFLAGS) -bd $(__DEBUGFLAG) $(__OPTIMIZEFLAG) -bm $(__RUNTIME_LIBS)  -d__WXMSW__ $(__WXUNIV_DEFINE_p) $(__DEBUG_DEFINE_p) $(__UNICODE_DEFINE_p) -i=..\..\src\animate\..\..\..\include -i=..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG) -i=..\..\src\animate\..\..\..\src\tiff -i=..\..\src\animate\..\..\..\src\jpeg -i=..\..\src\animate\..\..\..\src\png -i=..\..\src\animate\..\..\..\src\zlib  -i=..\..\src\animate\..\..\..\src\regex -i=..\..\src\animate\..\..\..\src\expat\lib -i=..\..\src\animate\..\..\include -dWXUSINGDLL -dWXMAKINGDLL_ANIMATE $(CXXFLAGS) /fh=$(OBJS)\wxprec_animatedll.pch 
ANIMATELIB_CXXFLAGS = $(CPPFLAGS) $(__DEBUGFLAG) $(__OPTIMIZEFLAG) -bm $(__RUNTIME_LIBS)  -d__WXMSW__ $(__WXUNIV_DEFINE_p) $(__DEBUG_DEFINE_p) $(__UNICODE_DEFINE_p) -i=..\..\src\animate\..\..\..\include -i=..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG) -i=..\..\src\animate\..\..\..\src\tiff -i=..\..\src\animate\..\..\..\src\jpeg -i=..\..\src\animate\..\..\..\src\png -i=..\..\src\animate\..\..\..\src\zlib  -i=..\..\src\animate\..\..\..\src\regex -i=..\..\src\animate\..\..\..\src\expat\lib -i=..\..\src\animate\..\..\include $(CXXFLAGS) /fh=$(OBJS)\wxprec_animatelib.pch
OBJS = wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)



all : $(OBJS)
$(OBJS) :
	-if not exist $(OBJS) mkdir $(OBJS)

### Targets: ###

all : .SYMBOLIC $(__animatedll___depname) $(__animatelib___depname)

$(OBJS)\animatedll_animate.obj :  .AUTODEPEND ../../src/animate\animate.cpp
	$(CXX) -zq -fo=$^@ $(ANIMATEDLL_CXXFLAGS) $<

$(OBJS)\animatedll_dummy.obj :  .AUTODEPEND ../../src/animate\..\..\..\src\msw\dummy.cpp
	$(CXX) -zq -fo=$^@ $(ANIMATEDLL_CXXFLAGS) $<

$(OBJS)\animatelib_animate.obj :  .AUTODEPEND ../../src/animate\animate.cpp
	$(CXX) -zq -fo=$^@ $(ANIMATELIB_CXXFLAGS) $<

$(OBJS)\animatelib_dummy.obj :  .AUTODEPEND ../../src/animate\..\..\..\src\msw\dummy.cpp
	$(CXX) -zq -fo=$^@ $(ANIMATELIB_CXXFLAGS) $<

!ifeq SHARED 1
..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)250$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate_wat$(VENDORTAG).dll :  $(OBJS)\animatedll_dummy.obj $(OBJS)\animatedll_animate.obj
	@%create $(OBJS)\animatedll.lbc
	@%append $(OBJS)\animatedll.lbc option quiet
	@%append $(OBJS)\animatedll.lbc name $^@
	@%append $(OBJS)\animatedll.lbc option incremental
	@%append $(OBJS)\animatedll.lbc $(LDFLAGS) $(__DEBUGFLAG_1)  libpath ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)
	@for %i in ( $(OBJS)\animatedll_dummy.obj $(OBJS)\animatedll_animate.obj) do @%append $(OBJS)\animatedll.lbc file %i
	@for %i in ( $(__WXLIB_MONO_p) wxtiff$(WXDEBUGFLAG).lib wxjpeg$(WXDEBUGFLAG).lib wxpng$(WXDEBUGFLAG).lib wxzlib$(WXDEBUGFLAG).lib  wxregex$(WXDEBUGFLAG).lib wxexpat$(WXDEBUGFLAG).lib  kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib odbc32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib  $(__WXLIB_CORE_p) $(__WXLIB_BASE_p)) do @%append $(OBJS)\animatedll.lbc library %i
	@%append $(OBJS)\animatedll.lbc
	@%append $(OBJS)\animatedll.lbc system nt_dll
	wlink @$(OBJS)\animatedll.lbc
	wlib -q -n -b ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib +$^@
!endif

!ifeq SHARED 0
..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib :  $(OBJS)\animatelib_dummy.obj $(OBJS)\animatelib_animate.obj
	@%create $(OBJS)\animatelib.lbc
	@for %i in ( $(OBJS)\animatelib_dummy.obj $(OBJS)\animatelib_animate.obj) do @%append $(OBJS)\animatelib.lbc +%i
	wlib -q -p2048 -n -b $^@ @$(OBJS)\animatelib.lbc
!endif

clean : .SYMBOLIC 
	-if exist $(OBJS)\*.obj del $(OBJS)\*.obj
	-if exist $(OBJS)\*.res del $(OBJS)\*.res
	-if exist $(OBJS)\*.lbc del $(OBJS)\*.lbc
	-if exist $(OBJS)\*.ilk del $(OBJS)\*.ilk
	-if exist ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)250$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate_wat$(VENDORTAG).dll del ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)250$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate_wat$(VENDORTAG).dll
	-if exist ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib del ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib
	-if exist ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib del ..\..\src\animate\..\..\..\lib\wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)\wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_animate.lib
