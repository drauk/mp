% tex/conc/mp/axiom6.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/axiom6.mp 6addbdeaf4 2015-05-09 10:22:50Z Alan U. Kennington $
% ZF axiom of extension.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], pt[];
path pat[];

q := 0.8;
r := 0.95cm;
rr := q * r;
d := 2r;
ang := 0.23;

dx := d + 0.5cm;
dy := rr + 0.8cm;
np := 9;                    % Number of points.
ww := 1.5cm;

penA := 2pt;
penB := 0.5bp;
penC := 0.4pt;

p1 := (0,0);
p2 := p1 + (dx,0);

pickup pencircle scaled penB;
pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
draw pat1;
draw pat2;

xb := 18pt;
yb := 13pt;
p11 := p1 + (-xb,yb);
p21 := p2 + (xb,yb);
p31 := 0.5[p11,p21];
p41 := point (4+ang) of pat1;
p42 := point (8-ang) of pat2;

label.llft(btex $A$ etex, p41);
label.lrt(btex $B$ etex, p42);

pickup pencircle scaled penA;
pmin := 70;
pmax := pmin + np - 1;
for ii = 0 upto np - 1:
    xa := -ww + (2ii/(np-1))*ww;
    p[pmin + ii] := 0.5[p1,p2] + (xa, -dy);
    endfor

for ii = 0 upto np - 1:
    pickup pencircle scaled penA;
    draw p[pmin + ii];

    pickup pencircle scaled penC;
    pt[ii] := p11+(ii*2.3pt,ii*0.5pt);
    pt[np + ii] = p21+(-ii*2.3pt,ii*0.5pt);
    S_arrowspaces(p[pmin + ii], pt[ii], 2pt, 20pt, 1, black);
    S_arrowspaces(p[pmax - ii], pt[np + ii], 2pt, 20pt, 1, black);
    endfor

label.lft(btex $x$ etex, p[pmin]+(-5pt,0));
label.bot(
 btex $\bigl(\forall x,(x\in A\iffshort x\in B)\bigr)\impshort A=B$ etex,
 0.5[p1,p2] + (0,-dy-5.5pt));

rat := 0.28;
label.lft(btex $\in$ etex, rat[p[pmin],pt[0]]);
label.rt(btex $\in$ etex, rat[p[pmin + np - 1],pt[np]]);

endfig;
end
