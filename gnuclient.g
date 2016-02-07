LoadPackage("scscp");
server:="scscp-docker.cloudapp.net";
port:=26133;

Gnu := n -> EvaluateBySCSCP( "Gnu", [n], server, port ).object;

GnuWithExplanation := n -> EvaluateBySCSCP( "GnuWithExplanation", [n], server, port ).object;
