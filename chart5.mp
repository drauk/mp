% tex/conc/mp/chart5.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/chart5.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Definition of the tangent vector functional.

input mapmax
input gridmax
verbatimtex
\input akmath
etex

beginfig(1);
pair q[];
color colGREY;
path pat[], gamma[];
picture pic;

% The manifold.
q0 := (0cm,0cm);        % Centre of set.
d := 2.9cm;             % Diameter of set.
r := d/2;
a := 2.2;               % Intersection point of subset with set.
b := -0.64;             % Midpoint of subset arc.
g := 0.9;               % Whiteness of complement of subset.

% The coordinate grid.
q1 := q0 + (7.2cm,-1.5cm);   % Centre of coord system.
np := 4;
nq := 4;
xt := 0.5;
unit := 0.58cm;
colGREY := 0.5 white;

penA := 0.5bp;
penRN := 0.5bp;
penC := 0.5bp;
penD := 0.5bp;
penE := 0.5bp;
penF := 0.5bp;
penGREY := 0.5bp;
penPT := 2.5bp;

% Draw the set M and subset U.
pickup pencircle scaled penF;
S_subset(q0,d,a,b,g,0);

% Draw the coords of reals^n.
pickup pencircle scaled penRN;
S_rn(q1, unit, np, nq, xt, black);
label.bot(btex $\reals^n$ etex, q1+(0,-(nq+xt)*unit));

% Clear out set G.
q2 := (-3,1);
q3 := (0,3.8);
pat0 := ((-3.5,-1)..q2..q3..(3.2,3.2)..(4.1,-1)..(1,-3.5)..cycle)
 scaled unit shifted q1;
unfill pat0;

% Draw grey lines inside the set G.
pic := nullpicture;
for i=-np step 1 until np:
    pat1 := ((i*unit, -(nq+xt)*unit)--(i*unit, (nq+xt)*unit)) shifted q1;
    addto pic
        doublepath pat1 withpen pencircle scaled penGREY withcolor colGREY;
    endfor
for j=-nq step 1 until nq:
    pat1 := ((-(np+xt)*unit, j*unit)--((np+xt)*unit, j*unit)) shifted q1;
    addto pic
        doublepath pat1 withpen pencircle scaled penGREY withcolor colGREY;
    endfor
clip pic to pat0;
addto currentpicture also pic;
pickup pencircle scaled penA;
draw pat0;

% Draw an arrow from U to G.
q5 := q0+(r*1.2,0cm)rotated45;
% q7 := q1+(0.5[q2,q3] scaled unit)+(-1mm,1mm);
q7 := (-2.5,2.5) scaled unit + q1;
q6 := 0.5[q5,q7] + (0,0.8cm);
pickup pencircle scaled penF;
drawarrow q5..q6..q7;

% Labels M and U and point p.
label.bot(btex $M$ etex, q0+(0,-r));
label.lft(btex $U=\Domain(\psi)$ etex, q0+(r*0.95,0)rotated-12);
q8 := q0+(r*0.35,0)rotated55;
pickup pencircle scaled penPT;
draw q8;
label.ulft(btex $p$ etex, q8);

% Point psi(p).
q9 := q1+(-0.5,0.5)*unit;
pickup pencircle scaled penPT;
draw q9;
pic := thelabel.llft(btex $\psi(p)$ etex,q9-(0.1,0.1)*unit);
unfill bbox pic;
draw pic;

% Draw some level curves. (Old obsolete version.)
% pickup pencircle scaled penE;
% q10 := q9 + (-1.2,1.5) * unit;
% q11 := q9;
% q12 := q9 + (1.1,-3) * unit;
% q14 := (0.4,0.2)*unit;
% for i=0 step 1 until 3:
%     q13 := q14*i;
%     draw q10+q13..q11+q13..q12+q13;
%     endfor

% Draw some level curves. New version.
pickup pencircle scaled penE;
q10 := q9 + (-1.5,1.5) * unit;
q11 := q9;
q12 := q9 + (0.2,-2.5) * unit;
q30 := q10+(0.8,0.6)*unit;
q31 := q11+(1.2,0.6)*unit;
q32 := q12+(1.8,-0.2)*unit;
gamma1 := q10..q11..q12;
gamma2 := q10..q30;
gamma3 := q30..q31..q32;
gamma4 := q12..q32;
G_grid(gamma)(-1, 4, 6, 2, 0, 0, black);

q14 := ((0.4,0.2)*unit) rotated 6;
q15 := q9+q14*6.9+(0,0.30)*unit;
q16 := q9+(q14*4.5) rotated 40;
pickup pencircle scaled penF;
drawarrow q9--q15;
drawarrow q9--q16;
pic := thelabel.rt(btex $\partial_i(f\circ\psi^{-1})$ etex,q15);
unfill bbox pic;
draw pic;
pic := thelabel.urt(btex $v^i$ etex,q16);
unfill bbox pic;
draw pic;

% Label the level curves.
q17 := q1 + (np+1,-0.9)*unit;
q18 := q1 + (1.5,-0.3)*unit;
label.rt(btex level curves etex, q17);
label.rt(btex of $f\circ\psi^{-1}$ etex, q17+(0,-14pt));
pickup pencircle scaled penF;
drawarrow q17..q18;

% Labels psi and psi(U).
pic := thelabel(btex $\psi(U)$ etex, (0,0));
% q19 := (4,3.7) * unit;
q19 := (-2,-2) * unit;
unfill bbox pic scaled 0.99 shifted (q1 + q19);
draw pic shifted (q1 + q19);
label.llft(btex $\psi$ etex, q6);

% The real numbers.
q21 := (2cm,0cm);
q22 := (q21*0.1) rotated 90;
q20 := q0+(1.8cm,ypart(q1+(0,-nq-xt)*unit))+q22;
S_reals(q20, 2.0cm, 0.2cm, pencircle scaled penA);

% Arrow from M to reals.
q23 := q0+(r*1.2,0)rotated-55;
q25 := q20+(q22*3)rotated15;
q24 := 0.5[q23,q25];
pickup pencircle scaled penF;
drawarrow q23..q24..q25;
label.llft(btex $f$ etex, q24+(-3pt,0));

% Arrow from reals^n to reals.
q26 := q1+(-3.5,0.5)*unit;
q28 := q20+(q22*3)rotated-45;
q27 := 0.5[q26,q28]+(-2mm,2mm);
pickup pencircle scaled penF;
drawarrow q26..q27..q28;
label.ulft(btex $f\circ\psi^{-1}$ etex, q27+(0,-4pt));

endfig;
end
