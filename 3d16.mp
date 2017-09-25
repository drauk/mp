% tex/conc/mp/3d16.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/3d16.mp d1953e3bcb 2015-03-21 13:19:17Z Alan U. Kennington $
% Demonstrating curvature of parallel transport of S^2 around a triangular path.

input 3dmax.mp
input mapmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s, wid;         % The screen scale factor; arrow width.
path pat[];
color vcol, vcoll;

% Multiplier and orientation angles for viewer.
dv := 10;               % Distance of camera from centre of sphere.
ph_v := 45;             % Angle phi.
th_v := 50;             % Angle theta.
Z_set_rpt(p0)(dv, ph_v, th_v);  % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.
A_set_pq(A)(p0)(q0);    % Set the perspective matrix.

s := 700;               % Some sort of magnification/zoom factor.
R := 1;                 % Radius of the sphere.

penAXIS := 0.5bp;
penARROW := 0.5bp;
penVEC := 0.9bp;
penPT := 2.5bp;
penLAT := 0.5bp;
penLATT := 0.7bp;
penLONG := 0.5bp;
penLONGG := 0.7bp;

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
vlen := 0.20;               % Length of vector.
vcol := 0.0white;           % Colour of vector.
vcoll := 0.6white;          % Colour of second vector.

% Phi = 90 degrees.
for i = 1 upto 3:
    lati := 30 + i * 20;
    A_bearing_draw(A)(s)(q0)(R, 90, lati, vlen, -45, vcoll);
    A_bearing_draw(A)(s)(q0)(R, 90, lati, vlen, 45, vcol);
    endfor

% Phi = 0 degrees.
for i = 1 upto 3:
    lati := 30 + i * 20;
    A_bearing_draw(A)(s)(q0)(R, 0, lati, vlen, 0, vcoll);
    A_bearing_draw(A)(s)(q0)(R, 0, lati, vlen, 90, vcol);
    endfor

% Theta = 30 degrees.
for i = 0 upto 6:
    A_bearing_draw(A)(s)(q0)(R, 15 * i, 30, vlen, - 45 * (i/6), vcoll);
    A_bearing_draw(A)(s)(q0)(R, 15 * i, 30, vlen, 90 - 45 * (i/6), vcol);
    endfor

% End point.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,90);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-5,4)*5;
w10 := w10 + (-3pt,4pt);
drawarrow w11{dir-10}..{dir-45}w10 withcolor 0.5white;
label.lft(btex Finish here etex, w11);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Start point.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,30);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-7,-5)*5;
S_arrowspaces(w11,w10,2pt,2.5pt,1,0.5white);
label.bot(btex Start here etex, w11);
pickup pencircle scaled penPT;
draw w10;

pickup pencircle scaled penARROW;
% Draw Hamburg
alon := 9+59/60;
alat := 53+33/60;
% Draw Bologna.
% alon := 11+20/60;
% alat := 44+29/60;
% Draw Genova.
% alon := 8+57/60;
% alat := 44+25/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-9,3)*5;
% S_arrowspaces(w11,w10,2pt,4pt,1,0.5white);
S_arrowspaces(w11,w10,2pt,3pt,1,0.5white);
label.lft(btex Hamburg etex, w11);
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
