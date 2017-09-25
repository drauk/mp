% tex/conc/mp/fibmap15.mp   2012-7-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap15.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Transition maps for groupless fibre bundle over F, mirror image.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair q[], v[];
numeric co[], w[];

% Parameters for the set E.
q0 := (0cm,0cm);        % Centre of set.
d := 2.6cm;             % Diameter of set E.
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
penLN := 0.5bp;
a := 5cm;
b := 3.7cm;

% Base space B etc.
q1 := q0+(0,-b);
q2 := q0+(-a,-b);
q3 := q0+(a,-b);
q4 := q0+(-a,0);
q5 := q0+(a,0);

%-----------------------------------
% Draw the set E and two subsets.
pickup pencircle scaled penLN;
S_subsets(q0,d, -90+angg,ang,off, -90-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on E.
label.top(btex $\strut E$ etex, q0+(0,r));
label.ulft(btex $\pi^{-1}(U_i)$ etex, q0+(-r,0)rotated-35);
label.urt(btex $\pi^{-1}(U_j)$ etex, q0+(r,0)rotated35);
label.top(btex $\pi^{-1}(U_i\cap U_j)$ etex, q0+(0,-r*0.65));

%-----------------------------------
% Draw the set B and two subsets.
pickup pencircle scaled penLN;
S_subsets(q1,dd, 90+angg,ang,off, 90-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on B.
label.bot(btex $\strut B$ etex, q1+(0,-rr));
label.llft(btex $U_i$ etex, q1+(-rr,0)rotated20);
label.lrt(btex $U_j$ etex, q1+(rr,0)rotated-20);
label.bot(btex $U_i\cap U_j$ etex, q1+(0,rr*0.65));

%-----------------------------------
% Sets BxF.
pickup pencircle scaled penLN;
% On the left.
S_subsets(q2,dd, 45+angg,ang,off, 45-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on BxF.
label.llft(btex $B\times F$ etex, q2+(rr,0)rotated -135);
label.ulft(btex $U_i\times F$ etex, q2+(rr,0)rotated135);
label.lrt(btex $U_j\times F$ etex, q2+(rr,0)rotated-65);
label.rt(btex $(U_i\cap U_j)\times F$ etex, q2+(rr,0)rotated20);

% On the right.
S_subsets(q3,dd, 135+angg,ang,off, 135-angg,ang,off, co[0],co[1],co[2]);

% Put some labels on BxF.
label.lrt(btex $B\times F$ etex, q3+(rr,0)rotated -45);
label.urt(btex $U_i\times F$ etex, q3+(rr,0)rotated45);
label.llft(btex $U_j\times F$ etex, q3+(rr,0)rotated-115);
label.lft(btex $(U_i\cap U_j)\times F$ etex, q3+(-rr,0)rotated-20);

% Sets F.
draw fullcircle scaled dd shifted q4;
draw fullcircle scaled dd shifted q5;
label.ulft(btex $F$ etex, q4+(-rr,0)rotated-45);
label.urt(btex $F$ etex, q5+(rr,0)rotated45);

% The arrows.
v1 := q0+(0,-s);
v2 := q1+(0,ss);
drawarrow v1--v2;
label.rt(btex $\pi$ etex, 0.5[v1,v2]);

v1 := q0+(-s,0);
v2 := q4+(ss,0);
drawarrow v1--v2;
label.top(btex $\strut\phi_i$ etex, 0.5[v1,v2]);

v1 := q0+(s,0);
v2 := q5+(-ss,0);
drawarrow v1--v2;
label.top(btex $\strut\phi_j$ etex, 0.5[v1,v2]);

v1 := q0+(q2-q0)/length(q2-q0)*s;
v2 := q2-(q2-q0)/length(q2-q0)*ss;
drawarrow v1--v2;
S_tiltlabel(btex $\strut\pi\circ\phi_i$ etex, 0.5[v1,v2], angle(v1-v2));

v1 := q0+(q3-q0)/length(q3-q0)*s;
v2 := q3-(q3-q0)/length(q3-q0)*ss;
drawarrow v1--v2;
S_tiltlabel(btex $\strut\pi\circ\phi_j$ etex, 0.5[v1,v2], angle(v2-v1));

% The big curved arrow.
w2 := 10;       % Entry angle to sets BxF.
w3 := 1.8cm;    % depth of dip of curve.
w4 := 170;      % Curve end-angle.
v1 := q2+(ss,0)rotated-w2;
v2 := q3+(-ss,0)rotated w2;
v3 := 0.5[q2,q3]+(0,-w3);
% drawarrow v2{dir-w4}...v3...{dir w4}v1;
drawarrow reverse (v2{dir-w4}...v3...{dir w4}v1);
label.bot(btex $(\pi\times\phi_j)\circ\left((\pi\times\phi_i)^{-1}
\restrict{(U_i\cap U_j)\times F}\right)$ etex, v3);

endfig;
end
