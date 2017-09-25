% tex/conc/mp/3d11.mp   2006-8-3   Alan Kennington.
% $Id: tex/conc/mp/3d11.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
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

% Multiplier and orientation angles for viewer.
dv := 10;                % Distance of camera from centre of sphere.
ph_v := -45;            % Angle phi.
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
A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, 0.6pt, 1.2pt)(p0);
A_draw_long_hide(A)(s)(p11)(R, nlong, mR, 0.6pt, 1.2pt)(p0);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Draw Muenchen
pickup pencircle scaled 1.0pt;
alon := 11+34/60;
alat := 48+8/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (7,2)*5;
S_arrowspace(w11,w10,4pt,1,0.5white);
label.rt(btex M\"unchen etex, w11);
pickup pencircle scaled 3.0pt;
draw w10;

% Draw Havana.
pickup pencircle scaled 1.0pt;
alon := -(82+22/60);
alat := 23+8/60;
Z_set_rpt(p10)(R,alon,alat);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-7,2)*5;
S_arrowspace(w11,w10,4pt,1,0.5white);
label.lft(btex La Habana etex, w11);
pickup pencircle scaled 3.0pt;
draw w10;

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
