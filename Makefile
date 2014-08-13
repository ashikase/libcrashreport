build:
	make -f Makefile.x86_64
	make -f Makefile.arm
	lipo -create obj/libcrashreport.dylib obj/macosx/libcrashreport.dylib -output libcrashreport.dylib
	mv libcrashreport.dylib obj/libcrashreport.dylib

clean:
	make -f Makefile.x86_64 clean
	make -f Makefile.arm clean

distclean:
	make -f Makefile.x86_64 distclean
	make -f Makefile.arm distclean

package: build
	make -f Makefile.arm package

install:
	make -f Makefile.arm install
