% tex/conc/mp/chart8.mp   2015-8-20   Alan U. Kennington.
% $Id: tex/conc/mp/chart8.mp c65bdace80 2015-08-20 05:08:19Z Alan U. Kennington $
% Map for collage of two manifold patches.

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
b := -0.28;             % Midpoint of subset arc.
co[0] := 0.81;          % Whiteness of complement of 2 subsets.
co[1] := 0.90;          % Whiteness of complement of 1 subset only.
co[2] := 1;             % Intersection of 2 subsets.

% Parameters for the graphs.
u1 := 4.7cm;
u2 := 1.4cm;
q1 := q0 + (u1,u2);     % Centre of coord system.
q2 := q0 + (u1,-u2);    % Centre of coord system.
np := 4;
nq := 4;
xt := 0.5;
unit := 0.25cm;
col0 := 0.7 white;
col1 := 0.0 white;
col2 := 0.47 white;
col3 := 0.9 white;
penSS := 0.5bp;
penRN := 0.5bp;         % Line width for grids.
penIN := 0.5bp;         % Line width for grid inside sets G_i.
penOUT := 0.5bp;        % Line width for outline of sets G_i.
penARROW := 0.5bp;
penPT := 2.5bp;

%-----------------------------------
% Draw the set M and two subsets.
pickup pencircle scaled penSS;
S_subsets(q0,d, 30,85,b, -30,85,b, co[0],co[1],co[2]);

% Put some labels on M.
label.lft(btex $M$ etex, q0+(-r,0));
label.top(btex $U_1\rlap{${}=\Domain(\psi_1)$}$ etex, q0+(r,0)rotated80);
label.bot(btex $U_2\rlap{${}=\Domain(\psi_2)$}$ etex, q0+(r,0)rotated-80);
label.lft(btex $p$ etex, q0+(r*0.5,0));
pickup pencircle scaled penPT;
draw q0+(r*0.5,0);

%-----------------------------------
% Draw two copies of the coords of reals^n.
pickup pencircle scaled penRN;
S_rn(q1, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q1+((np+1+xt)*unit,0));

% Clear out set G_1.
q11 := (-2,-1);
q12 := (-3,1);
q13 := (0,3);
q14 := (2,2);
q15 := (4,-1);
q16 := (1,-4);
% The outside curve.
p10 := ((q11..q12..q13..q14..q15..q16..cycle)shifted(-0.5,0.5))
 scaled unit shifted q1;
unfill p10;

% Draw the set.
S_rnset(q1, unit, np, nq, xt, pencircle scaled penIN, col1,
    p10, pencircle scaled penOUT, black);
q17 = (0.5,-1.5) scaled unit shifted q1;
pic := thelabel(btex $x_1$ etex, (0,0));
unfill bbox pic xscaled 0.95 yscaled 0.95 shifted (q17+(0,8pt));
draw pic shifted (q17+(0,8pt));
pickup pencircle scaled penPT;
draw q17;

%-----------------------------------
% Copy 2.
pickup pencircle scaled penRN;
S_rn(q2, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q2+((np+1+xt)*unit,0));

% Clear out set G_2.
q21 := (-2,-1);
q22 := (-3,2);
q23 := (0,3);
q24 := (2,2);
q25 := (2,0);
q26 := (4,-4);
q27 := (-1,-3);
p20 := ((q21..q22..q23..q24..q25..q26..q27..cycle)shifted(0,1))
 scaled unit shifted q2;
unfill p20;

% Draw the set.
S_rnset(q2, unit, np, nq, xt, pencircle scaled penIN, col1,
    p20, pencircle scaled penOUT, black);
q28 = (0.5,1.5) scaled unit shifted q2;
pic := thelabel(btex $x_2$ etex, (0,0));
unfill bbox pic xscaled 0.95 yscaled 0.95 shifted (q28+(0,-8pt));
draw pic shifted (q28+(0,-8pt));
pickup pencircle scaled penPT;
draw q28;

%----------------------------------------------
% Draw some arrows.
q33 := q0+(r*1.3,0)rotated20;
q35 := q1 + (-3.5,-0.5) scaled unit;
q34 := 0.5[q33,q35] + (0mm,2mm);
p34 := q33..q34..q35;
pickup pencircle scaled penARROW;
drawarrow p34;
label.bot(btex $\psi_1$ etex, q34);

q33 := q0+(r*1.3,0)rotated-20;
q35 := q2 + (-3.5,1.5) scaled unit;
q34 := 0.5[q33,q35] + (0mm,-2mm);
p34 := q33..q34..q35;
pickup pencircle scaled penARROW;
drawarrow p34;
label.top(btex $\psi_2$ etex, q34);

%-------------------------------------------------
% Label some sets.
q33 := q1 + (2,4)*unit;
pic := thelabel.rt(btex $\psi_1(U_1)=\Range(\psi_1)$ etex, (0,0));
unfill bbox pic xscaled 0.91 yscaled 0.88 shifted q33;
draw pic shifted q33;

q33 := q2 + (2,4)*unit;
pic := thelabel.rt(btex $\psi_2(U_2)=\Range(\psi_2)$ etex, (0,0));
unfill bbox pic xscaled 0.91 yscaled 0.88 shifted q33;
draw pic shifted q33;

endfig;
end
