#############################################################################
##
##  fusion.tst                 The SpinSym Package
##
#############################################################################

gap> START_TEST( "SpinSym class fusions" );

# unsupported pair of table types
gap> ctA:= CharacterTable( "2.Alt(5)" );;
gap> ctS:= SpinSymCharacterTableOfMaximalYoungSubgroup( 3, 2, "Symmetric" );;
gap> SpinSymClassFusion( ctA, ctS );
fail
gap> GetFusionMap( ctA, ctS );
fail

# supported pair; the fusion is stored once
gap> ctD:= CharacterTable( "2.Sym(5)" );;
gap> fus:= SpinSymClassFusion( ctS, ctD );;
#I  SpinSymClassFusion: stored fusion map from 2.(Sym(3)xSym(2)) to 2.Sym(5)
gap> GetFusionMap( ctS, ctD ) = fus;
true
gap> SpinSymClassFusion( ctS, ctD ) = fus;
true

# a different stored fusion is kept
gap> ctS:= SpinSymCharacterTableOfMaximalYoungSubgroup( 3, 2, "Symmetric" );;
gap> StoreFusion( ctS, List( ClassParameters( ctS ), x-> 1 ), ctD );
gap> SpinSymClassFusion( ctS, ctD ) = fus;
#I  SpinSymClassFusion: a different fusion map from 2.(Sym(3)xSym(2)) to 2.Sym(5) is stored already
true
gap> GetFusionMap( ctS, ctD ) = fus;
false

#
gap> STOP_TEST( "fusion.tst" );
