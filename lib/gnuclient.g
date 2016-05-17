#############################################################################
##
##  gnuclient.g                Gnu package                Alexander Konovalov
##
##  This file contains functions for sending remote procedure calls of `Gnu`
##  and `GnuExplained` to the GAP SCSCP server providing the Gnu database.
## 
##  You can also read this file into GAP without installing the Gnu package
##  if you would like to only calculate gnu(n) via remote procedure calls.
##  In this case, you need to load the SCSCP package first as follows:
##
##  gap> LoadPackage("scscp");
##
##  Note that SCSCP package requires the IO package, and the IO package needs
##  to be compiled on UNIX systems (for Windows, the GAP distributions comes
##  with compiled binaries for the IO package).
##
#############################################################################
##
##  Defining server name and port number of the GAP SCSCP server
##
GNUserver:="scscp.gap-system.org";
GNUport:=26133;

#############################################################################
##
##  GnuFromServer(n)
##
GnuFromServer := n -> EvaluateBySCSCP( "Gnu", [n], GNUserver, GNUport ).object;

#############################################################################
##
##  GnuExplainedFromServer(n)
##
GnuExplainedFromServer := n -> EvaluateBySCSCP( "GnuExplained", [n], GNUserver, GNUport ).object;

#############################################################################
##
##  GnuWishlistFromServer(n)
##
GnuWishlistFromServer := n -> EvaluateBySCSCP( "GnuWishlist", [n], GNUserver, GNUport ).object;

#############################################################################
##
##  NextUnknownGnuFromServer(n)
##
NextUnknownGnuFromServer := n -> EvaluateBySCSCP( "NextUnknownGnu", [n], GNUserver, GNUport ).object;
