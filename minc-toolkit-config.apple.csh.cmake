# minc-toolkit configuration parameters for @MINC_TOOLKIT_VERSION_FULL@

setenv MINC_TOOLKIT_VERSION "@MINC_TOOLKIT_VERSION_FULL@"
setenv PATH @CMAKE_INSTALL_PREFIX@/bin:@CMAKE_INSTALL_PREFIX@/pipeline:${PATH}

if ( ! ${?PERL5LIB} ) then
setenv PERL5LIB @CMAKE_INSTALL_PREFIX@/perl:@CMAKE_INSTALL_PREFIX@/pipeline
else
setenv PERL5LIB @CMAKE_INSTALL_PREFIX@/perl:@CMAKE_INSTALL_PREFIX@/pipeline:${PERL5LIB}
endif

if ( ! ${?DYLD_LIBRARY_PATH} ) then
setenv DYLD_LIBRARY_PATH @CMAKE_INSTALL_PREFIX@/lib:@CMAKE_INSTALL_PREFIX@/lib@LIB_SUFFIX@/InsightToolkit
else
setenv DYLD_LIBRARY_PATH @CMAKE_INSTALL_PREFIX@/lib:@CMAKE_INSTALL_PREFIX@/lib@LIB_SUFFIX@/InsightToolkit:${DYLD_LIBRARY_PATH}
endif


setenv MNI_DATAPATH @CMAKE_INSTALL_PREFIX@/share


setenv MINC_FORCE_V2 1
setenv MINC_COMPRESS 4
setenv VOLUME_CACHE_THRESHOLD -1
