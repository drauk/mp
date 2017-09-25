% tex/conc/mp/prodmap7.mp   2016-4-2   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap7.mp 793a67dd0e 2016-04-02 02:46:26Z Alan U. Kennington $
% Direct product of continuous maps between Cartesian space regions.

input boxmax
input mapmax
verbatimtex
\input akmath

% Slightly smaller font for mathematics.
\font\smallrm cmr9
\font\smallmi cmmi9
\font\smallsy cmsy9
\font\ssmallsy cmsy6
% \def\fontB{\scriptstyle}
% \def\fontB{}
\def\fontB{%
 \textfont0=\smallrm
 \textfont1=\smallmi
 \textfont2=\smallsy
 \scriptfont2=\ssmallsy
 }
etex

beginfig(1);
pair zz[];

unit := 5.0mm;          % Scaling parameter.
spPRODx := 15mm;        % Horizontal space between boxes.
spPRODy := 5mm;         % Vertical space between boxes.
radCORN := 0.5 unit;    % Corner radius.

rX := 2.6 unit;
rY := 1.5 unit;
ratSET := 0.55;
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
wPROD := 24 unit;
hPROD := 4 unit;
wPRODx := 0.5 * (wPROD - spPRODx);
xPRODx := xPROD + wPROD - wPRODx;

% The two component boxes.
xA := xPROD;
yA := yPROD + hPROD + spPRODy;
xAx := xA + wPROD - wPRODx;

xB := xPROD;
yB := yPROD - hPROD - spPRODy;
xBx := xB + wPROD - wPRODx;

zz11 := (xA + ratSET * wPRODx, yA - 0.5 hPROD);
zz12 := (xA + wPROD - ratSET * wPRODx, yA - 0.5 hPROD);
zz13 := (xA, yA - 0.5 hPROD);
zz14 := (xA + wPROD, yA - 0.5 hPROD);

zz21 := (xB + ratSET * wPRODx, yB - 0.5 hPROD);
zz22 := (xB + wPROD - ratSET * wPRODx, yB - 0.5 hPROD);
zz23 := (xB, yB - 0.5 hPROD);
zz24 := (xB + wPROD, yB - 0.5 hPROD);

zz31 := (xPROD + ratSET * wPRODx, yPROD - 0.5 hPROD);
zz32 := (xPROD + wPROD - ratSET * wPRODx, yPROD - 0.5 hPROD);
zz33 := (xPROD, yPROD - 0.5 hPROD);
zz34 := (xPROD + wPROD, yPROD - 0.5 hPROD);

pickup pencircle scaled penBDY;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz11;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz12;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz21;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz22;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz31;
draw fullcircle xscaled (2*rX) yscaled (2*rY) shifted zz32;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw boxes around A.
pickup pencircle scaled penBOX;
B_draw_rect_round(xA, yA, wPRODx, hPROD, radCORN, penBOX, black);
B_draw_rect_round(xAx, yA, wPRODx, hPROD, radCORN, penBOX, black);

% Draw a box around B.
B_draw_rect_round(xB, yB, wPRODx, hPROD, radCORN, penBOX, black);
B_draw_rect_round(xBx, yB, wPRODx, hPROD, radCORN, penBOX, black);

% Draw a box around A x B.
B_draw_rect_round(xPROD, yPROD, wPRODx, hPROD, radCORN, penBOX, black);
B_draw_rect_round(xPRODx, yPROD, wPRODx, hPROD, radCORN, penBOX, black);

% Open set labels.
% label(btex $\Omega_{1,1}$ etex, zz11);
% label(btex $\Omega_{1,2}$ etex, zz12);
% label(btex $\Omega_{2,1}$ etex, zz21);
% label(btex $\Omega_{2,2}$ etex, zz22);
% label(btex $\Omega_{1,1}\times\Omega_{2,1}$ etex, zz31);
% label(btex $\Omega_{1,2}\times\Omega_{2,2}$ etex, zz32);
label(btex $\strut U_1$ etex, zz11);
label(btex $\strut\phi_1(U_1)$ etex, zz12);
label(btex $\strut U_2$ etex, zz21);
label(btex $\strut\phi_2(U_2)$ etex, zz22);
label(btex $\strut U_1\times U_2$ etex, zz31);
label(btex $\fontB\strut\phi_1(U_1)\times\phi_2(U_2)$ etex, zz32);

% Cartesian space labels.
label.rt(btex $\strut\reals^{n_1}$ etex, zz13);
label.rt(btex $\strut\reals^{n_2}$ etex, zz23);
label.rt(btex $\strut\reals^{n_1\times n_2}$ etex, zz33);
label.lft(btex $\strut\reals^{m_1}$ etex, zz14);
label.lft(btex $\strut\reals^{m_2}$ etex, zz24);
label.lft(btex $\strut\reals^{m_1\times m_2}$ etex, zz34);

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
