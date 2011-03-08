The libs and include files are taken from the Jack v1.9.3 release files.
They are used with a few minor modifications:
1- systemdeps.h, transport.h and types.h are dropped into an extra jack/ folder created
   at the level of jack.h
2- systemdeps.h is patched as per following diff:

--- C:/Program Files/Jack v1.9.3/includes/jack/systemdeps.h	Mon Mar 30 15:32:58 2009
+++ C:/dev/lib/windows/jack/include/jack/systemdeps.h	Mon Aug 17 02:54:38 2009
@@ -24,7 +24,7 @@
 
 #include <windows.h>
 
-#ifdef _MSC_VER     /* Microsoft compiler */
+#ifdef _MSC_VERXX     /* Microsoft compiler */
     #define __inline__ inline
     #ifndef int8_t
         typedef char int8_t;
@@ -42,9 +42,9 @@
 #elif __MINGW32__   /* MINGW */
     #include <stdint.h>
     #include <sys/types.h>
-    #ifndef pthread_t
+    /*#ifndef pthread_t
         typedef HANDLE pthread_t;
-    #endif
+    #endif*/
 #else               /* other compilers ...*/
     #include <inttypes.h>
     #include <pthread.h>
