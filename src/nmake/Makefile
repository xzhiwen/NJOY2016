FC = ifort

# FFLAGS  - Fortran compiler flags
# LDFLAGS - Linking flags
FPPFLAGS =
FFLAGS   = /nologo /O2 /fpe:0 /fp:strict /traceback /assume:minus0
LDFLAGS = 

F_DIR = ..

TARGET = njoy2016.exe

OBJS = \
acecm.obj acedo.obj acefc.obj acepa.obj acepn.obj acer.obj aceth.obj broadr.obj ccccr.obj covr.obj dtfr.obj endf.obj \
errorr.obj gaminr.obj gaspr.obj graph.obj groupr.obj heatr.obj leapr.obj locale.obj mainio.obj mathm.obj \
matxsr.obj mixr.obj moder.obj phys.obj plotr.obj powr.obj purr.obj reconr.obj resxsr.obj samm.obj thermr.obj \
unresr.obj util.obj vers.obj viewr.obj wimsr.obj main.obj

$(TARGET): $(OBJS)
	$(FC) /exe:$@ $(OBJS) $(LDFLAGS)
	erase *.obj *.mod

{$(F_DIR)}.f90.obj: ; $(FC) $(FFLAGS) /c $<

acecm.obj: $(F_DIR)\acecm.f90 locale.obj endf.obj mathm.obj phys.obj
endf.obj: $(F_DIR)\endf.f90 locale.obj util.obj
util.obj: $(F_DIR)\util.f90 mainio.obj
acer.obj: $(F_DIR)\acer.f90 aceth.obj
errorr.obj: $(F_DIR)\errorr.f90 samm.obj
