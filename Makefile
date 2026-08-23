# Copyright (C)  2025 Cristofor Rotsching. 
# Permission is granted to copy, distribute and/or modify this document
# under the terms of the GNU Free Documentation License, Version 1.3
# or any later version published by the Free Software Foundation;
# with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
# Texts.  A copy of the license is included in the section entitled ``GNU
# Free Documentation License''.

#   obj/PA/Destination.o
#   obj/PA/Arrow.o
#   obj/PA/Feature.o
#prefix=/usr/local
# prefix=/usr/local/
prefix=.
exec_prefix=$(prefix)
bindir=$(prefix)/bin
sbindir=$(exec_prefix)/sbin
libexdir=$(exec_prefix)/libexec
datarootdir=$(prefix)/share
datadir=$(datarootdir)
sysconfdir=$(prefix)/etc
sharedstatedir=$(prefix)/com
localstatedir=$(prefix)/var
runstatedir=$(localstatedir)/run
includedir=$(prefix)/include
oldincludedir=/usr/local/
docdir=$(datarootdir)/doc/yourpkg
infodir=$(datarootdir)/info
htmldir=$(docdir)
dvdir=$(docdir)
pdfdir=$(docdir)
# /usr/local/
psdir=$(docdir)
# /usr/local/share/emacs/site-lisp
libdir=$(exec_prefix)/lib
lispdir=$(datarootdir)/emacs-site-lisp #d
localedir=$(datarootdir)/locale
mandir=$(datarootdir)/man
man1dir=$(mandir)/man1
man2dir=$(mandir)/man2
manext=.1
man1ext=
man2ext=
srcdir=
output=libarraylist.a
all: preprocess assemble compile test.out test
preprocess: preprocess_arraylist 
compile: compile_arraylist 
assemble: assemble_arraylist 

preprocess_test_arraylist: $(sources_test_arraylist)

compile_test_arraylist: assemble_test_arraylist

assemble_test_arraylist: preprocess_test_arraylist 

    @echo "Building"
link: link_arraylist
    src/mkinstalldirs $(libdir) $(libdir)/ArrayList

mostlyclean:
    rm $(foreach object,$(objects_arraylist),$(libdir)/$(object))
    rm $(foreach assembly,$(assemblies_arraylist),$(srcdir)/$(assembly))
    rm $(foreach source,$(sources_arraylist),$(srcdir)/$(source))
    rm $(foreach test,$(sources_test_arraylist),$(srcdir)/$(test))

maintainer-clean:
    rm $(foreach object,$(objects_arraylist),$(libdir)/$(object))
    rm $(foreach assembly,$(assemblies_arraylist),$(srcdir)/$(assembly))
    rm $(foreach source,$(sources_arraylist),$(srcdir)/$(source))
    rm $(foreach test,$(sources_test_arraylist),$(srcdir)/$(test))
realclean:
clobber:

install:
    $(srcdir)/mkinstalldirs $(bindir) $(datadir) $(libdir) $(infodir) $(mandir)
    $(srcdir)/mkinstalldirs $(libdir)/ArrayList

#   mkdir $(subdirs)
#   cp out/libpa.a $(libdir)
#   cp -r obj/*.o $(libdir)
#
installcheck:
    ls $(foreach subdir,$(subdirs),$(subdir))
#   ls $(libdir) | grep libpa.a
#   ls $(libdir) | grep $(objects)/PA
print:
    git status
    ar -T -t $(libdir)/libpa.a
tar:
    tar cvf palibrary.tar $(srcdir)/PA/
shar:
dist:
    tar cvf libpa.tar.gz $(libdir)/libpa.a
check:
test:
ifeq ($(host-type), arm64)
    file $(bindir)/libpa.a
endif

ifeq ($(host-type),AArch64)
    $(CC) -c $(CFLAGS) $(libdir)/test.o $(libdir)/libpa.a -o $(bindir)/test
endif

objects_arraylist= ArrayList/ArrayList.o \
    ArrayList/ArrayListPosition.o


sources_arraylist= ArrayList/ArrayList.i \
    ArrayList/ArrayListPosition.i

designs_arraylist= ArrayList/ArrayList.c \
    ArrayList/ArrayListPosition.c

assemblies_arraylist= ArrayList/ArrayListPosition.s \
    ArrayList/ArrayList.s



sources_test_arraylist=

assemblies_test_arraylist =

objects_test_arraylist= 

program_test_arraylist= test.out

distclean:
    rm $(foreach source,$(sources_arraylist),$(srcdir)/$(source))
    rm $(foreach source,$(sources_test_arraylist),$(srcdir)/$(source))

    rm $(foreach assembly,$(assemblies_arraylist),$(srcdir)/$(assembly))
    rm $(foreach assembly,$(assemblies_test_arraylist),$(srcdir)/$(assembly))

    rm $(foreach object,$(objects_arraylist),$(libdir)/$(object))
    rm $(foreach object,$(objects_test_arraylist),$(libdir)/$(object))

    rm $(foreach program,$(program_test_arraylist),$(bindir)/$(program))

objdirs= $(libdir)/ \
    $(libdir)/BFS/ \
    $(libdir)/ArrayList/ \
    $(libdir)/PA/


subdirs= $(libdir)/ \
    $(libdir)/BFS/ \
    $(libdir)/ArrayList/ \
    $(libdir)/PA/

ifeq (0,${MAKELEVEL})
host-type := $(shell arch)
endif

lib_arraylist= libarraylist.a

output_dir= out
output_arraylist= $(output_dir)/$(lib_arraylist)

assemble_arraylist: $(assemblies_arraylist) $(assemblies_test_arraylist)

compile_arraylist: $(objects_arraylist) $(objects_test_arraylist)

preprocess_arraylist: $(sources_arraylist) $(sources_test_arraylist)

link_arraylist: $(output_arraylist) $(link_test_arraylist)

run_pa: $(test_pa)

link_test_arraylist: $(objects_test_arraylist) $(output_arraylist)
    @echo "Testing"

lib: out/$(output)
build: preprocess compile assemble test
${subdirs}:
    -mkdir $@

build: $(subdirs)

libpa.a: $(objects_pa)
    src/mkinstalldirs $(bindir) $(datadir) $(libdir) $(infodir) $(mandir)
    $(AR) -v -s -q $(libdir)/$(output) $(foreach object,$^,$(libdir)/$(object))  
    $(AR) -v -t -s $(libdir)/$(output)

build: preprocess assemble compile

srcdir=$(prefix)/src

CPPFLAGS=
CPPFLAGS+=-I$(prefix)/include -I$(prefix)

defs.h: $(includedir)/defs.h
types.h: $(includedir)/types.h

ArrayList/ArrayList.h: $(includedir)/ArrayList/ArrayList.h
ArrayList/ArrayListPosition.h: $(includedir)/ArrayList/ArrayListPosition.h

ArrayList/ArrayList.c: ArrayList/ArrayList.h $(srcdir)/ArrayList/ArrayList.c
ArrayList/ArrayListPosition.c: ArrayList/ArrayListPosition.h $(srcdir)/ArrayList/ArrayListPosition.c

ArrayList/ArrayList.i: $(srcdir)/ArrayList/ArrayList.c $(includedir)/defs.h $(includedir)/types.h $(includedir)/ArrayList/ArrayList.h
    $(CPP) $(CPPFLAGS) -E $< > $(srcdir)/$@
ArrayList/ArrayListPosition.i : $(srcdir)/ArrayList/ArrayListPosition.c $(includedir)/ArrayList/ArrayList.h $(includedir)/defs.h $(includedir)/types.h
    $(CPP) $(CPPFLAGS) -E $< > $(srcdir)/$@

ArrayList/ArrayList.s: ArrayList/ArrayList.i
    $(CC) -S $(srcdir)/$< -o $(srcdir)/$@
ArrayList/ArrayListPosition.s: ArrayList/ArrayListPosition.i
    $(CC) -S $(srcdir)/$< -o $(srcdir)/$@

test.i: test/test.c
    $(CPP) $(CPPFLAGS) -E $< > $(srcdir)/$@
test.s: test.i
    $(CC) -S $(srcdir)/$< -o $(srcdir)/$@

test.o: test.s
ifeq ($(host-type),arm64)
    $(AS) $(ASFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif
ifeq ($(host-type),x86_64)
    $(CC) -c $(CFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif
ifeq ($(host-type),AArch64)
    $(AS) $(ASFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif



test.out: $(objects) test.o test.out libarraylist.a
    $(CC) $(libdir)/test.o $(foreach object,$(objects_arraylist),$(libdir)/$(object)) -o $(bindir)/$(program_test_arraylist	)

ASFLAGS=
ifeq ($(host-type),arm64)
ASFLAGS=-arch $(host-type)
endif
ifeq ($(host-type),x86_64)
CFLAGS=-march=x86_64
endif
ifeq ($(host-type),AArch64)
ASFLAGS=-march=armv8.3-a
endif

ArrayList/ArrayList.o: ArrayList/ArrayList.s
ifeq ($(host-type),arm64)
    $(AS) $(ASFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif
ifeq ($(host-type),x86_64)
    $(CC) -c $(CFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif
ifeq ($(host-type),AArch64)
    $(AS) $(ASFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif



ArrayList/ArrayListPosition.o : ArrayList/ArrayListPosition.s
ifeq ($(host-type),arm64)
    $(AS) $(ASFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif
ifeq ($(host-type),x86_64)
    $(CC) -c $(CFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif
ifeq ($(host-type),AArch64)
    $(AS) $(ASFLAGS) $(srcdir)/$< -o $(libdir)/$@
endif

installdirs: mkinstalldirs
    $(srcdir)/mkinstalldirs $(DESTDIR)$(bindir) $(DESTDIR)$(datadir) \
                $(DESTDIR)$(libdir) $(DESTDIR)$(infodir) \
                $(DESTDIR)$(mandir) \
                $(DESTDIR)$(subdirs) \
                $(DESTDIR)$(objdirs)

mkinstalldirs: $(srcdir)/mkinstalldirs

$(output_dir)/$(lib_arraylist):
ifeq ($(host-type),arm64)
    $(AR) -r $@ $(objects_arraylist)
endif

clean:
    rm $(foreach source,$(sources_arraylist),$(srcdir)/$(source))
    rm $(foreach test,$(sources_test_arraylist),$(srcdir)/$(test))

    rm $(foreach assembly,$(assemblies_arraylist),$(srcdir)/$(assembly))
    rm $(foreach test,$(assemblies_test_arraylist),$(srcdir)/$(test))
#   rm $(foreach assembly,$(assemblies_bfs),$(srcdir)/$(assebmbly))
#   rm $(foreach assembly,$(assemblies_arraylist),$(srcdir)/$(assembly))
    rm $(foreach object,$(objects_arraylist),$(libdir)/$(object))
    rm $(foreach object,$(objects_test_arraylist),$(libdir)/$(object))

arraylist: 
# ${designs_arraylist} ${sources_arraylist} ${assemblies_arraylist} ${objects_arraylist} $(output_arraylist)

run:
    @echo "Running"

.PHONY: all install installcheck test

