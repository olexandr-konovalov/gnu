#############################################################################
##
##  gnu.g                      Gnu package                Alexander Konovalov
##

#############################################################################
##
##  IsSquareFree(n)
##  IsCubeFree(n)
##
##  Functions to check whether n is square-free and cube-free
##
IsSquareFree := n -> ForAll( Collected( Factors(n) ), x -> x[2]  = 1 );
IsCubeFree   := n -> ForAll( Collected( Factors(n) ), x -> x[2] <= 2 );

#############################################################################
##
##  GnuExplained
##
##  This is the main function of the package. It attempts to find gnu(n)
##  using several sources and returns a list of length two. The first
##  element of this list is either the value of gnu(n) or `false` in case
##  it can not determine it. The second element of this list is a string
##  with explanation where the value of gnu(n) comes from (we use `false`
##  instead of `fail` to be able to handle the negative result easier in
##  remote procedure calls).
##
##  Currently if looks for gnu(n) with the following priorities:
##  1) precomputed data contributed to the package
##  2) NrSmallGroups using GAP Small Groups Library and SglPPow package
##  3) NumberCFGroups using CubeFree package
##  4) the list of known values of gnu(n) from the TUBS page:
##     http://www.icm.tu-bs.de/ag_algebra/software/small/number.html
##  that is, it checks the next source if the previous one does not
##  give the answer (note that calling NumberCFGroups may take some time).
##
GnuExplained:=function(n)
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

#############################################################################
##
##  Gnu(n)
##
##  This is the counterpart of GnuExplained which
##  returns only the value of gnu(n)
##
Gnu:=function(n)
return GnuExplained(n)[1];
end;

#############################################################################
##
##  GnuWishlist( r )
##
##  This is a utility function to return all integers n from the list r for
##  which the value of gnu(n) is not known
##
GnuWishlist:=function( r )
return Filtered( r, n -> Gnu(n) = false );
end;

#############################################################################
##
##  NextUnknownGnu( n )
##
##  This is a utility function to return the smallest integer k which is
##  greater than the integer n, such that the value of gnu(n) is not known
##
NextUnknownGnu:=function( n )
repeat
  n := n + 1;
until Gnu(n) = false;
return n;
end;
