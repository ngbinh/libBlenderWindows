* Built from release Python 3.1.2 sources. Default way of building for both release and debug.
NOTE: Lines 1181-1183 of Lib/xmlrpc/client.py are commented out - otherwise XMLRPC over HTTPS doesn't work.

OLD LOG:
* 2009-09-23: Removed all old Python versions (pre 3.1).
* 2009-06-16: The Python 2.6 libraries are now 100% certain built with VC9.0 (VisualStudio 2008). I've added also a lib26_vs2008 directory with the same binaries, so if someone really needs py26 built with different vc version, it can be added in a similar way.
* 2008-10-14: The Python 2.5 libraries in this directory have been replaced with the version built with VC 9.0 (VisualStudio 2008).
