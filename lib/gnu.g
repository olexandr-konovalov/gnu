IsSquareFree:= n -> ForAll( Collected( Factors(n) ), x -> x[2] = 1 );

IsCubeFree:= n -> ForAll( Collected( Factors(n) ), x -> x[2] <= 2 );

GnuWithExplanation:=function(n)
local res, nr;
if not IsPosInt(n) then
  Error("The argument of Gnu(n) must be a positive integer");
fi;

if IsBound(GNUDATA[n]) then
  return GNUDATA[n];
else
  res := SMALL_AVAILABLE( n );
  if res <> fail then
    nr := NrSmallGroups( n );
    if n = 3^8 or IsPrimePowerInt(n) and Length(Factors(n))=7 and Factors(n)[1]>11 then
      return [ nr, Concatenation( "using NrSmallGroups from SglPPow ",
                                      InstalledPackageVersion("sglppow")) ];
    else
      return [ nr, "using NrSmallGroups and the GAP Small Groups Library" ];
    fi;
  elif IsCubeFree( n ) then
    res := NumberCFGroups( n );
    return [ res, Concatenation( "using NumberCFGroups from CubeFree ",
                               InstalledPackageVersion("cubefree")) ];
  elif n<=50000 then
    res := gnu50000[n];
    if res[1]<>n then # this should never happen
      Error("gnu50000.g corrupted");
    elif res[2]<>fail then
      return [ res[2], "http://www.icm.tu-bs.de/ag_algebra/software/small/number.html" ];
    else
      return [ false, Concatenation( "not stored in gnu50000 and no library of groups of size ", String(n) ) ];
    fi;
  else
    return [ false, Concatenation( "the library of groups of size ", String(n), " is not available" ) ];
  fi;
fi;

end;

Gnu:=function(n)
return GnuWithExplanation(n)[1];
end;
