Compiled from OpenCollada rev746 with MinGW

I've made some changes to the collada work tree to be able to compile it.
Changes could be found in compile_r746_forblender.patch

Release compile line:
scons RELEASE=1 NOVALIDATION=1 XMLPARSER=expat PCRENATIVE=0 SHAREDLIB=0 tools=mingw

Debug compile line:
scons RELEASE=0 NOVALIDATION=1 XMLPARSER=expat PCRENATIVE=0 SHAREDLIB=0 tools=mingw

I've used script prepare_lib-expat-mingw.sh to prepare
needed lib/ and include/ directories
