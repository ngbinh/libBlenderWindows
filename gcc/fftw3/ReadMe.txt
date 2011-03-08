FFTW version 3.2.2

Compiled by Sergey I. Sharybin <g.ulairi@gmail.com> under cygwin with such configuration:

$ ./configure --target=mingw32 --host=mingw32 --build=mingw32 --with-our-malloc16 \
  --with-windows-f77-mangling --enable-shared --enable-threads \
  --with-combined-threads --enable-portable-binary \
  --enable-sse2 --disable-shared
