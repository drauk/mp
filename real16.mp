% tex/conc/mp/real16.mp   2014-9-6   Alan U. Kennington.
% $Id: tex/conc/mp/real16.mp fa62d431fd 2014-09-06 12:14:21Z Alan U. Kennington $
% The real line with two closed unit intervals.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];

unit := 12cm;
a := 1unit;
aX := 15pt;

penARROW := 0.5bp;
penAXIS := 1.2bp;
penPT := 3.0bp;

sepZ := 0.35penPT;

col1 := 0.5white;

zz0 := (0,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (-aX,0);
zz3 := zz1 + (aX,0);

zz10 := zz0 + (0,sepZ);
zz11 := zz0 + (0,-sepZ);
zz12 := zz0 + (30pt,20pt);
zz13 := zz0 + (30pt,-20pt);

zz20 := zz1 + (0,sepZ);
zz21 := zz1 + (0,-sepZ);
zz22 := zz1 + (-30pt,20pt);
zz23 := zz1 + (-30pt,-20pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penAXIS;
draw zz2--zz0 withcolor col1;
drawarrow zz1--zz3 withcolor col1;
draw zz10--zz20 withcolor col1;
draw zz11--zz21 withcolor col1;

pickup pencircle scaled penPT;
draw zz10;
draw zz11;
draw zz20;
draw zz21;

pickup pencircle scaled penARROW;
S_arrowspaces(zz12, zz10, 0pt, 3pt, 1, black);
S_arrowspaces(zz13, zz11, 0pt, 3pt, 1, black);
label.rt(btex upper 0 etex, zz12);
label.rt(btex lower 0 etex, zz13);

S_arrowspaces(zz22, zz20, 0pt, 3pt, 1, black);
S_arrowspaces(zz23, zz21, 0pt, 3pt, 1, black);
label.lft(btex upper 1 etex, zz22);
label.lft(btex lower 1 etex, zz23);

label.lrt(btex $\reals$ etex, zz3);
label.ulft(btex $0$ etex, zz10);
label.llft(btex $0$ etex, zz11);
label.urt(btex $1$ etex, zz20);
label.lrt(btex $1$ etex, zz21);

label.top(
 btex\strut upper closed unit interval $[0,1]$ etex, 0.5[zz0,zz1]+(0,sepZ));
label.bot(
 btex\strut \phantom{upper }\llap{lower }closed unit interval $[0,1]$ etex,
 0.5[zz0,zz1]+(0,-sepZ));

endfig;
end
