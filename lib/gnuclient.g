LoadPackage("scscp");
server:="scscp.gap-system.org";
port:=26133;

GnuFromServer := n -> EvaluateBySCSCP( "Gnu", [n], server, port ).object;

GnuExplainedFromServer := n -> EvaluateBySCSCP( "GnuExplained", [n], server, port ).object;
