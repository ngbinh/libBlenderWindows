IlmBase 1.0.1 and OpenEXR 1.6.1

lib_vs2008 built from source. Note: Set all concerning projects to build as /MT for release and /MTd for debug
Also, remove the _USR_DLL and _DLL and *_EXPORT defines from the preprocessor. That way you
get libs to which blender links fine.
