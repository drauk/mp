% tex/conc/mp/axiom7.mp   2008-12-30   Alan Kennington.
% $Id: tex/conc/mp/axiom7.mp 6addbdeaf4 2015-05-09 10:22:50Z Alan U. Kennington $
% ZF axiom of union. Two sets only.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], pt[];
path pat[];

q := 0.8;
qq := 0.14;
r := 0.95cm;
rr := q * r;
d := 2r;
ang := 0.23;

dx := d + 0.5cm;
dy := rr + 1.35cm;
nt := 5;                    % Number of point triples.
np := 3nt;                  % Number of points.
ww := 1.5cm;
dd := 3.2ww;
penA := 2pt;                % Points.
penB := 0.5pt;              % Set boundaries.
penBB := 2penB;             % Set boundary.
penC := 0.4pt;              % Arrows.

p1 := (0,0);
p2 := p1 + (dx,0);
p3 := 0.5[p1,p2] + (0,-dy);

pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
pat3 := (fullcircle scaled dd) yscaled qq shifted p3;
pickup pencircle scaled penB;
draw pat1;
draw pat2;
pickup pencircle scaled penBB;
draw pat3 withcolor 0.7white;

xb := 20pt;
yb := 14pt;
p11 := p1 + (-xb,yb);
p21 := p2 + (xb,yb);
p31 := 0.5[p11,p21];
p41 := point (4+ang) of pat1;
p42 := point (8-ang) of pat2;
p43 := point 4 of pat3;
p44 := point 0 of pat3;

label.llft(btex $A$ etex, p41);
label.lrt(btex $B$ etex, p42);
label.lft(btex $X$ etex, p43);
label.rt(btex $A\bcup B$ etex, p44);

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
    ty := ii mod 3;
    tyy := (np - 1 - ii) mod 3;
    pickup pencircle scaled penC;
    if (ty <= 1):
        pt[ii] = p11+(ii*2.3pt,ii*0.5pt);
        S_arrowspaces(p[pmin + ii], pt[ii], 2pt, 20pt, 1, black);
        fi
    if (tyy >= 1):
        pt[np + ii] = p21+(-ii*2.3pt,ii*0.5pt);
        S_arrowspaces(p[pmax - ii], pt[np + ii], 2pt, 20pt, 1, black);
        fi
    endfor

label.lft(btex $z$ etex, p[pmin]+(-2pt,0));
label.bot(btex
 $\forsome X,\forall z,\bigl(z\in X\iffshort(z\in A\tslor z\in B)\bigr)$
 etex,
 0.5[p1,p2] + (0,-dy-10pt));

rat := 0.36;
label.lft(btex $\in$ etex, rat[p[pmin],pt[0]]);
label.rt(btex $\in$ etex, rat[p[pmin + np - 1],pt[np]]);

endfig;
end
