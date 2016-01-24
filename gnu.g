LoadPackage("grpconst");
LoadPackage("sglppow");
LoadPackage("cubefree");

IsSquareFree:= n -> ForAll( Collected( Factors(n) ), x -> x[2] = 1 );

IsCubeFree:= n -> ForAll( Collected( Factors(n) ), x -> x[2] <= 2 );

Gnu:=function(n)
if not IsPosInt(n) then
  Error("The argument of Gnu(n) must be a positive integer");
fi;

if IsCubeFree( n ) then
  return NumberCFGroups( n );
else
  return NrSmallGroups( n );
fi;

end;
