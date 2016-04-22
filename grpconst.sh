#!/bin/sh -e

if [ "$#" != "1" ]; then
  echo "Usage: ./grpconst.sh <group order>"
  exit 1
fi;

gap -r -q << EOI
n := $1;;
LoadPackage("grpconst");;
LoadPackage("sglppow");;
LoadPackage("cubefree");;
IsCubeFree:= n -> ForAll( Collected( Factors(n) ), x -> x[2] <= 2 );;
Print("****************************************\n");
if n = 3^8 or IsPrimePowerInt(n) and Length(Factors(n))=7 and Factors(n)[1]>11 then
  Print("Groups of order ", n, " are already in the SglPPow package\n");
  Print("Gnu( " , n , " ) = ", NrSmallGroups( n ), "\n");
elif SMALL_AVAILABLE(n) <> fail then
  Print("Groups of order ", n, " are already in the Small Groups Library\n");
  Print("Gnu( " , n , " ) = ", NrSmallGroups( n ), "\n");
elif IsCubeFree(n) then
  Print(n, " is cubefree. Using 'NumberCFGroups' from the CubeFree package\n");
  Print("Gnu( " , n , " ) = ", NumberCFGroups( n ), "\n");
else
  Print("Constructing all groups of order ", n, "\n");
  Print("****************************************\n");
  SetInfoLevel(InfoGrpCon,5);;
  t1:=Runtime();;
  r:=ConstructAllGroups(n);;
  t2:=Runtime();;
  Print("****************************************\n");
  Print("GAP      ", GAPInfo.Version, "\n");
  Print("CubeFree ", GAPInfo.PackagesInfo.cubefree[1].Version, "\n");
  Print("GrpConst ", GAPInfo.PackagesInfo.grpconst[1].Version, "\n");
  Print("SglPPow  ", GAPInfo.PackagesInfo.sglppow[1].Version, "\n");
 
  Print("Runtime: ", t2-t1, " ms\n");
  if ForAll(r,IsGroup) then
    Print("Isomorphic groups eliminated!\n");
    Print("Gnu( " , n , " ) = ", Length(r), "\n");
  else
    Print("Constructed a list of length ", Length(r), "\n");
    Print("but can not check that it is irredundant\n");
  fi;
fi;
EOI
