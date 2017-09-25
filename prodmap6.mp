% tex/conc/mp/prodmap6.mp   2016-4-2   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap6.mp 793a67dd0e 2016-04-02 02:46:26Z Alan U. Kennington $
% Direct product of diffeomorphisms between Cartesian space regions.

input boxmax
input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];

unit := 5.0mm;          % Scaling parameter.
spPROD := 1.0 unit;     % Vertical space between boxes.
radCORN := 0.5 unit;    % Corner radius.

rX := 2.2 unit;
rY := 1.5 unit;
ratSET := 0.3;
spA := 3pt;
spB := 1.6pt;

penBOX := 0.5pt;        % Thickness of box around A x B.
penARROW := 0.5pt;      % Thickness of arrows.
penPT := 2.5pt;         % Diameter of points.
penBDY := 0.5bp;        % Boundary of set.
penSECT := 0.5bp;       % Sections of set.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Location/size of main box.
xPROD := 0;
yPROD := 0;
wPROD := 20 unit;
hPROD := 4 unit;

% The two component boxes.
xA := xPROD;
yA := yPROD + hPROD + spPROD;
xB := xPROD;
yB := yPROD - hPROD - spPROD;

zz11 := (xA + ratSET * wPROD, yA - 0.5 hPROD);
zz12 := (xA + wPROD - ratSET * wPROD, yA - 0.5 hPROD);
zz13 := (xA, yA - 0.5 hPROD);

zz21 := (xB + ratSET * wPROD, yB - 0.5 hPROD);
zz22 := (xB + wPROD - ratSET * wPROD, yB - 0.5 hPROD);
zz23 := (xB, yB - 0.5 hPROD);

zz31 := (xPROD + ratSET * wPROD, yPROD - 0.5 hPROD);
zz32 := (xPROD + wPROD - ratSET * wPROD, yPROD - 0.5 hPROD);
zz33 := (xPROD, yPROD - 0.5 hPROD);

pickup pencircle scaled penBDY;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz11;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz12;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz21;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz22;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz31;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz32;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a box around A.
pickup pencircle scaled penBOX;
B_draw_rect_round(xA, yA, wPROD, hPROD, radCORN, penBOX, black);

% Draw a box around B.
B_draw_rect_round(xB, yB, wPROD, hPROD, radCORN, penBOX, black);

% Draw a box around A x B.
B_draw_rect_round(xPROD, yPROD, wPROD, hPROD, radCORN, penBOX, black);

% Open set labels.
label(btex $\Omega_{1,1}$ etex, zz11);
label(btex $\Omega_{1,2}$ etex, zz12);
label(btex $\Omega_{2,1}$ etex, zz21);
label(btex $\Omega_{2,2}$ etex, zz22);
label(btex $\Omega_{1,1}\times\Omega_{2,1}$ etex, zz31);
label(btex $\Omega_{1,2}\times\Omega_{2,2}$ etex, zz32);

% Cartesian space labels.
label.rt(btex $\reals^{n_1}$ etex, zz13);
label.rt(btex $\reals^{n_2}$ etex, zz23);
label.rt(btex $\reals^{n_1\times n_2}$ etex, zz33);

% Arrows between open sets.
pickup pencircle scaled penARROW;
S_arrowspace(zz11, zz12, rX + spA, 1, black);
S_arrowspace(zz21, zz22, rX + spA, 1, black);
S_arrowspace(zz31, zz32, rX + spA, 1, black);

label.top(btex $\phi_1$ etex, 0.5[zz11,zz12]);
label.top(btex $\phi_2$ etex, 0.5[zz21,zz22]);
label.top(btex $\phi_1\times\phi_2$ etex, 0.5[zz31,zz32]);

% Projection maps.
pickup pencircle scaled penARROW;
S_arrowspace(zz31, zz11, rY + spB, 1, black);
S_arrowspace(zz31, zz21, rY + spB, 1, black);
S_arrowspace(zz32, zz12, rY + spB, 1, black);
S_arrowspace(zz32, zz22, rY + spB, 1, black);

label.lft(btex $\pi_{1,1}$ etex, 0.5[zz31,zz11]);
label.lft(btex $\pi_{2,1}$ etex, 0.5[zz31,zz21]);
label.rt(btex $\pi_{1,2}$ etex, 0.5[zz32,zz12]);
label.rt(btex $\pi_{2,2}$ etex, 0.5[zz32,zz22]);

endfig;
end
