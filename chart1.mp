% tex/conc/mp/chart1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/chart1.mp 55f2c9fa42 2012-05-07 13:38:32Z Alan U. Kennington $
% Map for coordinate map.
% Formerly map4.mp.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
path p[];
pair q[];
picture pic;
pen pn;
color co;

q0 := (0cm,0cm);        % Centre of set.
d := 1.2cm;             % Diameter of set.
r := d/2;
a := 1.7;               % Intersection point of subset with set.
b := -0.3;              % Midpoint of subset arc.
g := 0.9;               % Whiteness of complement of subset.

q1 := q0 + (5cm,0cm);   % Centre of coord system.
np := 6;
nq := 6;
xt := 0.5;
unit := 0.2cm;
penSS := 0.5bp;
penRN := 0.5bp;
penRNSET := 0.5bp;
penGREY := 0.5bp;
penARROW := 0.5bp;

% Draw the set M and subset U.
pickup pencircle scaled penSS;
S_subset(q0,d,a,b,g,0);

% % Draw the coords of reals^n.
pickup pencircle scaled penRN;
S_rn(q1, unit, np, nq, xt, black);

% Label reals^n.
label.bot(btex $\reals^n$ etex, q1+(0,-(nq+xt)*unit));

% Clear out set G.
q2 := (-3,1);
q3 := (0,3);
p0 := ((-2,-1)..q2..q3..(2,2)..(3,-1)..(1,-3)..cycle)
      scaled unit shifted q1;
unfill p0;

% Draw grey lines inside the set G.
pn := pencircle scaled penGREY;
co := 0.35 white;
S_rnset(q1, unit, np, nq, xt, pn scaled 0.4, co,
    p0, pencircle scaled penRNSET, black);

% Draw an arrow from U to G.
pickup pencircle scaled penARROW;
q5 := q0+(r*1.2,0cm)rotated45;
% q7 := q1+(0.5[q2,q3] scaled unit)+(-1mm,1mm);
q7 := (point 1.4 of p0)+(-0.6mm,0.6mm);
q6 := 0.5[q5,q7] + (0,0.8cm);
drawarrow q5..q6..q7;

% Labels M and U.
label.bot(btex $M$ etex, q0+(0,-r*1.2));
label.rt(btex $U$ etex, q0+(r*1.2,0));

% Label G.
pic := thelabel(btex $G$ etex, (0,0));
unfill bbox pic scaled 0.88 shifted q1;
draw pic shifted q1;

label.bot(btex $\psi$ etex, q6);

endfig;
end
