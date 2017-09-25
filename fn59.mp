% tex/conc/mp/fn59.mp   2011-2-25   Alan U. Kennington.
% $Id: tex/conc/mp/fn59.mp beed8e81f9 2011-02-25 05:54:17Z Alan U. Kennington $
% Bases for free linear space on non-negative integers over the reals.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[];
color col[];

unit := 7.5mm;
np := 5;               % Number of points on X axis.
nq := 1;               % Number of points on Y axis.
a := (np+0.8)*unit;
b := 2unit;
bb := 1.6unit;
ht := 4.5pt;
htt := 3pt;
da := a+2.2cm;

th := 0.5pt;
thh := 0.5bp;
thhh := 3pt;
thhhh := 1.0bp;

col1 := 0.5white;
col2 := 0.5white;
col3 := 0.4white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The first basis.

zz0 := (0,0);
zz1 := zz0+(a+0.2unit,0);
zz2 := zz0+(0,b);
zz3 := zz0+(-a,0);
zz4 := zz0+(0,-bb);

% Draw the axes.
pickup pencircle scaled th;
drawarrow zz0--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $\intsge$ etex, zz1);
label.ulft(btex $\reals$ etex, zz2);

% Notches.
pickup pencircle scaled thh;
for i=-1 step 1 until nq:
    draw (0,i*unit)--(-ht,i*unit);
    label.lft(decimal i, (-ht,i*unit));
    endfor
for i=1 upto np:
    draw (i*unit,0)--(i*unit,-htt);
    label.bot(decimal i, zz0+(i*unit,-htt));
    endfor

% Draw the graph.
for i=0 upto np:
    pickup pencircle scaled thh;
    draw (zz0+(i*unit,0))--(zz0+(i*unit,unit)) dashed evenly withcolor col2;

    pickup pencircle scaled thhh;
    draw zz0+(i*unit,unit);
    endfor
i := 0;
pickup pencircle scaled thh;
draw (zz0+(i*unit,0))--(zz0+(i*unit,unit)) dashed evenly;

label.urt(btex $e_0$ etex, zz0+(0,unit));
label.urt(btex $e_1$ etex, zz0+(unit,unit));
label.urt(btex $e_2$ etex, zz0+(2unit,unit));
label.urt(btex $e_3$ etex, zz0+(3unit,unit));
label.urt(btex $e_4$ etex, zz0+(4unit,unit));
label.urt(btex $e_5$ etex, zz0+(5unit,unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The second basis.

zz10 := (da,0);
zz11 := zz10+(a+0.2unit,0);
zz12 := zz10+(0,b);
zz13 := zz10+(-a,0);
zz14 := zz10+(0,-bb);

% Draw the axes.
pickup pencircle scaled th;
drawarrow zz10--zz11 withcolor col1;
drawarrow zz14--zz12 withcolor col1;
label.lrt(btex $\intsge$ etex, zz11);
label.ulft(btex $\reals$ etex, zz12);

% Notches.
pickup pencircle scaled thh;
for i=-1 step 1 until nq:
    draw zz10+(0,i*unit)--zz10+(-ht,i*unit);
    label.lft(decimal i, zz10+(-ht,i*unit));
    endfor
for i=1 upto np:
    draw zz10+(i*unit,0)--zz10+(i*unit,-htt);
    label.bot(decimal i, zz10+(i*unit,-htt));
    endfor

% Draw the graph.
for i=0 upto np:
    pickup pencircle scaled thh;
    draw (zz10+(i*unit,0))--(zz10+(i*unit,unit)) dashed evenly withcolor col2;
    if i>0:
        pickup pencircle scaled thhhh;
        draw (zz10+((i-1)*unit,-unit))--(zz10+(i*unit,unit))
            dashed withdots withcolor col3;
        fi

    pickup pencircle scaled thhh;
    draw zz10+(i*unit,unit);
    if i>0:
        draw zz10+((i-1)*unit,-unit);
        fi
    endfor
i := 0;
pickup pencircle scaled thh;
draw (zz10+(i*unit,0))--(zz10+(i*unit,unit)) dashed evenly;

label.urt(btex $\bar e_0$ etex, zz10+(0,unit));
label.urt(btex $\bar e_1$ etex, zz10+(unit,unit));
label.urt(btex $\bar e_2$ etex, zz10+(2unit,unit));
label.urt(btex $\bar e_3$ etex, zz10+(3unit,unit));
label.urt(btex $\bar e_4$ etex, zz10+(4unit,unit));
label.urt(btex $\bar e_5$ etex, zz10+(5unit,unit));

endfig;
end
