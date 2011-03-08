Compiled from tiff-3.9.2.tar.gz under MSys

Configuration line:
./configure \
  --prefix="/home/nazgul/libtiff-inst" \
  CPPFLAGS=" -I/n/src/packages/blender/lib/windows/zlib/include \
             -I/n/src/packages/blender/lib/windows/jpeg/include" \
  LDFLAGS=" -mwindows -L/n/src/packages/blender/lib/windows/zlib/lib \
            -L/n/src/packages/blender/lib/windows/jpeg/lib "

Configuration details:

Support for internal codecs:
  CCITT Group 3 & 4 algorithms:       yes
  Macintosh PackBits algorithm:       yes
  LZW algorithm:                      yes
  ThunderScan 4-bit RLE algorithm:    yes
  NeXT 2-bit RLE algorithm:           yes
  LogLuv high dynamic range encoding: yes

Support for external codecs:
  ZLIB support:                       yes
  Pixar log-format algorithm:         yes
  JPEG support:                       yes
  Old JPEG support:                   yes
  ISO JBIG support:                   no

  C++ support:                        yes

  OpenGL support:                     no
