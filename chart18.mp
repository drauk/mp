% tex/conc/mp/chart18.mp   2015-4-18   Alan U. Kennington.
% $Id: tex/conc/mp/chart18.mp 98bd03ce0b 2015-04-18 09:44:10Z Alan U. Kennington $
% Tangent vector field of a differentiable curve.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair q[], v[];
color col[];
path pat[];
picture pic;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Parameters for the set M.
d := 3.6cm;             % Diameter of set.
r := d/2;

% Parameters for the graphs.
aa := 6.2cm;
bb := 3.2cm;

unit := 0.20cm;
np := 6;
nq := 6;
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
q1 := q0 + (aa,00);     % Centre of coord system.
q2 := 0.5[q0,q1]+(0,-bb); % Real numbers on the left.

% The purpose of this is to reduce the space around the labels on the graph.
bbx := bboxmargin;      % Save the default bounding box margin.
bboxmargin := 0;

%==============================================================================
% The curve in the manifold.
pickup pencircle scaled penM;
draw fullcircle scaled d shifted q0;
label.lft(btex $M$ etex, q0+(-r,0));

q40 := q0 + (-2.8unit,-1.5unit);
v10 := (3unit,3.5unit);
v20 := v10+(-sepV,sepV)/2;
v30 := v10+(sepV,-sepV)/2;
v40 := v10+(-sepV,sepV);
ang := angle(v10);

q20 := q40 - v20;
q21 := q40;
q22 := q40 + v30;
q23 := q22 + v40;
% q24 := q23 + v50;
pat1 := q20..q21{dir ang}..q22..q23;
tA := 2;
q29 := point tA of pat1;
v99 := direction tA of pat1;
angB := angle(v99);
v98 := (length(v10),0) rotated angB;

q30 := q40 - v30;
q31 := q40;
q32 := q40 + v20;
pat2 := q30..q31{dir ang}..q32;

q35 := q29 - v98 + (sepV,-sepV)/2;
q36 := q29;
q37 := q29 + v98 + (sepV,-sepV)/2;
pat3 := q35..q36{dir angB}..q37;
q39 := point 1.7 of pat3;

pickup pencircle scaled penV;
drawarrow pat1;
drawarrow pat2;
drawarrow pat3;

pickup pencircle scaled penPT;
draw q40;
label.ulft(btex $p_1$ etex, q40);
draw q36;
label.lrt(btex $p_2$ etex, q36);

label.rt(btex $\scriptstyle\Image(\gamma)$ etex, q20);
label.lft(btex $\scriptstyle\Image(\gamma)$ etex, q23);
label.lft(btex $\scriptstyle\psi^{-1}\circ L_1$ etex, q32+(-1pt,0pt));
label.lrt(btex $\scriptstyle\psi^{-1}\circ L_2$ etex, q39+(-3pt,1.5pt));

%==============================================================================
% Cartesian chart.
pickup pencircle scaled penRN;
S_rn(q1, unit, np, nq, xt, col0);
label.rt(btex $\reals^n$ etex, q1+((np+1+xt)*unit,0));

q41 := q1 + (-3.2unit,-1.5unit);
v11 := (3unit,3unit);
v21 := v11+(-sepV,sepV);
v31 := v11-(-sepV,sepV);
ang := angle(v11);
q42 := q41 - v21;
q43 := q41 + v31;
q44 := q43 + v21;

q52 := q41 - v11; % Arrow 1.
q53 := q41 + v11;
pat11 := q42..q41{dir ang}..q43..q44;
pat12 := q52--q53;

tC := 2.38;
q54 := point tC of pat11;
v95 := direction tC of pat11;
angC := angle(v95);
v94 := (0.9*length(v11),0) rotated angC;
q58 := q54 - v94; % Arrow 2.
q59 := q54 + v94;
pat13 := q58--q59;

% Draw curve and arrows.
pickup pencircle scaled penV;
drawarrow pat11;
drawarrow pat12;
drawarrow pat13;

% Points.
pickup pencircle scaled penPT;
pic := thelabel.ulft(btex $x_1$ etex, (0,-1pt));
unfill bbox pic shifted q41;
draw q41;
draw pic shifted q41;

pic := thelabel.lrt(btex $x_2$ etex, (0,1pt));
unfill bbox pic shifted q54;
draw q54;
draw pic shifted q54;

% Labels for tangent lines.
pic := thelabel.ulft(btex $L_1$ etex, (-2pt,-3pt));
unfill bbox pic shifted (q41+v11);
draw pic shifted (q41+v11);

pic := thelabel.rt(btex $L_2$ etex, (-2pt,0pt));
unfill bbox pic shifted q59;
draw pic shifted q59;

% Label for the curve.
q80 := q42 + (0pt,0);
pic := thelabel.rt(btex $\scriptstyle\psi(\Image(\gamma))$ etex, (-1pt,0));
unfill bbox pic shifted q80;
draw pic shifted q80;

%==============================================================================
% Arrow for the chart map psi.
spA := 5pt;
q60 := q0 + (r+spA,0);
q61 := q1 + (-(np*unit+xt)*1.45,0);
pickup pencircle scaled penC;
drawarrow q60--q61;
label.top(btex $\psi\in\atlas(M)$ etex, 0.5[q60,q61]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Real number interval I.
S_reals(q2, lenA, lenB, pencircle scaled penREAL);
label.lft(btex $I$ etex, q2 + (-lenA,0));

pickup pencircle scaled penPT;
q70 := q2 - 0.4 * (lenA,0);
q71 := q2 + 0.4 * (lenA,0);
draw q70;
draw q71;
label.bot(btex $t_1$ etex, q70);
label.bot(btex $t_2$ etex, q71);

% The maps gamma and psi o gamma.
pickup pencircle scaled penC;
spB := 12pt;
S_arrowspaces(q2, q0, spB, r+spA, 1, black);
label.llft(btex\strut $\gamma$ etex, 0.4[q2,q0]);
S_arrowspaces(q2, q1, spB, (np*unit+xt)*1.60, 1, black);
label.lrt(btex\strut $\psi\circ\gamma$ etex, 0.4[q2,q1]+(-2pt,0));

% Some info about the graphs.
sepX := 10pt;
sepY := r + 10pt;
sepZ := 12pt;
label.bot(btex\strut $p_1=\gamma(t_1)$ etex, q0 + (-sepX,-sepY));
label.bot(btex\strut $p_2=\gamma(t_2)$ etex, q0 + (-sepX,-sepY-sepZ));

label.bot(btex\strut $x_1=\psi(p_1)$ etex, q1 + (sepX,-sepY+sepZ));
label.bot(btex\strut $x_2=\psi(p_2)$ etex, q1 + (sepX,-sepY));
label.bot(btex\strut $L_1:s\mapsto x_1+sv_1$ etex, q1 + (sepX,-sepY-sepZ));
label.bot(btex\strut $L_2:s\mapsto x_2+sv_2$ etex, q1 + (sepX,-sepY-2sepZ));

%==============================================================================
% Restore the bbox margin for calculating the overall diagram's bbox.
bboxmargin := bbx;

endfig;
end
