This directory contains r22941 from http://ffmpeg.arrozcru.org/autobuilds/ (April 22nd, 2010)

Some quick mods:

1. rename the .lib files according to .dll naming (include version number)
2. put stdint.h and inttypes.h in subfolder msvc to prevent conflicts with mingw
3. add to libavutil\common.h after line 53
	#define inline __inline
4. modify stdint.h to make it compatible with MSVC C++ headers:
Add signed to int8_t, int16_t, int32_t, int64_t:
   typedef signed __int8     int8_t;
   typedef signed __int16    int16_t;
   typedef signed __int32    int32_t;
   typedef signed __int64    int64_t;
