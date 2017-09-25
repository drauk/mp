% tex/conc/mp/fn60.mp   2011-2-25   Alan U. Kennington.
% $Id: tex/conc/mp/fn60.mp a801aee479 2011-02-25 06:41:35Z Alan U. Kennington $
% Bases for free linear space on non-negative integers over the reals.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[];
color col[];

unit := 7.5mm;          % Y direction.
np := 5;                % Number of points on X axis.
nq := 1;                % Number of points on Y axis.
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
label.urt(btex $j$ etex, zz1);
label.bot(btex $\intsge$ etex, zz1);
label.lft(btex $\reals$ etex, zz2);
label.urt(btex $c_{2,j}$ etex, zz2);

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
for i=2 upto 2:
    pickup pencircle scaled thh;
    draw (zz0+(i*unit,0))--(zz0+(i*unit,unit)) dashed evenly withcolor col2;

    pickup pencircle scaled thhh;
    draw zz0+(i*unit,unit);
    endfor
label(btex $\kappa_B$ etex, zz0+(4.5unit,2unit));

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
label.urt(btex $j$ etex, zz11);
label.bot(btex $\intsge$ etex, zz11);
label.lft(btex $\reals$ etex, zz12);
label.urt(btex $\bar c_{2,j}$ etex, zz12);

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
for i=2 upto np:
    pickup pencircle scaled thh;
    draw (zz10+(i*unit,0))--(zz10+(i*unit,unit)) dashed evenly withcolor col2;

    pickup pencircle scaled thhh;
    draw zz10+(i*unit,unit);
    endfor
label(btex $\dots$ etex, zz10+((np+1)*unit,unit));
label(btex $\kappa_{\bar B}$ etex, zz10+(4.5unit,2unit));

endfig;
end
