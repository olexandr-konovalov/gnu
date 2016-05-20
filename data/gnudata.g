#############################################################################
##
##  gnudata.g                  Gnu package                Alexander Konovalov
##
##
##  This is the main database of precomputed data contributed to the package.
##  The idea of this file is that it has exactly one line per order so that
##  one could easily trace the source using version control tools. The lines
##  are sorted by the order of the group.
##
GNUDATA:=[];

#############################################################################
##
##  Standard sources of the data to be defined here
##
WITH_GC:="precomputed using GrpConst package";

#############################################################################
##
##  GNU_SAVE(order,number,info)
##
##  This function stores gnu(order)=number in the database together with
##  the info string.
##
##  The idea is that if the implementation of data storage will be changed
##  in the future, it should support GNU_SAVE(order,number,info) to store
##  the data, so all calls of GNU_SAVE below will remain intact.
##
GNU_SAVE:=function(order,number,info)
GNUDATA[order]:=[number,info];
end;

GNU_SAVE( 2016, 6538, WITH_GC );
GNU_SAVE( 2024, 46, WITH_GC );
GNU_SAVE( 2025, 63, WITH_GC );
GNU_SAVE( 2040, 175, WITH_GC );
GNU_SAVE( 2052, 205, WITH_GC );
GNU_SAVE( 2058, 91, WITH_GC );
GNU_SAVE( 2064, 222, WITH_GC );
GNU_SAVE( 2072, 40, WITH_GC );
GNU_SAVE( 2079, 13, WITH_GC );
GNU_SAVE( 2080, 1381, WITH_GC );
GNU_SAVE( 2088, 156, WITH_GC );
GNU_SAVE( 2160, 3429, WITH_GC );
GNU_SAVE( 2240, 10761, WITH_GC );
GNU_SAVE( 2304, 15756130, "http://dx.doi.org/10.1016/j.jalgebra.2013.09.028" );
GNU_SAVE( 2496, 13094, WITH_GC );
GNU_SAVE( 2592, 24562, WITH_GC );
GNU_SAVE( 3168, 5119, WITH_GC );
GNU_SAVE( 3402, 1568, WITH_GC );
GNU_SAVE( 3600, 4484, WITH_GC );
GNU_SAVE( 3888, 20065, WITH_GC );
GNU_SAVE( 4752, 2919, WITH_GC );
GNU_SAVE( 9261, 215, WITH_GC );
GNU_SAVE( 10000, 4728, WITH_GC );
GNU_SAVE( 15120, 22758, WITH_GC );
GNU_SAVE( 18480, 5397, WITH_GC );
GNU_SAVE( 50004, 189, WITH_GC );
GNU_SAVE( 50008, 112, WITH_GC );
GNU_SAVE( 50016, 1208, WITH_GC );
GNU_SAVE( 50024, 197, WITH_GC );
GNU_SAVE( 50031, 16, WITH_GC );
GNU_SAVE( 50032, 177, WITH_GC );
GNU_SAVE( 50040, 695, WITH_GC );
GNU_SAVE( 50058, 1568, WITH_GC );
GNU_SAVE( 50064, 984, WITH_GC );
GNU_SAVE( 50072, 41, WITH_GC );
GNU_SAVE( 50078, 30, WITH_GC );
GNU_SAVE( 50080, 1434, WITH_GC );
GNU_SAVE( 50085, 13, WITH_GC );
GNU_SAVE( 50088, 39, WITH_GC );
GNU_SAVE( 50096, 177, WITH_GC );
GNU_SAVE( 50120, 126, WITH_GC );
GNU_SAVE( 50128, 244, WITH_GC );
GNU_SAVE( 50136, 64, WITH_GC );
GNU_SAVE( 50531, 5, WITH_GC );
GNU_SAVE( 50841, 13, WITH_GC );
GNU_SAVE( 50949, 60, WITH_GC );
