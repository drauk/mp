% tex/conc/mp/axiom8.mp   2008-12-30   Alan Kennington.
% $Id: tex/conc/mp/axiom8.mp 6addbdeaf4 2015-05-09 10:22:50Z Alan U. Kennington $
% ZF axiom of union. General case.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], pt[], ptS[];
path pat[], patS[];

q := 0.8;
qq := 0.10;
qS := 0.8;
r := 0.95cm;
rr := q * r;
d := 2r;
ang := 0;

nS := 7;                    % Number of sets S.
np := nS + 2;               % Number of points.
ww := 2.5cm;
dd := 2.8ww;
ddS := 1.3cm;               % Small circles.

dx := 0.77 * (nS-1) * ddS;
dy := rr + 1.35cm;
dyy := rr + 1.35cm;

penA := 2pt;                % Points.
penB := 0.5pt;              % Set boundaries.
penBB := 2penB;             % Set boundary.
penC := 0.4pt;              % Arrows.

p0 := (0,0);
p1 := p0 + (-dx/2,0);
p2 := p0 + (dx/2,0);
p3 := 0.5[p1,p2] + (0,-dy);
p4 := p0 + (0,dyy);         % Set to take the union of.

pickup pencircle scaled penB;
for ii = 0 upto nS - 1:
    ptS[ii] := (ii/(nS-1))[p1,p2];
    patS[ii] := (fullcircle scaled ddS) yscaled qS shifted ptS[ii];
    draw patS[ii];
    endfor

pat3 := (fullcircle scaled dd) yscaled qq shifted p3;
pat4 := (fullcircle scaled d) yscaled q shifted p4;
pickup pencircle scaled penB;
draw pat4;
pickup pencircle scaled penBB;
draw pat3 withcolor 0.7white;

p5 := p4 + (0,12pt);
pickup pencircle scaled penC;
ptd := 0.3;
for ii = 0 upto nS - 1:
    ptang := 2 - ptd + (2ii/(nS - 1)) * ptd;
    ptS[nS + ii] := point ptang of patS[ii];
    S_arrowspaces(ptS[nS + ii], p5, 2pt, 24pt, 1, black);
    endfor
ratt := 0.35;
label.ulft(btex $\in$ etex, ratt[ptS[nS],p5]);
label.urt(btex $\in$ etex, ratt[ptS[2nS - 1],p5]);

xb := 20pt;
yb := 14pt;
p11 := p1 + (-xb,yb);
p21 := p2 + (xb,yb);
p31 := 0.5[p11,p21];
p41 := point (4+ang) of patS[0];
p42 := point (8-ang) of patS[nS - 1];
p43 := point 4 of pat3;
p44 := point 0 of pat3;
p45 := point 4 of pat4;

label.lft(btex $K$ etex, p45);
label.lft(btex $S$ etex, p41);
label.lft(btex $X$ etex, p43);
label.rt(btex $\displaystyle\mcup K$ etex, p44);

pickup pencircle scaled penA;
pmin := 70;
pmax := pmin + np - 1;
for ii = 0 upto np - 1:
    xa := -ww + (2ii/(np-1))*ww;
    p[pmin + ii] := 0.5[p1,p2] + (xa, -dy);
    endfor

gap := 2.5pt;
gapp := 1.5pt;
sp := 5pt;
spp := -4pt;
for ii = 0 upto np - 1:
    pickup pencircle scaled penA;
    draw p[pmin + ii];
    pickup pencircle scaled penC;
    if (ii - 2 >= 0) and (ii - 2 < nS):
        pt[ii] = ptS[ii - 2] + (sp,spp);
        S_arrowspaces(p[pmin + ii], pt[ii], gap, gapp, 1, black);
        fi
    if (ii - 1 >= 0) and (ii - 1 < nS):
        pt[np + ii] = ptS[ii - 1] + (0,spp);
        S_arrowspaces(p[pmin + ii], pt[np + ii], gap, gapp, 1, black);
        fi
    if (ii >= 0) and (ii < nS):
        pt[2np + ii] = ptS[ii] + (-sp,spp);
        S_arrowspaces(p[pmin + ii], pt[2np + ii], gap, gapp, 1, black);
        fi
    endfor

label.lft(btex $z$ etex, p[pmin]+(-2pt,0));
label.bot(btex $\forsome X,\forall z,
 \bigl(z\in X\iffshort\forsome S,(z\in S\tsland S\in K)\bigr)$ etex,
 0.5[p1,p2] + (0,-dy-12pt));

rat := 0.45;
label.lft(btex $\in$ etex, rat[p[pmin],pt[2np]]);
label.rt(btex $\in$ etex, rat[p[pmin + np - 1],pt[np - 1]]);

endfig;
end
