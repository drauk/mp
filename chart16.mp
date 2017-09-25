% tex/conc/mp/chart16.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/chart16.mp 394b0ab550 2012-05-08 01:23:36Z Alan U. Kennington $
% Equivalence of tangent line vectors on (semi)differentiable manifolds.

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
penVEC := 0.4bp;        % Vector arrows.

bbx := bboxmargin;      % Save the default bounding box margin.
bboxmargin := 0;

q0 := (0,0);            % Centre of set.
q1 := q0 + (-u1,u2);    % Centre of left coord system.
q2 := q0 + (u1,u2);     % Centre of right coord system.

q3 := q0 + (4u1+10pt,0);
q4 := q3 + (-u1,u2);
q5 := q3 + (u1,u2);

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

pickup pencircle scaled penVEC;
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

pickup pencircle scaled penVEC;
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

pickup pencircle scaled penVEC;
drawarrow (q42-v12)--(q42+v12);
drawarrow (q42-v32)..q42{dir ang}..(q42+v22);

%-------------------------------------------------
% Bidirectional chart arrows.
pickup pencircle scaled penC;
S_arrowspaces(q0, q1, r+3pt, (np*unit+xt)*1.35, 1, black);
label.lft(btex $\psi_1$ etex, 0.5[q0,q1]);

S_arrowspaces(q0, q2, r+3pt, (np*unit+xt)*1.35, 1, black);
label.rt(btex $\psi_2$ etex, 0.5[q0,q2]);

%==============================================================================
% Unidirectional tangent line vectors.
pickup pencircle scaled penM;
draw fullcircle scaled d shifted q3;
label.rt(btex $M$ etex, q3+(r,0));

q43 := q3 + (-2unit,-2unit);
v13 := (5unit,5unit);
v23 := v13 + (-sepV,sepV)/2;
v33 := v13 - (-sepV,sepV)/2;
ang := angle(v13);

pickup pencircle scaled penVEC;
drawarrow q43{dir ang}..(q43 + v23);
drawarrow q43{dir ang}..(q43 + v33);

pickup pencircle scaled penPT;
draw q43;
label.llft(btex $p$ etex, q43+(-1.5pt,0));

label.lft(btex $\scriptstyle\psi_1^{-1}L_1$ etex, 0.95[q43,q43+v23]);
label.rt(btex $\scriptstyle\psi_2^{-1}L_2$ etex, 0.55[q43,q43+v33]);

%-----------------------------------
% Chart 1 for unidirectional.
pickup pencircle scaled penRN;
S_rn(q4, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q4+((np+1+xt)*unit,0));

% q44 := q4 + (-1.5unit,-1.5unit);
q44 := q4 + (-2.5unit,-1.5unit);
v14 := (5unit,4unit);
v24 := v14 + (-sepV,sepV);
v34 := v14 - (-sepV,sepV);
ang := angle(v14);

pickup pencircle scaled penPT;
pic := thelabel.lft(btex $x_1$ etex, (2pt,-1pt));
unfill bbox pic shifted q44;
draw q44;
draw pic shifted q44;

pic := thelabel.top(btex $L_1$ etex, (0.2pt,-2pt));
unfill bbox pic shifted (q44+v14);
draw pic shifted (q44+v14);

% q54 := q4 + (1.9unit,-1.8unit);
q54 := q4 + (1.4unit,-1.3unit);
pic := thelabel(btex $\scriptstyle\psi_1\psi_2^{-1}L_2$ etex, (0,0));
unfill bbox pic shifted q54;
draw pic shifted q54;

pickup pencircle scaled penVEC;
drawarrow q44--(q44 + v14);
drawarrow q44{dir ang}..(q44 + v34);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Chart 2 for unidirectional.
pickup pencircle scaled penRN;
S_rn(q5, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q5+((np+1+xt)*unit,0));

q45 := q5 + (-2.5unit,-1.5unit);
v15 := (5unit,4unit);
v25 := v15 + (-sepV,sepV);
v35 := v15 - (-sepV,sepV);
ang := angle(v15);

pickup pencircle scaled penPT;
pic := thelabel.bot(btex $x_2$ etex, (0,0.5pt));
unfill bbox pic shifted q45;
draw q45;
draw pic shifted q45;

pic := thelabel.rt(btex $L_2$ etex, (-2pt,0));
unfill bbox pic shifted (q45+v15);
draw pic shifted (q45+v15);

% q55 := q5 + (-3.3unit,1.5unit);
q55 := q5 + (-2.8unit,2.5unit);
pic := thelabel(btex $\scriptstyle\psi_2\psi_1^{-1}L_1$ etex, (0,0));
unfill bbox pic shifted q55;
draw pic shifted q55;

pickup pencircle scaled penVEC;
drawarrow q45--(q45 + v15);
drawarrow q45{dir ang}..(q45 + v25);

%-------------------------------------------------
% Unidirectional chart arrows.
pickup pencircle scaled penC;
S_arrowspaces(q3, q4, r+3pt, (np*unit+xt)*1.35, 1, black);
label.lft(btex $\psi_1$ etex, 0.5[q3,q4]);

S_arrowspaces(q3, q5, r+3pt, (np*unit+xt)*1.35, 1, black);
label.rt(btex $\psi_2$ etex, 0.5[q3,q5]);

%==============================================================================
% Labels above and below the diagrams.
label.top(btex \strut bidirectional tangent lines etex,
 0.5[q1,q2]+(0,(np+xt+1)*unit));
label.top(btex \strut unidirectional tangent lines etex,
 0.5[q4,q5]+(0,(np+xt+1)*unit));

label.bot(btex \strut bidirectionally etex, q0+(0,-r));
label.bot(btex \strut differentiable manifold etex, q0+(0,-r-sepA));
label.bot(btex \strut unidirectionally etex, q3+(0,-r));
label.bot(btex \strut differentiable manifold etex, q3+(0,-r-sepA));

% Restore the bbox margin for calculating the overall diagram's bbox.
bboxmargin := bbx;

endfig;
end
