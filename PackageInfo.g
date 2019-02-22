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
						  "Schur cover", "double cover", "Young" ],


AutoDoc := rec(
    TitlePage := rec(
      Version := Concatenation( "Version ", ~.Version ),
      Copyright := """
    &copyright; 2012 Lukas Maas <P/>

    The &SpinSym; &GAP; package is free software:
    you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.<P/>
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program (see the file COPYING).
    If not, see <URL>http://www.gnu.org/licenses/</URL>.
""",
    ),
  ),

));
