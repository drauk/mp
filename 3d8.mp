% tex/conc/mp/3d8.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/3d8.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% 3d graphic: Sphere S^2 in perspective.

input 3dmax.mp

%-----------------------------------------------------------
% Draw constant-latitude circles. [Experimental version.]
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector to translate centre of sphere by.
% R             Radius of the sphere.
% nlat          Number for dividing the latitude of 90 degrees.
%               nlat = 1 to just draw the equator.
%               nlat = 9 to draw every 10 degrees of latitude.
% nR            Number of points around the equator. 12 is fine.
% pensize       Diameter of pen in points.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      A_draw_latt      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_latt(text A)(expr s)(text q)(expr R, nlat, nR, pensize) =
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).
path A_pat;

pickup pencircle scaled pensize;
for A_lat=-nlat+1 upto nlat-1:
    A_theta := 90*(A_lat/nlat);
    % Calculate the points on the equator.
    for i=0 upto nR-1:
        % Calculate the point in 3-d.
        Z_set_rpt(A_p)(R, 360*(i/nR), A_theta);
        Z_add(A_p)(q); % Translate by q.

        % Calculate the projection onto the camera film.
        A_calc_w(A)(A_v[i])(A_p)(s);
        endfor

    % Join the points into a path.
    A_pat := for i=0 upto nR-1:
        A_v[i]..
        endfor
        cycle;
    draw subpath (-nR/4, nR/4) of A_pat;
    endfor
enddef; % End of function A_draw_latt.

%-----------------------------------------------------------
% Draw constant-longitude circles.
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector to translate centre of sphere by.
% R             Radius of the sphere.
% nlong         Number for dividing the longitude of 180 degrees.
%               nlong = 1 to just draw phi = 0 and 180 degrees.
%               nlong = 12 to draw every 15 degrees of longitude.
% mR            Number of points around 180 degrees. 12 is fine.
% pensize       Diameter of pen in points.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      A_draw_longg     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_longg(text A)(expr s)(text q)(expr R, nlong, mR, pensize) =
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).
path A_pat;

pickup pencircle scaled pensize;
for A_long=0 upto nlong:
    A_phi := 180*(A_long/nlong)-90;
    % Calculate the points on the constant-longitude line.
    % Loop around from theta = -180 to +180.
    for i=-mR upto mR-1:
        % Calculate the point in 3-d.
        Z_set_rpt(A_p)(R, A_phi, 180*(i/mR));
        Z_add(A_p)(q); % Translate by q.

        % Calculate the projection onto the camera film.
        A_calc_w(A)(A_v[mR+i])(A_p)(s);
        endfor

    % Join the points into a path.
    A_pat := for i=-mR upto mR-1:
        A_v[mR+i]..
        endfor
        cycle;
    draw subpath (mR/2,3mR/2) of A_pat;
    endfor
enddef; % End of function A_draw_longg.

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
dv := 5;                % Distance of camera from centre of sphere.
ph_v := -40;            % Angle phi.
th_v := 35;             % Angle theta.
Z_set_rpt(p0)(dv, ph_v, th_v);  % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.
A_set_pq(A)(p0)(q0);    % Set the perspective matrix.

s := 350;               % Some sort of magnification/zoom factor.
R := 1;                 % Radius of the sphere.

axlength := 2;
azlength := 1.5;
yt := 0.5;
Z_set(p1)(axlength, 0, 0);      % X axis.
Z_set(p2)(0, axlength + yt, 0); % Y axis.
Z_set(p3)(0, 0, azlength);      % Z axis.
Z_set(p4)(0, 0, 0);             % Origin.

A_calc_w(A)(w1)(p1)(s);
A_calc_w(A)(w2)(p2)(s);
A_calc_w(A)(w3)(p3)(s);
A_calc_w(A)(w4)(p4)(s);

% Draw the axes.
pickup pencircle scaled 0.85pt;
drawarrow w4--w1;
drawarrow w4--w2;
drawarrow w4--w3;

np := 1;
nq := 1;
xt := 0.5;  % Extension of lines.
for i=-np upto np:
    Z_set(p5)(i, -nq - xt, 0);
    Z_set(p6)(i, nq + xt, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6;
    endfor
for j=-nq upto nq:
    Z_set(p5)(-np - xt, j, 0);
    Z_set(p6)(np + xt, j, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6;
    endfor

pickup pencircle;
for i=-np upto np:
    for j=-nq upto nq:
        Z_set(p5)(i, j, 0);
        A_calc_w(A)(w5)(p5)(s);
        draw w5;
        endfor
    endfor

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Constant-latitude circles.
nR := 12;       % 12 points around the equator.
nlat := 9;      % Number for dividing the latitude of 90 degrees.

% Constant-longitude circles.
mR := 12;       % 24 points along the longitude line.
nlong := 12;    % Number for dividing the longitude of 180 degrees.

Z_set(p11)(0,0,0); % Centre of the sphere.
A_draw_latt(A)(s)(p11)(R, nlat, nR, 0.6pt);
A_draw_longg(A)(s)(p11)(R, nlong, mR, 0.6pt);

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the poles. (Superfluous!?)
pickup pencircle scaled 1.0pt;
Z_set(p10)(0,0,R);      % North pole.
A_calc_w(A)(w20)(p10)(s);
draw w20;

Z_set(p10)(0,0,-R);     % South pole.
A_calc_w(A)(w20)(p10)(s);
draw w20;

endfig;
end
