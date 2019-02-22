#############################################################################
##
##  PackageInfo.g for the package `SpinSym'                      Lukas Maas
##

SetPackageInfo( rec(

PackageName := "SpinSym",
Subtitle := "Brauer tables of spin-symmetric groups",
Version := "1.5",
Date := "01/02/2013",

ArchiveURL :=
          "http://www.uni-due.de/~s400304/spinsym/pkg/spinsym-1.5",
ArchiveFormats := ".tar.gz",

Persons := [
    rec(
  	  LastName      := "Maas",
   	  FirstNames    := "Lukas",
   	  IsAuthor      := true,
   	  IsMaintainer  := true,
  	  Email         := "lukas.maas@iem.uni-due.de",
   	  WWWHome       := "http://www.uni-due.de/~s400304"
    ),
],

Status := "deposited",

##  You must provide the next two entries if and only if the status is
##  "accepted" because is was successfully refereed:
# format: 'name (place)'
# CommunicatedBy := "Mike Atkinson (St. Andrews)",
#CommunicatedBy := "",
# format: mm/yyyy
# AcceptDate := "08/1999",
#AcceptDate := "",

README_URL :=
  "http://www.uni-due.de/~s400304/spinsym/README",
PackageInfoURL :=
  "http://www.uni-due.de/~s400304/spinsym/PackageInfo.g",

AbstractHTML:= Concatenation(
	[ "This package contains Brauer tables of Schur ",
		"covers of symmetric and alternating groups, ",
		"and provides some related functionalities." ]),

PackageWWWHome := "http://www.uni-due.de/~s400304/spinsym/",

PackageDoc := rec(
  BookName  := "SpinSym",
  ArchiveURLSubset := [ "doc" ],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "The SpinSym Package",
  Autoload  := true
),

Dependencies := rec(
  GAP := ">=4.5",
  NeededOtherPackages := [["CTblLib", ">=1.2.2"],["GAPDoc", ">=1.5"]],
  SuggestedOtherPackages := [],
  ExternalConditions := []

),

AvailabilityTest := ReturnTrue,

BannerString := Concatenation(
   "+-----------------------------------+\n",
   "| SpinSym ", ~.Version, " (The SpinSym Package) |\n",
   "| Try '?SpinSym package' for help.  |\n",
   "+-----------------------------------+\n" ),

TestFile := "tst/testall.tst",

Keywords := [ "spin", "projective", "symmetric group", "alternating group",
						  "Schur cover", "double cover", "Young" ]

));
