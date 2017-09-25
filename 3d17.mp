% tex/conc/mp/3d17.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/3d17.mp 09c178b650 2012-05-08 03:58:47Z Alan U. Kennington $
% 3d graphic: Sphere S^2 in perspective.

input 3dmax.mp
input mapmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.
path pat[];
color vcol;

penARROW := 0.5bp;
penVEC := 0.9bp;
penPT := 2.5bp;
penLAT := 0.5bp;
penLATT := 0.7bp;
penLONG := 0.5bp;
penLONGG := 0.7bp;

% Multiplier and orientation angles for viewer.
dv := 10;               % Distance of camera from centre of sphere.
ph_v := 45;             % Angle phi.
th_v := 40;             % Angle theta.
Z_set_rpt(p0)(dv, ph_v, th_v);  % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.
A_set_pq(A)(p0)(q0);    % Set the perspective matrix.

s := 700;               % Some sort of magnification/zoom factor.
R := 1;                 % Radius of the sphere.

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Constant-latitude circles.
nR := 12;       % 12 points around the equator.
nlat := 9;      % Number for dividing the latitude of 90 degrees.
% nlat := 3;      % Number for dividing the latitude of 90 degrees.

% Constant-longitude circles.
mR := 20;       % 40 points along the longitude line.
% nlong := 12;    % Number for dividing the longitude of 180 degrees.
nlong := 6;     % Number for dividing the longitude of 180 degrees.

Z_set(p11)(0,0,0); % Centre of the sphere.

% Draw the sphere.
A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, penLAT, penLATT)(p0);
A_draw_long_hide(A)(s)(p11)(R, nlong, mR, penLONG, penLONGG)(p0);

% Add some vectors to demonstrate parallel transport.
pickup pencircle scaled penVEC;
vlen := 0.35;               % Length of vector.
vcol := 0.0white;           % Colour of vector.

% Phi = 0 degrees.
A_north_draw(A)(s)(q0)(R, 0, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 0, 30, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 0, 60, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 0, 90, vlen, vcol);

% A_north_draw(A)(s)(q0)(R, 0, 90/4, vlen, vcol);
% A_north_draw(A)(s)(q0)(R, 0, 90/2, vlen, vcol);
% A_north_draw(A)(s)(q0)(R, 0, 3*90/4, vlen, vcol);

% Phi = 90 degrees.
A_north_draw(A)(s)(q0)(R, 90, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 90, 30, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 90, 60, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 90, 90, vlen, vcol);

% Phi = 30, 60 degrees.
A_north_draw(A)(s)(q0)(R, 15, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 30, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 45, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 60, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 75, 0, vlen, vcol);

% End point.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,90);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (4,4)*5;
w10 := w10 + (0.5pt,3pt);
drawarrow w11{dir-170}..{dir-90}w10 withcolor 0.5white;
label.rt(btex Finish here etex, w11);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Start point.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,0);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-4,-4)*5;
S_arrowspaces(w11,w10,2pt,2.5pt,1,0.5white);
label.bot(btex Start here etex, w11);
pickup pencircle scaled penPT;
draw w10;

pickup pencircle scaled penARROW;
% Draw Muenchen.
alon := 11+34/60;
alat := 48+8/60;
% Draw Bologna.
% alon := 11+20/60;
% alat := 44+29/60;
% Draw Genova.
% alon := 8+57/60;
% alat := 44+25/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-9,-3)*5;
% S_arrowspaces(w11,w10,2pt,4pt,1,0.5white);
S_arrowspaces(w11,w10,2pt,3pt,1,0.5white);
label.lft(btex M\"unchen etex, w11);
% label.lft(btex Bologna etex, w11);
% label.lft(btex Genova etex, w11);
pickup pencircle scaled penPT;
draw w10;

% Draw Hanoi.
pickup pencircle scaled penARROW;
alon := 105+51/60;
alat := 21+2/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (5,2)*5;
S_arrowspaces(w11,w10,1.5pt,3pt,1,0.5white);
label.rt(btex H\`a N\d{\^o}i etex, w11);
pickup pencircle scaled penPT;
draw w10;

setbounds currentpicture to pat1;

%==============================================================================
% Second copy.
w30 := (-7.3cm,0cm);    % Shift of first image to left of second image.

% picture pic;
% pic := currentpicture shifted w30;
% currentpicture := pic;
currentpicture := currentpicture shifted w30;

% Multiplier and orientation angles for viewer.
dv := 10;               % Distance of camera from centre of sphere.
ph_v := 45;             % Angle phi.
th_v := 60;             % Angle theta.
Z_set_rpt(p0)(dv, ph_v, th_v);  % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.
A_set_pq(A)(p0)(q0);    % Set the perspective matrix.

s := 700;               % Some sort of magnification/zoom factor.
R := 1;                 % Radius of the sphere.

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Constant-latitude circles.
nR := 12;       % 12 points around the equator.
nlat := 9;      % Number for dividing the latitude of 90 degrees.
% nlat := 3;      % Number for dividing the latitude of 90 degrees.

% Constant-longitude circles.
mR := 20;       % 40 points along the longitude line.
% nlong := 12;    % Number for dividing the longitude of 180 degrees.
nlong := 6;     % Number for dividing the longitude of 180 degrees.

Z_set(p11)(0,0,0); % Centre of the sphere.

% Draw the sphere.
A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, penLAT, penLATT)(p0);
A_draw_long_hide(A)(s)(p11)(R, nlong, mR, penLONG, penLONGG)(p0);

% Add some vectors to demonstrate parallel transport.
pickup pencircle scaled penVEC;
vlen := 0.35;               % Length of vector.
vcol := 0.0white;           % Colour of vector.

% Phi = 0 degrees.
A_north_draw(A)(s)(q0)(R, 0, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 0, 30, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 0, 60, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 0, 90, vlen, vcol);

% A_north_draw(A)(s)(q0)(R, 0, 90/4, vlen, vcol);
% A_north_draw(A)(s)(q0)(R, 0, 90/2, vlen, vcol);
% A_north_draw(A)(s)(q0)(R, 0, 3*90/4, vlen, vcol);

% Phi = 90 degrees.
A_north_draw(A)(s)(q0)(R, 90, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 90, 30, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 90, 60, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 90, 90, vlen, vcol);

% Phi = 30, 60 degrees.
A_north_draw(A)(s)(q0)(R, 15, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 30, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 45, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 60, 0, vlen, vcol);
A_north_draw(A)(s)(q0)(R, 75, 0, vlen, vcol);

% End point.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,90);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (4,8)*5;
w10 := w10 + (0.0pt,5pt);
drawarrow w11{dir-170}..{dir-90}w10 withcolor 0.5white;
label.rt(btex Finish here etex, w11);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Start point.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,0);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-5.5,-2)*5;
S_arrowspaces(w11,w10,2pt,2.5pt,1,0.5white);
label.bot(btex Start here etex, w11);
pickup pencircle scaled penPT;
draw w10;

pickup pencircle scaled penARROW;
% Draw Muenchen.
alon := 11+34/60;
alat := 48+8/60;
% Draw Bologna.
% alon := 11+20/60;
% alat := 44+29/60;
% Draw Genova.
% alon := 8+57/60;
% alat := 44+25/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-9,-3)*5;
% S_arrowspaces(w11,w10,2pt,4pt,1,0.5white);
S_arrowspaces(w11,w10,2pt,3pt,1,0.5white);
label.lft(btex M\"unchen etex, w11);
% label.lft(btex Bologna etex, w11);
% label.lft(btex Genova etex, w11);
pickup pencircle scaled penPT;
draw w10;

% Draw Hanoi.
pickup pencircle scaled penARROW;
alon := 105+51/60;
alat := 21+2/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (4,-2)*5;
S_arrowspaces(w11,w10,1.5pt,3pt,1,0.5white);
label.rt(btex H\`a N\d{\^o}i etex, w11);
pickup pencircle scaled penPT;
draw w10;

setbounds currentpicture to pat1;

endfig;
end
