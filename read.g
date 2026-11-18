#############################################################################
##
##  read.g                   The SpinSym Package                 Lukas Maas              
##
#############################################################################

## read the install files

ReadPackage( "spinsym", "gap/mtx.gi" );
ReadPackage( "spinsym", "gap/fus.gi" );
ReadPackage( "spinsym", "gap/young.gi" );

## SPINSYM_INIT() notifies the GAP Character Table Library CTblLib of
## SpinSym's ordinary and modular tables of alternating and symmetric
## groups and their double covers, in one call: each NotifyCharacterTable
## call copies and re-sorts CTblLib's table of contents, so notifying the
## 72 tables one by one takes 60 ms.

BindGlobal( "SPINSYM_INIT", function()
  local dir, tables, n, pair;

  dir:= Directory( Concatenation(
               PackageInfo("spinsym")[1].InstallationPath, "/symdata" ) );

  tables:= [];
  for n in [ 2 .. 19 ] do
    for pair in [ [ "Alt(", "ctoa" ], [ "2.Alt(", "cto2a" ],
                  [ "Sym(", "ctos" ], [ "2.Sym(", "cto2s" ] ] do
      Add( tables, [ Concatenation( pair[1], String( n ), ")" ),
                     Filename( dir, Concatenation( pair[2], String( n ) ) ),
                     [] ] );
    od;
  od;
  NotifyCharacterTables( tables );

end );

## run SPINSYM_INIT()
SPINSYM_INIT();

