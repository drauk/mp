% tex/conc/mp/real14.mp   2014-9-6   Alan U. Kennington.
% $Id: tex/conc/mp/real14.mp 5e2134379f 2014-09-06 11:08:26Z Alan U. Kennington $
% Showing that the rationals have measure zero.

verbatimtex
\input akmath
etex

beginfig(1);
pair aa[], zz[];
color col[];

unit := 12cm;
aa := 1unit;
aaX := 15pt;
eps := 0.2;
ht := 2mm;
spW := 10pt;
spWx := 1pt;
spWw := 2pt;
spTEN := 14pt;

penLN := 0.5bp;
penPT := 2.5bp;

col1 := 0.5white;

zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := zz0 + (-aaX,0);
zz3 := zz1 + (aaX,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Schedule of points to centre cover-intervals on.
aa0 := (0,1);
aa1 := (1,1);
aa2 := (1,2);
aa3 := (1,3);
aa4 := (2,3);
aa5 := (1,4);
aa6 := (3,4);
aa7 := (1,5);
aa8 := (2,5);
aa9 := (3,5);
aa10 := (4,5);

pickup pencircle scaled penLN;
drawarrow zz2--zz3 withcolor col1;

pickup pencircle scaled penPT;
draw zz0;
draw zz1;

wid := eps*unit;
rat := round(1/eps)/10;
for i=0 upto 10:
    wid := wid/2;           % Make the total length equal to epsilon.
    rat := rat*2;
    a := xpart(aa[i]);
    b := ypart(aa[i]);
    c := a/b;
    zz10 := zz0 + (c,0)*unit;
    pickup pencircle scaled penLN;
    draw (zz10+(-wid,-ht))--(zz10+(wid,-ht))--
         (zz10+(wid,ht))--(zz10+(-wid,ht))--cycle;

    pickup pencircle scaled penPT;
    draw zz10;
    label.top(decimal i infont "cmr8", zz10+(0,ht+spWw+spW));
    label.top(decimal a infont "cmr8", zz10+(0,ht));
    label.bot(decimal b infont "cmr8", zz10+(0,-ht));
    label.bot("0.1" infont "cmr8", zz10+(0,-ht-spWw-spW));
    label.bot(btex --- etex, zz10+(0,-ht-spWw-1.5spW-spWx));
    label.bot(decimal rat infont "cmr8", zz10+(0,-ht-spWw-2spW));
    endfor

zz20 := zz0 + (0, -ht-spWw-2spW);
zz21 := zz0 + (-20pt,ht);
zz22 := zz0 + (-20pt,-ht);
zz23 := zz20 + (-20pt,0);
zz24 := zz0 + (-20pt, ht+spWw+spW);
label.top(btex $a_j$ etex, zz21);
label.bot(btex $b_j$ etex, zz22);
label(btex $r_j$ etex, zz23);
label.top(btex $j$ etex, zz24);

zz30 := zz20 + (0.5unit,-14pt);
zz31 := zz30 + (0,-spTEN);
zz32 := zz31 + (0,-spTEN);
label.bot(btex $\rats[0,1]\subseteq\mcup_{j=0}^\infty C_j$ etex, zz30);
label.bot(btex $\forall j\in\intsge,\,C_j=B(a_j/b_j,r_j)$ etex, zz31);
label.bot(btex $\forall j\in\intsge,\,r_j=0.1/2^j$ etex, zz32);

endfig;
end
