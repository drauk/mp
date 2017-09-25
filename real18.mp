% tex/conc/mp/real18.mp   2014-9-16   Alan U. Kennington.
% $Id: tex/conc/mp/real18.mp 5b22588c40 2014-09-15 15:32:10Z Alan U. Kennington $
% Topology of a double real line with four origins.

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

sepZ := 0.38penPT;
sepZb := 0.80penPT;
sepY := 0.85bp;
bA := 10 * sepZ;
bB := 25bp;
aB := 40bp;
dxZa := sepZ * 6;
dxZb := sepZb * 6;
dxZc := sepZb * 9;

col1 := 0.6white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Lower real line.
zz0 := (0,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (-aX,0);
zz3 := zz1 + (aX,0);
zz4 := zz0 + (a/2,0);

zz10 := zz4 + (0,sepZb);
zz11 := zz4 + (0,-sepZ);
zz12 := zz4 + (aB,-bB);
zz13 := zz4 + (-aB,-bB);
zz15 := zz4 + (-dxZa,0);
zz16 := zz4 + (dxZa,0);
zz17 := zz4 + (-dxZb,0);
zz18 := zz4 + (dxZc,0);

% Upper real line.
zz40 := zz0 + (0,bA);
zz41 := zz40 + (a,0);
zz42 := zz40 + (-aX,0);
zz43 := zz41 + (aX,0);
zz44 := zz40 + (a/2,0);

zz50 := zz44 + (0,sepZ);
zz51 := zz44 + (0,-sepZb);
zz52 := zz44 + (-aB,bB);
zz53 := zz44 + (aB,bB);
zz55 := zz44 + (-dxZa,0);
zz56 := zz44 + (dxZa,0);
zz57 := zz44 + (-dxZb,0);
zz58 := zz44 + (dxZc,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penAXIS;
% drawarrow zz2--zz3 withcolor col1;
drawarrow zz2--zz15{dir0}..zz11..{dir0}zz16--zz3 withcolor col1;
% drawarrow zz42--zz43 withcolor col1;
drawarrow zz42--zz55{dir0}..zz50..{dir0}zz56--zz43 withcolor col1;

draw zz17{dir0}..zz10..{dir0}zz58 withcolor col1;
draw zz57{dir0}..zz51..{dir0}zz18 withcolor col1;

pickup pencircle scaled penPT;
draw zz10;
draw zz11;
draw zz50;
draw zz51;

pickup pencircle scaled penARROW;
S_arrowspaces(zz12, zz10+(0,sepY), 0pt, 3pt, 1, black);
S_arrowspaces(zz13, zz11, 0pt, 3pt, 1, black);
S_arrowspaces(zz52, zz50, 0pt, 3pt, 1, black);
S_arrowspaces(zz53, zz51+(0,-sepY), 0pt, 3pt, 1, black);
label.rt(btex upper lower origin $(0,0,1)$ etex, zz12);
label.lft(btex lower lower origin $(0,0,0)$ etex, zz13);
label.lft(btex upper upper origin $(0,1,1)$ etex, zz52);
label.rt(btex lower upper origin $(0,1,0)$ etex, zz53);

label.lrt(btex $\reals$ etex, zz3);
label.urt(btex $\reals$ etex, zz43);

label.urt(btex\strut left upper real line $\realslt\times\{1\}$ etex, zz42);
label.lrt(btex\strut left lower real line $\realslt\times\{0\}$ etex, zz2);
label.ulft(btex\strut right upper real line $\realsgt\times\{1\}$ etex, zz43);
label.llft(btex\strut right lower real line $\realsgt\times\{0\}$ etex, zz3);

endfig;
end
