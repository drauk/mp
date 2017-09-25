% tex/conc/mp/fn102.mp   2016-10-1   Alan U. Kennington.
% $Id: tex/conc/mp/fn102.mp fb9dc657c0 2016-10-01 07:31:27Z Alan U. Kennington $
% Lower bound for a seminorm.

beginfig(1);
numeric xx[];
pair zz[];
color col[];

unit := 4.5cm;
xmax := 1;
aX := 20pt;
bX := 15pt;
a := xmax * unit + aX;
b := 1unit + bX;
aa := 4mm;
bb := 4mm;

nqx :=  1;             % Number of notches on X axis.
nq :=  1;              % Number of notches on Y axis.
ht := 4pt;             % Notch length.

penLN := 0.5bp;
penDASH := 0.5bp;
penPT := 2.5pt;        % Diameter of dots.
penAXIS := 0.5pt;      % Thickness of drawing axes.
penNOTCH := 0.5bp;

col1 := 0.5white;
col2 := 0.5white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Geometry of the axes.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);

psiA := 1;
psiB := 0.5;
psiC := 0.3;
muC := psiA/(psiA + psiB);
muA := muC * psiA/(psiA + psiC);
muB := 1 - (1-muC) * psiB/(psiB + psiC);

zz10 := (0, psiA * unit);
zz11 := (1unit, psiB * unit);
zz12 := (muC * unit, 0);
zz13 := (muC * unit, psiC * unit);
zz14 := (muA * unit, 0);
zz15 := (muB * unit, 0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $\mu$ etex, zz1);
label.rt(btex $\vert\,(1-\mu)\psi(v_0)+\mu\psi(v_1)\,\vert$ etex,
 zz2+(3pt,0pt));
label.bot(btex $\displaystyle \mu'={\psi(v_0)\over\psi(v_0)+\psi(v_1)}$ etex,
 (muC * unit, 0.9unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Graph the function.
pickup pencircle scaled penLN;
draw zz10--zz12--zz11;
pickup pencircle scaled penPT;
draw zz10;
draw zz11;
draw zz12;
draw zz13;
draw zz14;
draw zz15;
pickup pencircle scaled penDASH;
draw zz10--zz14--zz13 dashed evenly withcolor col2;
draw zz11--zz15--zz13 dashed evenly withcolor col2;

label.lft(btex $(0,\psi(v_0))$ etex, zz10);
label.rt(btex $(1,\psi(v_1))$ etex, zz11);
label.bot(btex $(\mu',0)$ etex, zz12);
label.top(btex $(\mu',\psi(v_{\mu'}))$ etex, zz13);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=1 upto nqx:
    xx1 := i * unit;
    label.lrt(decimal i infont "cmr10", (xx1,-2pt));
    draw (xx1,0)--(xx1,-ht);
    endfor

endfig;
end
