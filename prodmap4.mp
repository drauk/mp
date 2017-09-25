% tex/conc/mp/prodmap4.mp   2015-9-24   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap4.mp 259c107b1f 2015-09-24 10:22:38Z Alan U. Kennington $
% Cartesian product of two topological spaces.

input boxmax

beginfig(1);
pair zz[];
color colSET;
path Pat[];

unit := 5.0mm;          % Scaling parameter.
spPROD := 2.0unit;      % Margins for component sets.
radCORN := 0.54unit;

spLAB := 2pt;           % Spacing for labels.
spLABx := 0pt;          % Spacing for label.
spARROW := 3pt;
spARROWx := (spARROW + radCORN) / sqrt(2) - radCORN;

penBOX := 0.5pt;        % Thickness of box around A x B.
penARROW := 0.5pt;      % Thickness of arrows.
penPT := 2.5pt;         % Diameter of points.
penBDY := 0.5bp;        % Boundary of set.
penSECT := 0.5bp;       % Sections of set.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Location/size of main box.
xPROD := 0;
yPROD := 0;
wPROD := 10 unit;
hPROD := 7 unit;

% Section parameters.
xApt := 0.65 wPROD;
yBpt := 0.35 hPROD;

xAcent := xApt - 0.05 wPROD;
yBcent := yBpt + 0.05 hPROD;

xAdist := min(xAcent, wPROD - xAcent);
yBdist := min(yBcent, hPROD - yBcent);
radrat := 0.7;
xAdiam := 2 * radrat * xAdist;
yBdiam := 2 * radrat * yBdist;
ratSECT := 0.7;
colSET := 0.95white;

% The two component boxes.
xA := xPROD;
yA := yPROD + spPROD + 2radCORN;
xB := xPROD + wPROD + spPROD;
yB := yPROD;
xC := xB + radCORN;
yC := yA - radCORN;
radC := 1.8radCORN;
diaC := 2radC;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a box around A.
B_draw_rect_round(xA, yA, wPROD, 2radCORN, radCORN, penBOX, black);
zz40 := (xA + xApt, yA - radCORN);
pickup pencircle scaled penPT;
draw zz40;
label.lft(btex $x_1$ etex, zz40);

% Draw a box around B.
B_draw_rect_round(xB, yB, 2radCORN, hPROD, radCORN, penBOX, black);
zz41 := (xB + radCORN, yB - hPROD + yBpt);
pickup pencircle scaled penPT;
draw zz41;
label.bot(btex $x_2$ etex, zz41);

% Draw a box around A x B.
B_draw_rect_round(xPROD, yPROD, wPROD, hPROD, radCORN, penBOX, black);
zz42 := (xpart(zz40), ypart(zz41));
zz43 := (xA + xAcent, yB - hPROD + yBcent);

% The set Omega.
Pat1 := fullcircle xscaled xAdiam yscaled yBdiam shifted zz43;
pickup pencircle scaled penBDY;
fill Pat1 withcolor colSET;
draw Pat1;
label.llft(btex $\Omega$ etex, point 5 of Pat1);

% Horizontal section through Omega.
zz45 := (subpath(2,6) of Pat1) intersectionpoint ((xPROD,ypart(zz41))--zz41);
zz46 := (subpath(-2,2) of Pat1) intersectionpoint ((xPROD,ypart(zz41))--zz41);
pickup pencircle scaled penSECT;
draw zz45--zz46 dashed evenly scaled ratSECT;
label.lft(btex $P^1_{x_2}(\Omega)$ etex, zz45);

% Vertical section through Omega.
zz47 := (subpath(0,4) of Pat1) intersectionpoint
 ((xpart(zz40), yPROD - hPROD)--zz40);
zz48 := (subpath(4,8) of Pat1) intersectionpoint
 ((xpart(zz40), yPROD - hPROD)--zz40);
pickup pencircle scaled penSECT;
draw zz47--zz48 dashed evenly scaled ratSECT;
label.top(btex $P^2_{x_1}(\Omega)$ etex, zz47);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the sets.
label.lft(btex $X_1$ etex, (xA - spLAB, yA - radCORN));
label.bot(btex $X_2$ etex, (xB + radCORN, yB - hPROD - spLAB));
% label.llft(btex $X_1\times X_2$ etex,
%  (xPROD - spLABx, yPROD - hPROD - spLABx));
label.bot(btex $X_1\times X_2$ etex, (xPROD + 0.5wPROD, yPROD - hPROD - spLAB));

% Arrows.
zz10 := (xPROD + 0.5 wPROD, yPROD + spARROW);
zz11 := (xPROD + 0.5 wPROD, yA - 2radCORN - spARROW);
zz12 := (xPROD + wPROD + spARROW, yPROD - 0.5 hPROD);
zz13 := (xB - spARROW, yPROD - 0.5 hPROD);

pickup pencircle scaled penARROW;
drawarrow zz10--zz11;
drawarrow zz12--zz13;
label.lft(btex\strut $\Pi_1$ etex, 0.5[zz10,zz11]);
label.bot(btex\strut $\Pi_2$ etex, 0.5[zz12,zz13]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw Y.
zz20 := (xC,yC);
draw fullcircle scaled diaC shifted zz20;
label(btex $Y$ etex, zz20);

% More arrows.
zz30 := (xA + wPROD + spARROW, yA - radCORN);
zz31 := (xC - radC - spARROW, yA - radCORN);
zz32 := (xB + radCORN, yB + spARROW);
zz33 := (xB + radCORN, yC - radC - spARROW);
zz34 := (xPROD + wPROD + spARROWx, yPROD + spARROWx);
zz35 := zz20 + (0,-radC - spARROW) rotated -45;

pickup pencircle scaled penARROW;
drawarrow zz30--zz31;
drawarrow zz32--zz33;
drawarrow zz34--zz35;
label.top(btex\strut $f^1_{x_2}$ etex, 0.5[zz30,zz31] + (0,1pt));
label.rt(btex\strut $f^2_{x_1}$ etex, 0.5[zz32,zz33]);
label.ulft(btex $f$ etex, 0.5[zz34,zz35]);

endfig;
end
