#############################################################################
##
##  grpconst.g                      Gnu package                Alexander Konovalov
##

LoadPackage("grpconst");
LoadPackage("sglppow");
LoadPackage("cubefree");

GnuByConstructAllGroups:=function(n)
local r, t1, t2, t, tsplit, sublists, gnu, splits, res;
Print("****************************************\n");
Print("Constructing all groups of order ", n, "\n");
Print("****************************************\n");
res:=rec();
SetInfoLevel(InfoGrpCon,5);
t1:=Runtime();
r:=ConstructAllGroups(n);
t2:=Runtime();
t := t2-t1;
res.result := r;
res.runtime := t;
Print("****************************************\n");
sublists:=Filtered( r, g -> not IsGroup(g) );
if Length(sublists) = 0 then
  gnu := Length(r);
  Print("gnu(" , n , ")=", gnu, "\n\n");
  Print("GAP      ", GAPInfo.Version, "\n");
  Print("GrpConst ", GAPInfo.PackagesInfo.grpconst[1].Version, "\n");
  Print("Runtime: ", t, " ms\n");
  Print("Isomorphic groups eliminated\n\n");
  Print("In case this value is new, add the next line to data/gnudata.g\n");
  Print("GNU_SAVE( ", n, ", ", gnu, ", WITH_GC );\n\n" );
  Print("****************************************\n");
else
  Print("Constructed a list of length ", Length(r), "\n");
  Print("It contains ", Length(r)-Length(sublists), " groups and ", Length(sublists), " sublists\n");
  Print("Length of sublists are ", List( sublists, Length ), "\n");
  if ForAll( sublists, x -> Length(x) = 2 ) then
    t1:=Runtime();
    splits := List( sublists, x -> IsomorphismGroups(x[1],x[2]) );
    t2:=Runtime();
    tsplit := t2-t1;
    res.splittime:=tsplit;
    if ForAll( splits, x -> x = fail ) then
      Print("Success! All pairs contain non-isomorphic groups\n\n");
      gnu := Length(r) + Length( sublists );    
      Print("gnu(" , n , ")=", gnu, "\n\n");
      Print("GAP      ", GAPInfo.Version, "\n");
      Print("GrpConst ", GAPInfo.PackagesInfo.grpconst[1].Version, "\n");
      Print("Runtime of ConstructAllGroups: ", t, " ms\n");
      Print("Returned a list of length ", Length(r), " containing ", 
             Length(r)-Length(sublists), " groups and ", Length(sublists), " sublists\n");
      Print("Length of sublists : ", List( sublists, Length ), "\n");     
      Print("Runtime to check non-isomorphism of groups in pairs: ", tsplit, "\n\n");
      Print("In case this value is new, add the next line to data/gnudata.g\n");
      Print("GNU_SAVE( ", n, ", ", gnu, ", WITH_GC );\n\n" );
      Print("****************************************\n");
    else
      Print("Can not split all pairs - returning all constructed groups for further checks\n");
    fi;
  else
    Print("Long sublists - returning all constructed groups for further checks\n");
  fi;
fi;
return res;
end;