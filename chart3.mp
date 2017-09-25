% tex/conc/mp/chart3.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/chart3.mp 5d8440b8e0 2012-07-19 06:43:07Z Alan U. Kennington $
% Map for coordinate map.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);

path p[];
pair q[];
picture pic;
pen pn;
numeric co[];
color col[];
numeric w[];
numeric u[];

% Parameters for the set M.
q0 := (0cm,0cm);        % Centre of set.
d := 2.5cm;             % Diameter of set.
r := d/2;
a := 1.7;               % Intersection point of subset with set.
b := -0.28;             % Midpoint of subset arc.
g := 0.9;               % Whiteness of complement of subset.
co[0] := 0.81;          % Whiteness of complement of 2 subsets.
co[1] := 0.90;          % Whiteness of complement of 1 subset only.
co[2] := 1;             % Intersection of 2 subsets.

% Parameters for the graphs.
u1 := 4.7cm;
u2 := 3cm;
q1 := q0 + (-u1,-u2);   % Centre of coord system.
q2 := q0 + (u1,-u2);    % Centre of coord system.
np := 6;
nq := 6;
xt := 0.5;
unit := 0.3cm;
col0 := 0.7 white;
col1 := 0.0 white;
col2 := 0.47 white;
col3 := 0.9 white;
penSS := 0.5bp;
penRN := 0.5bp;         % Line width for grids.
penIN := 0.5bp;         % Line width for grid inside sets G_i.
penOUT := 0.5bp;        % Line width for outline of sets G_i.
penARROW := 0.5bp;
scGRID := 1.0;          % Second line width for grid inside G_i.

%-----------------------------------
% Draw the set M and subset U.
pickup pencircle scaled penSS;
S_subset(q0,d,a,b,g,-90);

% Put some labels on M.
label.top(btex $M$ etex, q0+(0,r));

defaultfont := "cmr8";
label.top(btex $U$ etex, q0+(0,-r*0.5));

%-----------------------------------
% Draw two copies of the coords of reals^n.
pickup pencircle scaled penRN;
S_rn(q1, unit, np, nq, xt, col0);
label.bot(btex $\reals^n$ etex, q1+(0,-(nq+xt)*unit));

% Clear out set G_1.
q11 := (-3,-1);
q12 := (-3,1);
q13 := (0,3);
q14 := (2,2);
q15 := (4,-1);
q16 := (1,-4);
p10 := (q11..q12..q13..q14..q15..q16..cycle) scaled unit shifted q1;
unfill p10;

% Draw grey lines inside the set G_1.
S_rnset(q1, unit, np, nq, xt, pencircle scaled penIN, col1,
    p10, pencircle scaled penOUT, black);

%-----------------------------------
% Copy 2.
pickup pencircle scaled penRN;
S_rn(q2, unit, np, nq, xt, col0);
label.bot(btex $\reals^m$ etex, q2+(0,-(nq+xt)*unit));

% Clear out set G_2.
q21 := (-2,-1);
q22 := (-3,2);
q23 := (0,3);
q24 := (2,2);
q25 := (2,0);
q26 := (4,-4);
q27 := (-1,-3);
p20 := (q21..q22..q23..q24..q25..q26..q27..cycle) scaled unit shifted q2;
unfill p20;

% Draw grey lines inside the set G_2.
S_rnset(q2, unit, np, nq, xt, pencircle scaled penIN, col1,
    p20, pencircle scaled penOUT, black);

%----------------------------------------------
% Draw some arrows.
q30 := q1 + (3.5,-3.5) scaled unit;
q32 := q2 + (-2.5,-2.5) scaled unit;
q31 := 0.5[q30,q32] + (0,-5mm);
p31 := q30..q31..q32;
pickup pencircle scaled penARROW;
drawarrow p31;
label.bot(btex $f\circ\psi^{-1}\restrict{\psi(U)}$ etex, q31);

q33 := q0+(-r*1.3,0)rotated20;
q35 := q1 + (1.5,3.5) scaled unit;
q34 := 0.5[q33,q35] + (-2mm,2mm);
p34 := q33..q34..q35;
pickup pencircle scaled penARROW;
drawarrow p34;
label.top(btex $\psi$ etex, q34+(0mm,1mm));

q33 := q0+(r*1.3,0)rotated-20;
q35 := q2 + (-2.5,3.5) scaled unit;
q34 := 0.5[q33,q35] + (2mm,2mm);
p34 := q33..q34..q35;
pickup pencircle scaled penARROW;
drawarrow p34;
label.urt(btex $f$ etex, q34);

%-------------------------------------------------
% Label some sets.
q33 := q1 + (-3,4)*unit;
pic := thelabel(btex $\psi(U)$ etex, (0,0));
unfill bbox pic xscaled 0.91 yscaled 0.88 shifted q33;
draw pic shifted q33;

q33 := q2 + (4,3)*unit;
pic := thelabel(btex $f(U)$ etex, (0,0));
unfill bbox pic xscaled 0.91 yscaled 0.88 shifted q33;
draw pic shifted q33;

endfig;
end
