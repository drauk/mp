% tex/conc/mp/grid9.mp   2018-2-3   Alan U. Kennington.
% $Id$
% Interpretation of Lie derivative using flow of curve with specified velocity.

input gridmax
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], q[];
color col[];
path pat[];

m := 9;
n := 9;
mx := 3;
nx := 3;
unit := 2.5cm;

penARROW := 0.7bp;
penBETA := 0.7bp;
penLN := 0.5bp;
penPT := 3.0bp;
col1 := 0.5white;
col2 := 0.3white;

p0 := (0,0) * unit;         % Lower left.
p1 := (0,1.5) * unit;       % Upper left.
p2 := (1,-0.2) * unit;      % Lower right.
p3 := (2,1.6) * unit;       % Upper right.

p11 := (-0.3,0.6) * unit;   % Mid left.
p12 := (0.6,0.1) * unit;    % Mid lower.
p13 := (1.9,0.6) * unit;    % Mid right.
p14 := (1,1.0) * unit;      % Mid upper.

pat1 := p0..p11..p1;        % Left curve. (Nominally the X-axis. Split into m.)
pat2 := p0..p12..p2;        % Lower curve.(Nominally the Y-axis. Split into n.)
pat3 := p2..p13..p3;        % Right curve.
pat4 := p1..p14..p3;        % Upper curve.

%------------------------------------------------------------------------------
pickup pencircle scaled penLN;
G_grid(pat)(m, n, mx, nx, 1, 4, col1);  % "4" means don't show the curves.

%------------------------------------------------------------------------------
% The beta curve with velocity equal to V.
lenA := length(pat1);
nA := 4;
nB := 8.5;
ratA := (nA/m) * lenA;
ratB := (nB/m) * lenA;
p20 := point ratA of pat1;  % Should be the same as p30.
p21 := point ratB of pat1;

scaleB := 12.5 * mx;
xZ := (m - nA - 1) * mx;
maxbeta := 4;
for j = 0 upto maxbeta:
    pat[5+j] := G_p[nA * mx][j * 2 * nx]
    for i = nA * mx + 1 upto m * mx:
        ..G_p[i][j * 2 * nx]
        endfor
        ;
    pickup pencircle scaled penBETA;
    drawarrow pat[5+j] withcolor col2;
    p[30+j] := point 0 of pat[5+j];
    p[40+j] := direction 0 of pat[5+j] * scaleB;
    p[50+j] := p[30+j] + p[40+j];

    pickup pencircle scaled penARROW;
    drawarrow p[30+j]--p[50+j];

    pickup pencircle scaled penPT;
    draw point 0 of pat[5+j];
    draw point xZ of pat[5+j];
    endfor

label.lft(btex $p$ etex, p30);
label.lft(btex $\tilde p$ etex, p[30+maxbeta] + (2pt, 5pt));

label.lft(btex $V$ etex, p50);
label.rt(btex $\tilde V$ etex, p[50+maxbeta]);

label.lft(btex $q$ etex, point xZ of pat5);
label.lft(btex $\tilde q$ etex, (point xZ of pat[5+maxbeta]) + (0,2.5pt));

label.ulft(btex $\beta$ etex, point (0.95 * length(pat5)) of pat5);
label.top(btex $\tilde\beta$ etex,
 point (1 * length(pat[5+maxbeta])) of pat[5+maxbeta]);

label.rt(btex $X$ etex, G_p[2*mx+1][n * nx]);

endfig;
end
