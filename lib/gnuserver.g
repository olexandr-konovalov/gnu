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

gnuhash:=NormalizedWhitespace( StringFile( Filename(
  DirectoriesPackageLibrary("gnu",".git/refs/heads/"), "master" ) ) );

InstallSCSCPprocedure( "GnuExplained", GnuExplained, "Number of groups of order n", 1, 1 );
InstallSCSCPprocedure( "Gnu", Gnu, "Number of groups of order n", 1, 1 );
InstallSCSCPprocedure( "GnuWishlist", GnuWishlist, "Filter n with unknown gnu(n)", 1, 1 );
InstallSCSCPprocedure( "NextUnknownGnu", NextUnknownGnu, "Next n with unknown gnu(n)", 1, 1 );

SCSCPserviceName:="gnu(n) SCSCP service";

SCSCPserviceVersion:= Concatenation(
	"GAP ", GAPInfo.Version,
	"; CubeFree ", GAPInfo.PackagesInfo.cubefree[1].Version,
	"; Gnu ", gnuhash,
	"; GrpConst ", GAPInfo.PackagesInfo.grpconst[1].Version,
	"; SCSCP ", GAPInfo.PackagesInfo.scscp[1].Version,
	"; SglPPow ", GAPInfo.PackagesInfo.sglppow[1].Version );

SCSCPserviceDescription:= Concatenation(
  "GAP SCSCP server for numbers of isomorphism types of finite groups. ",
  "Gnu package version given by commit ",
  "https://github.com/alex-konovalov/gnu/commit/", gnuhash, ". Server started");

RunSCSCPserver( true, 26133 );
