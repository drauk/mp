% tex/conc/mp/chart15.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/chart15.mp 394b0ab550 2012-05-08 01:23:36Z Alan U. Kennington $
% Comparison of Cartesian charts for Euclidean space and differentiable
% manifolds.
% This is an unbelievable sloppy, poorly structured MetaPost file.
% Do not write MetaPost like in this file!

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
path pat[];
pair q[], v[];
picture pic;
pen pn;
numeric co[];
color col[];
numeric w[];
numeric u[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Parameters for the set M.
q0 := (0cm,0cm);        % Centre of set.
d := 2.5cm;             % Diameter of set.
r := d/2;
b := -0.28;             % Midpoint of subset arc.
co[0] := 0.81;          % Whiteness of complement of 2 subsets.
co[1] := 0.90;          % Whiteness of complement of 1 subset only.
co[2] := 1;             % Intersection of 2 subsets.

% Parameters for the graphs.
u1 := 1.4cm;
u2 := 3.6cm;
q1 := q0 + (-u1,u2);     % Centre of coord system.
q2 := q0 + (u1,u2);    % Centre of coord system.
np := 4;
nq := 4;
xt := 0.5;
unit := 0.20cm;
col0 := 0.7 white;
col1 := 0.0 white;
col2 := 0.47 white;
col3 := 0.9 white;
penRN := 0.5bp;         % Line width for grids.
penIN := 0.5bp;         % Line width for grid inside sets G_i.
scGRID := 1.0;          % Second line width for grid inside G_i.
penOUT := 0.5bp;        % Outline for each manifold.
penPT := 2.5bp;         % Points in manifolds.
penLN := 0.5bp;

q3 := q0 + (-4u1-10pt,0);
q4 := q3 + (-u1,u2);
q5 := q3 + (u1,u2);

% Dotted line end-points.
q8 := 0.5[q3+(-r,0),q4+(-(np+xt)*unit,2unit)]+(-3unit,0);
q9 := 0.5[q0+(r,0),q2+((np+xt)*unit,2unit)]+(3unit,0);
pickup pencircle scaled penLN;
draw q8--q9 dashed evenly;

%==============================================================================
% Draw the set M and two subsets.
pickup pencircle scaled penOUT;
draw fullcircle scaled d shifted q0;
label.rt(btex $M$ etex, q0+(r,0));

q41 := (-1,-1);
q42 := (-3,1);
q43 := (0,3);
q44 := (2,2);
q45 := (4,-1);
q46 := (1,-4);
pat29 := q41..q42..q43..q44..q45..q46..cycle;
pat30 := (pat29 shifted (-0.5,-0.5)) rotated 180 scaled 0.8unit shifted q0;
pickup pencircle scaled penIN scaled scGRID;
draw pat30;

angA := angle(direction 3 of pat29);
pat31 := (((q43+(0,1.5))..{dir angA}q44{dir angA}..(q45+(1.5,0)))
 shifted(-0.5,-0.5)) rotated 180 scaled 0.8unit shifted q0;
drawarrow pat31;

pickup pencircle scaled penPT;
q47 := point 3 of pat30;
draw q47;
label.llft(btex $p$ etex, q47);

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
pat9 := q11..q12..q13..q14..q15..q16..cycle;
pat10 := (pat9 shifted(0.5,1.5)) scaled 0.7unit shifted q1;

% Draw the set.
pickup pencircle scaled penIN scaled scGRID;
draw pat10;

pickup pencircle scaled penPT;
v4 := direction 3 of pat10;
q18 := point 3 of pat10;
pic := thelabel(btex $x_1$ etex, (0,0));
unfill bbox pic xscaled 0.9 yscaled 0.9 shifted (q18+(6pt,6pt));
draw q18;
draw pic shifted (q18+(6pt,6pt));

pickup pencircle scaled penIN scaled scGRID;
drawarrow (q18-2v4)--q18--(q18+2v4);

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
pat19 := q21..q22..q23..q24..q25..q26..q27..cycle;
pat20 := (pat19 shifted(0,2.3)) rotated 90 scaled 0.7unit shifted q2;

% Draw the set.
pickup pencircle scaled penIN scaled scGRID;
draw pat20;

angC := angle(direction 4 of pat19);
pat11 := (((q24+(2.5,0.5))..{dir angC}q25{dir angC}..(q26+(0.5,2.5)))
 shifted(0,2.3)) rotated 90 scaled 0.7unit shifted q2;
drawarrow pat11;

pickup pencircle scaled penPT;
q28 := point 4 of pat20;
pic := thelabel(btex $x_2$ etex, (0,0));
unfill bbox pic xscaled 0.9 yscaled 0.9 shifted (q28+(0pt,-8pt));
draw q28;
draw pic shifted (q28+(0pt,-8pt));

%-------------------------------------------------
% Label some sets.
q33 := q1 + (2,4)*unit;
pic := thelabel.rt(btex $\psi_1(U_1)=\Range(\psi_1)$ etex, (0,0));
% unfill bbox pic xscaled 0.91 yscaled 0.88 shifted q33;
% draw pic shifted q33;

q33 := q2 + (2,4)*unit;
pic := thelabel.rt(btex $\psi_2(U_2)=\Range(\psi_2)$ etex, (0,0));
% unfill bbox pic xscaled 0.91 yscaled 0.88 shifted q33;
% draw pic shifted q33;

% Some arrows.
pickup pencircle scaled penLN;
S_arrowspaces(q0, q1, r+3pt, (np*unit+xt)*1.35, 1, black);
label.lft(btex $\psi_1$ etex, 0.45[q0,q1]);

S_arrowspaces(q0, q2, r+3pt, (np*unit+xt)*1.35, 1, black);
label.rt(btex $\psi_2$ etex, 0.45[q0,q2]);

%==============================================================================
% Draw the set M and two subsets.
pickup pencircle scaled penOUT;
draw fullcircle scaled d shifted q3;

pat30 := (fullcircle rotated -90) scaled r shifted (q3+(-8pt,-8pt));
pickup pencircle scaled penIN scaled scGRID;
draw pat30;

v1 := direction 3 of pat30;
q43 := point 3 of pat30;

drawarrow (q43-2v1)--q43--(q43+3v1);

pickup pencircle scaled penPT;
draw q43;
label.urt(btex $p$ etex, q43);

%-----------------------------------
% Draw two copies of the coords of reals^n.
pickup pencircle scaled penRN;
S_rn(q4, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q4+((np+1+xt)*unit,0));

pat10 := fullcircle scaled 0.8r shifted (q4+(5pt,0));
pickup pencircle scaled penIN scaled scGRID;
draw pat10;

v2 := direction 3 of pat10;
q13 := point 3 of pat10;

drawarrow (q13-2v2)--q13--(q13+3v2);

pickup pencircle scaled penPT;
pic := thelabel.ulft(btex $x_1$ etex, (0,0));
unfill bbox pic xscaled 0.9 yscaled 0.9 shifted q13;
draw q13;
draw pic shifted q13;

%-----------------------------------
% Copy 2.
pickup pencircle scaled penRN;
S_rn(q5, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q5+((np+1+xt)*unit,0));

pat20 := (fullcircle rotated 200) scaled 0.8r shifted (q5+(-5pt,0));
pickup pencircle scaled penIN scaled scGRID;
draw pat20;

v3 := direction 3 of pat20;
q23 := point 3 of pat20;

drawarrow (q23-2v3)--q23--(q23+3v3);

pickup pencircle scaled penPT;
pic := thelabel.lrt(btex $x_2$ etex, (0,0));
unfill bbox pic xscaled 0.9 yscaled 0.9 shifted q23;
draw q23;
draw pic shifted q23;

%-------------------------------------------------
% Some arrows.
pickup pencircle scaled penLN;
S_arrowspaces(q3, q4, r+3pt, (np*unit+xt)*1.35, 1, black);
label.lft(btex $\psi_1$ etex, 0.45[q3,q4]);

S_arrowspaces(q3, q5, r+3pt, (np*unit+xt)*1.35, 1, black);
label.rt(btex $\psi_2$ etex, 0.45[q3,q5]);

label.bot(btex Euclidean geometry etex, q3+(0,-r));
label.bot(btex differential geometry etex, q0+(0,-r));

label.top(btex Cartesian transition maps etex,
 0.5[q4,q5]+(0,(np+xt+1)*unit));
label.top(btex differentiable transition maps etex,
 0.5[q1,q2]+(0,(np+xt+1)*unit));

%==============================================================================
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.top(btex numeric charts etex, q8);
label.bot(btex real geometry etex, q8);
label.top(btex coordinates etex, 0.5[q8,q9]);
label.bot(btex points etex, 0.5[q8,q9]);

setbounds currentpicture to pat1;

endfig;
end
