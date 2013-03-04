EXEC = sobelApp.exe
SWMODEL = ../sim/CaeSimPers

all:	$(EXEC) $(SWMODEL)

clean:
	rm -f $(EXEC)
	make --directory=../sim clean

$(EXEC):	sobelApp.cpp cpsobel.s
	cnyCC -g sobelApp.cpp cpsobel.s -o sobelApp.exe

$(SWMODEL): ../Makefile.include ../sim/CaeIsasobel.cpp
	make -C ../sim
