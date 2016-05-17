#############################################################################
##
##  init.g                     Gnu package                Alexander Konovalov
##

#############################################################################
##
#R  Read the declaration files.
##
ReadPackage("gnu", "data/gnudata.g");
ReadPackage("gnu", "data/gnu50000.g");
ReadPackage( "gnu", "lib/gnu.g" );

if IsPackageMarkedForLoading("scscp", "") then
  ReadPackage( "gnu", "lib/gnuclient.g" );
else
  Print("SCSCP package is not available.\n",
        "Will be unable to connect to the server.\n",
        "Only local data will be accessible.\n");
fi;

#E  init.g . . . . . . . . . . . . . . . . . . . . . . . . . . . .  ends here

