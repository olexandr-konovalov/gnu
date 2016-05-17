LoadPackage("scscp");

Read("gnu/gnu.g");

InstallSCSCPprocedure( "GnuExplained", GnuExplained, "Number of groups of order n", 1, 1 );
InstallSCSCPprocedure( "Gnu", Gnu, "Number of groups of order n", 1, 1 );

RunSCSCPserver( true, 26133 );
