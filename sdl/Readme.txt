SDL library custom build for Blender

Rebuilt with VisualStudio 2008 SP1 on May 21st 2009
1. SDL version SDL-1.2.13
2. used the MSVC 2005 projectfiles as a base and automatically converted them to MSVC 2008
3. Removed the Directx5 files files from src/ and removed dxguid dependency (apply patch 'SDL.vcproj.patch')
4. Removed DDRAW and DSOUND from SDL config (apply patch 'SDL_config_win32.h.patch')
5. Compile Release build.

- Andrea Weikert
