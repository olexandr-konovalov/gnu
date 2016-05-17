GNUserver:="scscp.gap-system.org";
GNUport:=26133;

GnuFromServer := n -> EvaluateBySCSCP( "Gnu", [n], GNUserver, GNUport ).object;

GnuExplainedFromServer := n -> EvaluateBySCSCP( "GnuExplained", [n], GNUserver, GNUport ).object;
