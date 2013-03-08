#############################################################################
##
##  read.gi                  The SpinSym Package                 Lukas Maas              
##
#############################################################################

## read the install files

ReadPackage( "spinsym", "gap/mtx.gi" );
ReadPackage( "spinsym", "gap/fus.gi" );
ReadPackage( "spinsym", "gap/young.gi" );


##  read this in order to notify SpinSym's ordinary and modular tables of 
##  alternating and symmetric groups and their double covers

dirs:= [ Directory( Concatenation( 
	       PackageInfo("spinsym")[1].InstallationPath, "/symdata" ) ) ];

for n in [ 2 .. 19 ] do
 ordfile:= Filename( dirs[1], Concatenation(  "ctoa", String( n ) ) );
 NotifyCharacterTable( Concatenation( "Alt(", String( n ), ")" ),
                       ordfile, [] );
 ordfile:= Filename( dirs[1], Concatenation( "cto2a", String( n ) ) );
 NotifyCharacterTable( Concatenation( "2.Alt(", String( n ), ")" ),
                       ordfile, [] );
 ordfile:= Filename( dirs[1], Concatenation( "ctos", String( n ) ) );
 NotifyCharacterTable( Concatenation( "Sym(", String( n ), ")" ),
                       ordfile, [] );
 ordfile:= Filename( dirs[1], Concatenation( "cto2s", String( n ) ) );
 NotifyCharacterTable( Concatenation( "2.Sym(", String( n ), ")" ),
                       ordfile, [] );
od;

