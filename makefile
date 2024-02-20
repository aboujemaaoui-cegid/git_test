BIN_LIB=PERSO_AB
LIBLIST=QTEMP $(BIN_LIB) QGPL 
SHELL=/QOpenSys/usr/bin/qsh

all: copy.rpgle

copy.rpgle:
	liblist -d QGPL QTEMP && liblist -c $(BIN_LIB) && liblist -a $(LIBLIST) && system "CRTBNDRPG PGM($(BIN_LIB)/$*) SRCFILE($(BIN_LIB)/QSRC) DBGVIEW(*SOURCE) TGTRLS(*CURRENT) OPTION(*EVENTF)"

#%.pf:
#	liblist -d QGPL QTEMP && liblist -c $(BIN_LIB) && liblist -a $(LIBLIST) && system  "CRTPF FILE($(BIN_LIB)/$*) SRCFILE($(BIN_LIB)/QFIC) SRCMBR($*) OPTION(*EVENTF) SIZE(*NOMAX) MAXMBRS(1)"