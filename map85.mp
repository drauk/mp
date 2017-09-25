% tex/conc/mp/map85.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/map85.mp c157bf5f68 2012-05-06 17:01:47Z Alan U. Kennington $
% Example of transformation group homomorphism.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];
color col[];
numeric wid[];
path pat;

a := 3.9cm;
b := 2.7cm;

wid1 := 0.7bp;      % Axes line width.
wid2 := 0.5bp;      % Circle line width.
wid3 := 2.5bp;      % Point diameter.
wid4 := 2.5wid2;    % SO(2) circle.
penLN := 0.5bp;

unit := 0.25cm;
np := 2;
xt := 0.45;
col0 := 0.6 white;  % Axes.
col1 := 0.82 white; % SO(2) circle.
bx := unit * 1.2;
gap := 8pt;
dd := 2*np*unit;    % Diameter of circles.
rr := dd/2;
q := (np+xt)*unit + gap;
qx := (np+1+xt)*unit + gap;
ang := 60;          % Angle for rotation.
dcirc := 4pt;       % Circles on arrows.

% Centres of spaces.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% Labels for the spaces.
label.lft(btex $S^1$ etex, w0-(q,0));
label.rt(btex $\reals^2$ etex, w1+(qx,0));
label.lft(btex $\gp{SO}(2)$ etex, w2+(-q,0));
label.rt(btex $\gp{GL}(2)$ etex, w3+(qx,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
w4 := w2 + (0,bx);
w5 := w3 + (0,bx);
S_arrowspaces(w4, w5, qx, q, 1, black);
S_labelspaces(v0)(w4, w5, qx, q, 0.5);
label.top(btex \strut$\hatphi$ etex, v0);

S_arrowspaces(w0, w1, qx, q, 1, black);
S_labelspaces(v0)(w0, w1, qx, q, 0.5);
label.top(btex \strut$\phi$ etex, v0);

% Vertical arrows.
S_arrowspaces(w0, w2, qx, q, 2, black);
S_labelspaces(v0)(w0, w2, qx, q, 0.5);
draw fullcircle scaled dcirc shifted v0;
label.lft(btex $\mu_1$ etex, v0+(-dcirc/2,0));

S_arrowspaces(w1, w3, qx, q, 2, black);
S_labelspaces(v0)(w1, w3, qx, q, 0.5);
draw fullcircle scaled dcirc shifted v0;
label.rt(btex $\mu_2$ etex, v0+(dcirc/2,0));

% The Rn sets.
pickup pencircle scaled wid1;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w1 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w1 withcolor col0;
% drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w2 withcolor col0;
% drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w2 withcolor col0;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w3 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w3 withcolor col0;

% Some circles and things.
pickup pencircle scaled wid2;
draw fullcircle scaled dd shifted w0;
draw fullcircle scaled dd shifted w1;
pickup pencircle scaled wid4;
draw fullcircle scaled dd shifted w2 withcolor col1;

% Some points
pickup pencircle scaled wid3;
w10 := w0+(rr,0)rotated20;
w11 := w0+(rr,0)rotated80;
draw w10;
draw w11;
label.urt(btex $\scriptstyle x$ etex, w10);
label.urt(btex $\scriptstyle y$ etex, w11);

w10 := w1+(rr,0)rotated20;
w11 := w1+(rr,0)rotated80;
draw w10;
draw w11;
label.urt(btex $\scriptstyle \phi(x)$ etex, w10);
label.urt(btex $\scriptstyle \phi(y)$ etex, w11);

% Some rotations. Rough estimate of path parameter.
pat := (subpath (0,ang/45) of halfcircle) scaled dd;
pickup pencircle scaled wid2;

drawarrow pat shifted w2;
drawarrow (pat rotated 90) shifted w2;
drawarrow (pat rotated 180) shifted w2;
drawarrow (pat rotated 270) shifted w2;
draw ((0,0)--((q,0)rotated ang)) shifted w2;
label.urt(btex $R_\theta$ etex, w2+(rr,0)rotated(ang/2));
label(btex $\scriptstyle \theta$ etex, w2+(rr/2,0)rotated(ang/2));

drawarrow pat shifted w3;
drawarrow (pat rotated 90) shifted w3;
drawarrow (pat rotated 180) shifted w3;
drawarrow (pat rotated 270) shifted w3;
draw ((0,0)--((q,0)rotated ang)) shifted w3;
label.urt(btex $R_\theta$ etex, w3+(rr,0)rotated(ang/2));
label(btex $\scriptstyle \theta$ etex, w3+(rr/2,0)rotated(ang/2));

endfig;
end
