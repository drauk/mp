% tex/conc/mp/fibmap18.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap18.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Transition maps for groupless fibre bundle over F, mirror image.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair q[], v[];
numeric co[], w[];

% Parameters for the set E.
q0 := (0cm,0cm);        % Centre of set.
% d := 2.6cm;             % Diameter of set E.
d := 2.0cm;             % Diameter of set E.
dd := 1.9cm;            % Diameter of set B.
r := d/2;
rr := dd/2;
s := r*1.15;
ss := rr*1.15;
off := -0.65;           % Midpoint of subset arc.
ang := 110;
angg := 45;
co[0] := 0.81;          % Whiteness of complement of 2 subsets.
co[1] := 0.90;          % Whiteness of complement of 1 subset only.
co[2] := 1;             % Intersection of 2 subsets.
a := 5cm;
b := 3.2cm;
spa := 3pt;             % Half-space between parallel arrows.
penLN := 0.5bp;

% Base space B etc.
q1 := q0+(0,-b);
q3 := q0+(a,-b);
q5 := q0+(a,0);

%-----------------------------------
% Draw the set E and two subsets.
pickup pencircle scaled penLN;
S_subsets(q0,d, -90+angg,ang,off, -90-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on E.
label.lft(btex $\strut E$ etex, q0+(-s,0));
label.ulft(btex $\pi^{-1}(U_i)$ etex, q0+(-r,0)rotated-35);
label.urt(btex $\pi^{-1}(U_j)$ etex, q0+(r,0)rotated35);
label.top(btex $\scriptstyle\pi^{-1}(U_i\cap U_j)$ etex, q0+(0,-r*0.65));

%-----------------------------------
% Draw the set B and two subsets.
pickup pencircle scaled penLN;
S_subsets(q1,dd, 90+angg,ang,off, 90-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on B.
label.lft(btex $\strut B$ etex, q1+(-ss,0));
label.llft(btex $U_i$ etex, q1+(-rr,0)rotated30);
label.lrt(btex $U_j$ etex, q1+(rr,0)rotated-30);
label.bot(btex $U_i\cap U_j$ etex, q1+(0,rr*0.65));

%-----------------------------------
% Sets BxF.
pickup pencircle scaled penLN;

% On the right.
S_subsets(q3,dd, 90+angg,ang,off, 90-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on BxF.
label.rt(btex $B\times F$ etex, q3+(ss,0));
label.llft(btex $U_i\times F$ etex, q3+(-rr,0)rotated30);
label.lrt(btex $U_j\times F$ etex, q3+(rr,0)rotated-30);
label(btex $\scriptstyle(U_i\cap U_j)\times F$ etex, q3+(0,0.4rr));

%-----------------------------------
% Set F.
draw fullcircle scaled dd shifted q5;
label.rt(btex $F$ etex, q5+(ss,0));

%-----------------------------------
% The arrows.
S_arrowspaces(q0,q1,s,ss,1,black);
S_labelspaces(v0)(q0,q1,s,ss,0.5);
label.lft(btex \strut$\pi$ etex, v0);

v3 := (spa,0) rotated (angle(q5-q0)+90);
v1 := q0 + v3;
v2 := q5 + v3;
S_arrowspaces(v1,v2,s,ss,1,black);
S_labelspaces(v0)(v1,v2,s,ss,0.5);
label.top(btex $\strut\phi_j$ etex, v0);

v3 := (spa,0) rotated (angle(q5-q0)+90);
v1 := q0 - v3;
v2 := q5 - v3;
S_arrowspaces(v1,v2,s,ss,1,black);
S_labelspaces(v0)(v1,v2,s,ss,0.5);
label.bot(btex $\strut\phi_i$ etex, v0);

S_arrowspaces(q3,q5,ss,ss,1,black);
S_labelspaces(v0)(q3,q5,ss,ss,0.5);
label.rt(btex \strut$P_2$ etex, v0);

S_arrowspaces(q3,q1,ss,ss,1,black);
S_labelspaces(v0)(q3,q1,ss,ss,0.5);
label.bot(btex \strut$P_1$ etex, v0);

v3 := (spa,0) rotated (angle(q3-q0)+90);
v1 := q0 + v3;
v2 := q3 + v3;
S_arrowspaces(v1,v2,s,ss,1,black);
S_labelspaces(v0)(v1,v2,s,ss,0.5);
S_tiltlabel(btex $\strut\pi\circ\phi_j$ etex, v0, angle(v2-v1));

v3 := (spa,0) rotated (angle(q3-q0)+90);
v1 := q0 - v3;
v2 := q3 - v3;
S_arrowspaces(v1,v2,s,ss,1,black);
S_labelspaces(v0)(v1,v2,s,ss,0.5);
v0 := v0 + (-18pt,0) rotated (angle(q3-q0)+90);
S_tiltlabel(btex $\strut\pi\circ\phi_i$ etex, v0, angle(v2-v1));

endfig;
end
