% tex/conc/mp/grid6.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/grid6.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% A family of curves with a random (tangent) vector field on the manifold.

input gridmax
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], dx, dy;
path pat[];

m := 8;
n := 8;
mm := 3;
nn := 3;
unit := 2.5cm;
penVEC := 0.4bp;
penGRID := 1.5bp;
penDOT := 2.0bp;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 1024;
rand_a := 5;
rand_b := 1;

p0 := (0,0) * unit;
p1 := (1,1) * unit;
p2 := (-1.6,0.4) * unit;
p3 := (-0.2,1.35) * unit;

p11 := 0.5[p0,p1] + (0,0.2) * unit;
p12 := 0.5[p0,p2] + (0,0.1) * unit;
p13 := 0.5[p2,p3] + (0,0.18) * unit;
p14 := 0.5[p1,p3] + (0,0.1) * unit;

pat1 := p0..p11..p1;
pat2 := p0..p12..p2;
pat3 := p2..p13..p3;
pat4 := p1..p14..p3;

pickup pencircle scaled penGRID;
G_grid(pat)(m, n, mm, nn, 0, 0, 0.8white);

p20 := p1;
p21 := p1+(0,0.2)*unit;
pickup pencircle scaled penVEC;
for i=0 upto G_m:
    for j=0 upto G_n:
        % Create two random numbers in [0,T).
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        rx := 1 - 2rand_x/rand_T;
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        ry := 1 - 2rand_x/rand_T;

        % Find out what the tangent plane is.
        if (i=0):
            dx := G_p[(i+1)*G_b1][j*G_b2] - G_p[i*G_b1][j*G_b2];
        else:
            dx := G_p[i*G_b1][j*G_b2] - G_p[(i-1)*G_b1][j*G_b2];
            fi
        if (j=0):
            dy := G_p[i*G_b1][(j+1)*G_b2] - G_p[i*G_b1][j*G_b2];
        else:
            dy := G_p[i*G_b1][j*G_b2] - G_p[i*G_b1][(j-1)*G_b2];
            fi

        p22 := (rx*dx + ry*dy);
        if ((i=G_m) and (j=0)):
            p20 := G_p[i*G_b1][j*G_b2];
            p21 := G_p[i*G_b1][j*G_b2] + p22;
            fi
        drawarrow G_p[i*G_b1][j*G_b2]--(G_p[i*G_b1][j*G_b2]+p22);
        endfor
    endfor
pickup pencircle scaled penDOT;
for i=0 upto G_m:
    for j=0 upto G_n:
        draw G_p[i*G_b1][j*G_b2];
        endfor
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat10 := bbox currentpicture;
bboxmargin := bbx;

% A label.
label.lrt(btex $p$ etex, p20);
label.rt(btex $X(p)\in T_p(M)$ etex, p21);

setbounds currentpicture to pat10;

endfig;
end
