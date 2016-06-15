#############################################################################
##  
##  PackageInfo.g              Gnu package                Alexander Konovalov
##
SetPackageInfo( rec(
PackageName := "Gnu",
Subtitle := "A database of numbers of isomorphism types of finite groups of given order",
Version := "0.11",
Date := "04/06/2016",

Persons := [
  rec( 
    LastName      := "Konovalov",
    FirstNames    := "Alexander",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "alexk@mcs.st-andrews.ac.uk",
    WWWHome       := "http://blogs.cs.st-andrews.ac.uk/alexk/",
    PostalAddress := Concatenation( [
                     "School of Computer Science\n",
                     "University of St Andrews\n",
                     "Jack Cole Building, North Haugh,\n",
                     "St Andrews, Fife, KY16 9SX, Scotland" ] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
     ),  
],

Status := "dev",

SourceRepository :=
  rec( Type := "git", URL := "https://github.com/alex-konovalov/gnu"),
IssueTrackerURL := "https://github.com/alex-konovalov/gnu/issues",
SupportEmail := "alexk@mcs.st-andrews.ac.uk",

Dependencies := rec(
  GAP := "4.8.3",
  NeededOtherPackages := [["GAPDoc", "1.5"],
                          ["GrpConst", "2.5"],
                          ["CubeFree", "1.15"],
                          ["SglPPow", "1.1"]],
  SuggestedOtherPackages := [["SCSCP","2.1.4"]],
  ExternalConditions := []
),

AvailabilityTest := ReturnTrue,
));

