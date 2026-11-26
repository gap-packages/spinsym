#############################################################################
##
##  charparams.tst             The SpinSym Package
##
#############################################################################

gap> START_TEST( "charparams.tst" );

# The non-spin p-modular characters of 2.Alt(n) are inflated from Alt(n)
# and carry its labels [1,[c,'0']], [1,[c,'+']], [1,[c,'-']].
gap> CheckNonSpinLabels:= function()
>    local bad, n, p, t2, t, cp2, pos, infl;
>    bad:= [];
>    for n in [ 2 .. 18 ] do
>      for p in [ 3, 5, 7 ] do
>        t2:= CharacterTable( Concatenation( "2.Alt(", String( n ), ")" ) )
>             mod p;
>        cp2:= CharacterParameters( t2 );
>        pos:= Filtered( [ 1 .. Length( cp2 ) ], i -> cp2[i][1] = 1 );
>        if not ForAll( cp2{ pos }, x -> Length( x[2] ) = 2
>                         and IsList( x[2][1] ) and x[2][2] in "0+-" ) then
>          Add( bad, [ n, p, "format" ] );
>        fi;
>        t:= CharacterTable( Concatenation( "Alt(", String( n ), ")" ) )
>            mod p;
>        if t <> fail and HasCharacterParameters( t ) then
>          infl:= RestrictedClassFunctions( Irr( t ), t2 );
>          if List( pos, i -> CharacterParameters( t )[
>                  Position( infl, Irr( t2 )[i] ) ] ) <> cp2{ pos } then
>            Add( bad, [ n, p, "inflation" ] );
>          fi;
>        fi;
>      od;
>    od;
>    return bad;
> end;;
gap> CheckNonSpinLabels();
[  ]

#
gap> STOP_TEST( "charparams.tst" );
