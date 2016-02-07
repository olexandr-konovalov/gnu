LoadPackage("scscp");

Read("gnu.g");

InstallSCSCPprocedure( "GnuWithExplanation", GnuWithExplanation, "Number of groups of order n", 1, 1 );
InstallSCSCPprocedure( "Gnu", Gnu, "Number of groups of order n", 1, 1 );

RunSCSCPserver( true, 26133 );
