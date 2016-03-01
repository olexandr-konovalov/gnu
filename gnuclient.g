LoadPackage("scscp");
server:="scscp.gap-system.org";
port:=26133;

Gnu := n -> EvaluateBySCSCP( "Gnu", [n], server, port ).object;

GnuWithExplanation := n -> EvaluateBySCSCP( "GnuWithExplanation", [n], server, port ).object;
