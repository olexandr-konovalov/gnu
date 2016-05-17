#############################################################################
##
##  gnuserver.g                Gnu package                Alexander Konovalov
##
##
##  This file starts GAP SCSCP server which provides `Gnu` and `GnuExplained`
##  as remote procedures with the same names.
##
##  This file is not read during package loading, since it is only needed to
##  start the GAP SCSCP server.
##
LoadPackage("scscp");
LoadPackage("gnu");

InstallSCSCPprocedure( "GnuExplained", GnuExplained, "Number of groups of order n", 1, 1 );
InstallSCSCPprocedure( "Gnu", Gnu, "Number of groups of order n", 1, 1 );
InstallSCSCPprocedure( "GnuWishlist", GnuWishlist, "Filter n with unknown gnu(n)", 1, 1 );
InstallSCSCPprocedure( "NextUnknownGnu", NextUnknownGnu, "Next n with unknown gnu(n)", 1, 1 );

RunSCSCPserver( true, 26133 );
