#!/bin/bash

src="./COLLADAStreamWriter/include
./COLLADABaseUtils/include
./COLLADABaseUtils/include/Math
./COLLADAFramework/include
./GeneratedSaxParser/include
./COLLADASaxFrameworkLoader/include
./COLLADASaxFrameworkLoader/include/generated14
./COLLADASaxFrameworkLoader/include/generated15"

libs="./GeneratedSaxParser/lib/win32/x86/releaseexpat/libGeneratedSaxParser.a
./Externals/MathMLSolver/lib/win32/x86/release/libMathMLSolver.a
./COLLADABaseUtils/lib/win32/x86/release/libOpenCOLLADABaseUtils.a
./COLLADAFramework/lib/win32/x86/release/libOpenCOLLADAFramework.a
./COLLADASaxFrameworkLoader/lib/win32/x86/releaseexpatNovalidation/libOpenCOLLADASaxFrameworkLoader.a
./COLLADAStreamWriter/lib/win32/x86/release/libOpenCOLLADAStreamWriter.a
./Externals/UTF/lib/win32/x86/release/libUTF.a
./Externals/pcre/lib/win32/x86/release/libpcre.a
./Externals/expat/lib/win32/x86/release/libexpat.a
./common/libBuffer/lib/win32/x86/release/libbuffer.a
./common/libftoa/lib/win32/x86/release/libftoa.a"

debug_libs="./GeneratedSaxParser/lib/win32/x86/debugexpat/libGeneratedSaxParser.a
./Externals/MathMLSolver/lib/win32/x86/debug/libMathMLSolver.a
./COLLADABaseUtils/lib/win32/x86/debug/libOpenCOLLADABaseUtils.a
./COLLADAFramework/lib/win32/x86/debug/libOpenCOLLADAFramework.a
./COLLADASaxFrameworkLoader/lib/win32/x86/debugexpatNovalidation/libOpenCOLLADASaxFrameworkLoader.a
./COLLADAStreamWriter/lib/win32/x86/debug/libOpenCOLLADAStreamWriter.a
./Externals/UTF/lib/win32/x86/debug/libUTF.a
./Externals/pcre/lib/win32/x86/debug/libpcre.a
./Externals/expat/lib/win32/x86/debug/libexpat.a
./common/libBuffer/lib/win32/x86/debug/libbuffer.a
./common/libftoa/lib/win32/x86/debug/libftoa.a"

prefix="collada-expat-mingw"
rm -rf open${prefix}
mkdir -p open${prefix}/include

for i in ${src}; do
  mkdir -p open${prefix}/include/${i}
  cp ${i}/*.h open${prefix}/include/${i}
done

mkdir open${prefix}/lib
for i in ${libs}; do
  echo "" > /dev/null
  cp ${i} open${prefix}/lib
done

for i in ${debug_libs}; do
  f=`basename ${i}`
  o=${f/\.a/_d.a}
  cp ${i} open${prefix}/lib/${o}
done
