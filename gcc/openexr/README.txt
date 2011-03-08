Compiled from ilmbase-1.0.1 and openexr-1.6.1.tar.gz under MSys

Configuration line for ilmbase:
./configure --prefix=/home/nazgul/openexr-inst LDFLAGS= -mwindows

Configuration line for openexr:
./configure --prefix=/home/nazgul/openexr-inst \
      CPPFLAGS= "-I/n/src/packages/blender/lib/windows/zlib/include \
                 -I/home/nazgul/openexr-inst/include/ \
                 -I/home/nazgul/openexr-inst/include/OpenEXR" \
      LDFLAGS= "-mwindows -L/n/src/packages/blender/lib/windows/zlib/lib \
                -L/home/nazgul/openexr-inst/lib"

Changes, made to the source code, could be found in ilmbase.patch and openexr.patch