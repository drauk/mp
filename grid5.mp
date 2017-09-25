% tex/conc/mp/grid5.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/grid5.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% A family of curves with a vector field.

input gridmax
verbatimtex
\input akmath
etex

beginfig(1);
path pat[];
pair p[];

m := 8;
n := 8;
mm := 3;
nn := 3;
unit := 2.5cm;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 1024;
rand_a := 5;
rand_b := 1;

p0 := (0,0) * unit;
p1 := (1,1) * unit;
p2 := (-1.6,0.4) * unit;
p3 := (-0.2,1.22) * unit;

p11 := 0.5[p0,p1] + (0,0.2) * unit;
p12 := 0.5[p0,p2] + (0,0.1) * unit;
p13 := 0.5[p2,p3] + (0,0.2) * unit;
p14 := 0.5[p1,p3] + (0,0.1) * unit;

pat1 := p0..p11..p1;
pat2 := p0..p12..p2;
pat3 := p2..p13..p3;
pat4 := p1..p14..p3;

pickup pencircle scaled 1.5pt;
G_grid(pat)(m, n, mm, nn, 0, 0, 0.8white);

p20 := p1;
p21 := p1+(0,0.2)*unit;
pickup pencircle scaled 0.4pt;
for i=0 upto G_m:
    for j=0 upto G_n:
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        p22 := (1.0*(0.5-rand_x/rand_T),1) * 0.2unit;
        if ((i=G_m) and (j=0)):
            p20 := G_p[i*G_b1][j*G_b2];
            p21 := G_p[i*G_b1][j*G_b2]+p22;
            fi
        drawarrow G_p[i*G_b1][j*G_b2]--(G_p[i*G_b1][j*G_b2]+p22);
        endfor
    endfor
pickup pencircle scaled 2pt;
for i=0 upto G_m:
    for j=0 upto G_n:
        draw G_p[i*G_b1][j*G_b2];
        endfor
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat10 := bbox currentpicture;
% show pat10;
% pickup pencircle scaled 0.4pt;
% draw pat10;
bboxmargin := bbx;

% A label.
label.rt(btex $p$ etex, p20);
label.rt(btex $X(p)\in T_p(M)$ etex, p21);

% Lie about the picture edges.
% pat10 := bbox currentpicture;
% show pat10;
setbounds currentpicture to pat10;
% pickup pencircle scaled 0.4pt;
% draw pat10 dashed evenly;

endfig;
end
