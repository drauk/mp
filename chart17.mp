% tex/conc/mp/chart17.mp   2015-4-18   Alan U. Kennington.
% $Id: tex/conc/mp/chart17.mp c8921c24c1 2015-04-18 07:22:48Z Alan U. Kennington $
% Equivalence of tangent line vectors on differentiable manifolds.
% Pruned down from chart16.mp.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric u[];
pair q[], v[];
color col[];
path pat[];
picture pic;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Parameters for the set M.
d := 2.6cm;             % Diameter of set.
r := d/2;

% Parameters for the graphs.
u1 := 1.5cm;
u2 := 3.3cm;
v0 := (u1,u2)rotated-10;
u1 := xpart(v0);
u2 := ypart(v0);

u3 := 1.8u1;
u4 := 0.3u2;

unit := 0.20cm;
np := 4;
nq := 4;
xt := 0.5;
col0 := 0.7 white;
sepA := 12pt;
sepV := 8pt;

penC := 0.5bp;          % Chart arrows.
penM := 0.5bp;          % Outline for each manifold.
penPT := 2.5bp;         % Points in manifolds.
penRN := 0.5bp;         % Line width for grids.
penREAL := 0.5bp;
penV := 0.5bp;          % Vector arrows.

lenA := (np+xt)*unit;   % Real number line.
lenB := 0.1lenA;

q0 := (0,0);            % Centre of set.
q1 := q0 + (-u1,u2);    % Centre of left coord system.
q2 := q0 + (u1,u2);     % Centre of right coord system.

% q3 := q0 + (4u1+10pt,0);
% q4 := q3 + (-u1,u2);
% q5 := q3 + (u1,u2);

q6 := q0 + (-u3,u4);    % Real numbers on the left.
q7 := q0 + (u3,u4);     % Real numbers on the right.

% The purpose of this is to reduce the space around the labels on the graph.
bbx := bboxmargin;      % Save the default bounding box margin.
bboxmargin := 0;

%==============================================================================
% Bidirectional tangent line vectors.
pickup pencircle scaled penM;
draw fullcircle scaled d shifted q0;
label.lft(btex $M$ etex, q0+(-r,0));

q40 := q0 + (-0.5unit,-0.3unit);
v10 := (3unit,3.5unit);
v20 := v10+(-sepV,sepV)/2;
v30 := v10-(-sepV,sepV)/2;
ang := angle(v10);

pickup pencircle scaled penV;
drawarrow (q40-v30)..q40{dir ang}..(q40+v20);
drawarrow (q40-v20)..q40{dir ang}..(q40+v30);

pickup pencircle scaled penPT;
draw q40;
label.ulft(btex $p$ etex, q40);

label.lft(btex $\scriptstyle\psi_1^{-1}L_1$ etex, q40+v20);
label.rt(btex $\scriptstyle\psi_2^{-1}L_2$ etex, 0.5[q40,q40+v30]);

%-----------------------------------
% Chart 1 for bidirectional.
pickup pencircle scaled penRN;
S_rn(q1, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q1+((np+1+xt)*unit,0));

q41 := q1 + (-0.5unit,0.5unit);
v11 := (3unit,3unit);
v21 := v11+(-sepV,sepV);
v31 := v11-(-sepV,sepV);
ang := angle(v11);

pickup pencircle scaled penPT;
pic := thelabel.ulft(btex $x_1$ etex, (0,0));
unfill bbox pic shifted q41;
draw q41;
draw pic shifted q41;

pic := thelabel.top(btex $L_1$ etex, (0,-2pt));
unfill bbox pic shifted (q41+v11);
draw pic shifted (q41+v11);

% q51 := q1 + (1.2unit,-2.5unit);
q51 := q1 + (1.1unit,-2.7unit);
pic := thelabel(btex $\scriptstyle\psi_1\psi_2^{-1}L_2$ etex, (0,0));
unfill bbox pic shifted q51;
draw pic shifted q51;

pickup pencircle scaled penV;
drawarrow (q41-v11)--(q41+v11);
drawarrow (q41-v21)..q41{dir ang}..(q41+v31);

%-----------------------------------
% Chart 2 for bidirectional.
pickup pencircle scaled penRN;
S_rn(q2, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q2+((np+1+xt)*unit,0));

q42 := q2 + (0.5unit,0.5unit);
v12 := (3unit,2unit);
v22 := v12 + (-sepV,sepV);
v32 := v12 - (-sepV,sepV);
ang := angle(v12);

pic := thelabel.lrt(btex $x_2$ etex, (-2pt,0));
pickup pencircle scaled penPT;
unfill bbox pic shifted q42;
draw q42;
draw pic shifted q42;

pic := thelabel.rt(btex $L_2$ etex, (-2pt,0));
unfill bbox pic shifted (q42+v12);
draw pic shifted (q42+v12);

% q52 := q2 + (-3unit,1.1unit);
q52 := q2 + (-1.2unit,2.6unit);
pic := thelabel(btex $\scriptstyle\psi_2\psi_1^{-1}L_1$ etex, (0,0));
unfill bbox pic shifted q52;
draw pic shifted q52;

pickup pencircle scaled penV;
drawarrow (q42-v12)--(q42+v12);
drawarrow (q42-v32)..q42{dir ang}..(q42+v22);

%-------------------------------------------------
% Bidirectional chart arrows.
pickup pencircle scaled penC;
S_arrowspaces(q0, q1, r+3pt, (np*unit+xt)*1.45, 1, black);
label.lft(btex $\psi_1$ etex, 0.5[q0,q1]);

S_arrowspaces(q0, q2, r+3pt, (np*unit+xt)*1.45, 1, black);
label.rt(btex $\psi_2$ etex, 0.5[q0,q2]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Real number lines.
S_reals(q6, lenA, lenB, pencircle scaled penREAL);
S_reals(q7, lenA, lenB, pencircle scaled penREAL);

pickup pencircle scaled penC;
S_arrowspaces(q6, q1, 10pt, (np*unit+xt)*1.55, 1, black);
S_arrowspaces(q7, q2, 10pt, (np*unit+xt)*1.55, 1, black);
label.ulft(btex $L_1$ etex, 0.3[q6,q1]);
label.urt(btex $L_2$ etex, 0.3[q7,q2]);

%==============================================================================
% Labels above and below the diagrams.
% label.top(btex \strut bidirectional tangent lines etex,
%  0.5[q1,q2]+(0,(np+xt+1)*unit));

% label.bot(btex \strut bidirectionally etex, q0+(0,-r));
% label.bot(btex \strut differentiable manifold etex, q0+(0,-r-sepA));

% pat1 := bbox currentpicture;
% pickup pencircle scaled 0.4pt;
% draw pat1 withcolor green;

% Restore the bbox margin for calculating the overall diagram's bbox.
bboxmargin := bbx;

% pat1 := bbox currentpicture;
% pickup pencircle scaled 0.4pt;
% draw pat1 withcolor blue;

%==============================================================================

% % Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% % show pat1;
% % pickup pencircle scaled 0.4pt;
% % draw pat1;
% bboxmargin := bbx;
%
% % Lie about the picture edges.
% % pat1 := bbox currentpicture;
% % show pat1;
% setbounds currentpicture to pat1;
% % pickup pencircle scaled 0.4pt;
% % draw pat1 dashed evenly;

endfig;
end
