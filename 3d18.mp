% tex/conc/mp/3d18.mp   2006-8-4   Alan Kennington.
% $Id: tex/conc/mp/3d18.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% 3d graphic: Sphere S^2 orbits under rotation around axis.

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
color vcol;

% Multiplier and orientation angles for viewer.
dv := 10;               % Distance of camera from centre of sphere.
ph_v := 45;             % Angle phi.
th_v := 40;             % Angle theta.
Z_set_rpt(p0)(dv, ph_v, th_v);  % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.
A_set_pq(A)(p0)(q0);    % Set the perspective matrix.
tropic := 23+26.5/60;
A_rot_cam(A)(tropic);   % Rotate the camera.
                        % (Does not give authenic tilt of the Earth.)

s := 700;               % Some sort of magnification/zoom factor.
R := 1;                 % Radius of the sphere.
wid := 1.0pt;           % Arrow width.
latA := 10;             % Latitude of selected orbit.
latB := 30;             % Latitude of selected orbit.
longA := 0;             % Start/edn longitudes of selected orbit.
longB := 120;
vcol := 0.4white; % Colour of selected orbit.

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
A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, 0.5pt, 1.0pt)(p0);
A_draw_long_hide(A)(s)(p11)(R, nlong, mR, 0.5pt, 0.5pt)(p0);

% Draw arcs.
A_draw_lat_arc_hide(A)(s)(p11)(R, latA, longA, longB, nR, 2.7pt, 1, vcol)(p0);
A_draw_lat_arc_hide(A)(s)(p11)(R, latB, longA, longB, nR, 2.7pt, 1, vcol)(p0);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Start point.
pickup pencircle scaled wid;
Z_set_rpt(p10)(R,0,latA);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-9,-2)*5;
S_arrowspaces(w11,w10,2.5pt,3.5pt,1,0.5white);
label.bot(btex Start here etex, w11);
pickup pencircle scaled 5.0pt;
draw w10;

pickup pencircle scaled wid;
Z_set_rpt(p10)(R,0,latB);
A_calc_w(A)(w10)(p10)(s);
S_arrowspaces(w11,w10,2.5pt,3.5pt,1,0.5white);
pickup pencircle scaled 5.0pt;
draw w10;

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
