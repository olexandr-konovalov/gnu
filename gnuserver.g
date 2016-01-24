LoadPackage("scscp");

Read("gnu.g");

InstallSCSCPprocedure( "Gnu", Gnu, "Number of groups of order n", 1, 1 );

RunSCSCPserver( true, 26133 );