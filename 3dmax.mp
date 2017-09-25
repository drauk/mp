% tex/conc/mp/3dmax.mp   2014-11-15   Alan U. Kennington.
% $Id: tex/conc/mp/3dmax.mp d1953e3bcb 2015-03-21 13:19:17Z Alan U. Kennington $
% MetaPost macros for 3d diagrams.
% These macros are not designed as a general purpose library.
% These macros are intended for use with Alan U. Kennington's diagrams.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% Z_drawmask
% Z_set
% Z_add_set
% Z_assign
% Z_add
% Z_sub
% Z_set_rpt
% Z_set_rpt_inv
% Z_rot_xy
% Z_rot_xz
% Z_rot_yz
% A_set
% A_set_pq
% A_rot_cam
% A_print
% A_calc_w
% A_path_lat
% A_draw_lat
% A_path_long
% A_draw_long
% A_draw_lat_arc_hide
% A_draw_lat_hide
% A_draw_long_hide
% A_north_draw
% A_bearing_draw
% A_sphere_outline

% DISCLAIMER.
% The author of this file disclaims any express or implied guarantee of
% the fitness of this file for any purpose. In no event shall the author
% of this file be held liable for any direct, indirect, incidental,
% special, exemplary, or consequential damages (including, but not limited
% to, procurement of substitute services; loss of use, data, or profits; or
% business interruption) however caused and on any theory of liability,
% whether in contract, strict liability, or tort (including negligence or
% otherwise) arising in any way out of the use of this file, even if
% advised of the possibility of such damage.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choose drawing primitive according to mask.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      Z_drawmask       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_drawmask(expr mask) =
if mask = 0:
    draw
elseif mask = 1:
    drawarrow
elseif mask = 2:
    drawarrow reverse
elseif mask = 3:
    drawdblarrow
    fi
enddef; % End of function Z_drawmask.

%-----------------------------------------------------------
% Set a 3d point.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_set          %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_set(text u)(expr a, b, c) =
u[1] := a;
u[2] := b;
u[3] := c;
enddef; % End of function Z_set.

%-----------------------------------------------------------
% Set a 3d point to the sum of a point plus a triple.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      Z_add_set        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_add_set(text u)(text v)(expr a, b, c) =
u[1] := v[1] + a;
u[2] := v[2] + b;
u[3] := v[3] + c;
enddef; % End of function Z_add_set.

%-----------------------------------------------------------
% Assign a 3d point. u = v.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       Z_assign        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_assign(text u)(text v) =
u[1] := v[1];
u[2] := v[2];
u[3] := v[3];
enddef; % End of function Z_assign.

%-----------------------------------------------------------
% Add two 3d points. u += v.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_add          %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_add(text u)(text v) =
u[1] := u[1] + v[1];
u[2] := u[2] + v[2];
u[3] := u[3] + v[3];
enddef; % End of function Z_add.

%-----------------------------------------------------------
% Subtract a 3d point. u -= v.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_sub          %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_sub(text u)(text v) =
u[1] := u[1] - v[1];
u[2] := u[2] - v[2];
u[3] := u[3] - v[3];
enddef; % End of function Z_sub.

%-----------------------------------------------------------
% Set a 3d point from radius and direction angles.
% Should have a version of this which has a translation vector parameter.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_set_rpt      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_set_rpt(text u)(expr r, phi, theta) =
u[1] := (cosd theta) * (cosd phi) * r;
u[2] := (cosd theta) * (sind phi) * r;
u[3] := (sind theta) * r;
enddef; % End of function Z_set_rpt.

%-----------------------------------------------------------
% Set the radius and direction angles from a 3d point.
% u     3d array in spherical coords to be set.
% v     3d array in Cartesian coords to be converted.
%%%%%%%%%%%%%%%%%%%%%%%%%
%     Z_set_rpt_inv     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_set_rpt_inv(text u)(text v) =
pair Z_rphi, Z_xy, Z_rz;

Z_xy := (v[1], v[2]);
Z_rphi := (length(Z_xy), angle(Z_xy));
Z_rz := (length(Z_xy), v[3]);

u[1] := length(Z_rz);
u[2] := angle(Z_xy);
u[3] := angle(Z_rz);
enddef; % End of function Z_set_rpt_inv.

%-----------------------------------------------------------
% Rotate a 3d point in the x->y direction.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_rot_xy       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_rot_xy(text u)(expr phi) =
numeric Z_tmp;
Z_tmp := (sind phi) * u[1] + (cosd phi) * u[2];
u[1] := (cosd phi) * u[1] - (sind phi) * u[2];
u[2] := Z_tmp;
enddef; % End of function Z_rot_xy.

%-----------------------------------------------------------
% Rotate a 3d point in the x->z direction.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_rot_xz       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_rot_xz(text u)(expr phi) =
numeric Z_tmp;
Z_tmp := (sind phi) * u[1] + (cosd phi) * u[3];
u[1] := (cosd phi) * u[1] - (sind phi) * u[3];
u[3] := Z_tmp;
enddef; % End of function Z_rot_xz.

%-----------------------------------------------------------
% Rotate a 3d point in the y->z direction.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        Z_rot_yz       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def Z_rot_yz(text u)(expr phi) =
numeric Z_tmp;
Z_tmp := (sind phi) * u[2] + (cosd phi) * u[3];
u[2] := (cosd phi) * u[2] - (sind phi) * u[3];
u[3] := Z_tmp;
enddef; % End of function Z_rot_yz.

%-----------------------------------------------------------
% Set a 3x3 matrix and viewpoint.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        A_set          %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_set(text A)(expr a, b, c)(expr d, e, f)(expr g, h, i)(expr px, py, pz) =
% First row: e_1, etc.
A[0][1] := px;
A[0][2] := py;
A[0][3] := pz;
A[1][1] := a;
A[1][2] := b;
A[1][3] := c;
A[2][1] := d;
A[2][2] := e;
A[2][3] := f;
A[3][1] := g;
A[3][2] := h;
A[3][3] := i;
enddef; % End of function A_set.

%-----------------------------------------------------------
% Set a 3x3 matrix and viewpoint from given viewpoint p and centre-point q.
% A     perspective matrix to set
% p     viewpoint in 3-d space.
% q     centre-point of the field of view in 3-d space.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       A_set_pq        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_set_pq(text A)(text p)(text q) =
% Save the position of the viewer.
Z_set(A0)(p1, p2, p3);

% Set up the projection matrix.
% r = length of r-vector. s = length of x-y plane projection.
A_rx := q[1] - p[1];
A_ry := q[2] - p[2];
A_rz := q[3] - p[3];

% Overflow error! 20,000 is too big.
% r := A_rx * A_rx + A_ry * A_ry;
% s := sqrt(r);
% r := sqrt(r + A_rz * A_rz);

% Overflow-avoidance algorithms.
pair A_rr;
A_rr := (A_rx, A_ry);
A_s := length A_rr;     % Length of vector from q to p, projected to X-Y plane.
A_rr := (A_s, A_rz);
A_r := length A_rr;     % Length of vector from q to p.

% Set the rotation matrix. These are three unit vectors.
% A1 = unit vector 90 degrees to the right of projection of vector from viewer.
% A2 = tilted-back Z-vector due to height of viewer.
% A3 = unit vector towards the viewer.
Z_set(A1)(A_ry/A_s, -A_rx/A_s, 0);
Z_set(A2)(-(A_rx/A_s) * (A_rz/A_r), -(A_ry/A_s) * (A_rz/A_r), A_s/A_r);
Z_set(A3)(A_rx/A_r, A_ry/A_r, A_rz/A_r);
enddef; % End of function A_set_pq.

%-----------------------------------------------------------
% Rotate the camera by alpha.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       A_rot_cam       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_rot_cam(text A)(expr alpha) =
begingroup
pair A_v[];
A_v[1] := (A[1][1], A[2][1]) rotated alpha;
A_v[2] := (A[1][2], A[2][2]) rotated alpha;
A_v[3] := (A[1][3], A[2][3]) rotated alpha;
A[1][1] := xpart A_v[1];
A[2][1] := ypart A_v[1];
A[1][2] := xpart A_v[2];
A[2][2] := ypart A_v[2];
A[1][3] := xpart A_v[3];
A[2][3] := ypart A_v[3];
endgroup
enddef; % End of function A_set.

%-----------------------------------------------------------
% Print the projection matrix A.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        A_print        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_print(text A) =
showvariable A;
enddef; % End of function A_print.

%-----------------------------------------------------------
% Calculate screen position w=(w[1],w[2]) of a given 3-d point (x,y,z).
% Scale factor is s.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       A_calc_w        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_calc_w(text A)(text w)(text p)(expr s) =
begingroup
A_rx := p[1] - A[0][1];
A_ry := p[2] - A[0][2];
A_rz := p[3] - A[0][3];

% Calculate x', y' and z'.
A_xd := A[1][1] * A_rx + A[1][2] * A_ry + A[1][3] * A_rz;
A_yd := A[2][1] * A_rx + A[2][2] * A_ry + A[2][3] * A_rz;
A_zd := A[3][1] * A_rx + A[3][2] * A_ry + A[3][3] * A_rz;

% Do the projection.
w := (A_xd/A_zd * s, A_yd/A_zd * s);
endgroup
enddef; % End of function A_calc_w.

%-----------------------------------------------------------
% Return one constant-latitude circle.
% A_pat         The path to be set.
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector to translate centre of sphere by.
% R             Radius of the sphere.
% theta         Latitude of path to construct.
% nR            Number of points around the equator. 12 is fine.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       A_path_lat      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_path_lat(text A_pat)(text A)(expr s)(text q)(expr R, theta, nR) =
begingroup
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).

% Calculate the points on the equator.
for i=0 upto nR-1:
    % Calculate the point in 3-d.
    Z_set_rpt(A_p)(R, 360*(i/nR), theta);
    Z_add(A_p)(q); % Translate by q.

    % Calculate the projection onto the camera film.
    A_calc_w(A)(A_v[i])(A_p)(s);
    endfor

% Join the points into a path.
A_pat :=
for i=0 upto nR-1:
    A_v[i]..
    endfor
    cycle;
endgroup
enddef; % End of function A_path_lat.

%-----------------------------------------------------------
% Draw constant-latitude circles.
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
%       A_draw_lat      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_lat(text A)(expr s)(text q)(expr R, nlat, nR, pensize) =
begingroup
path A_pat;

pickup pencircle scaled pensize;
for A_lat=-nlat+1 upto nlat-1:
    A_theta := 90*(A_lat/nlat);

    % Calculate and draw points on the constant-latitude circle.
    A_path_lat(A_pat)(A)(s)(q)(R, A_theta, nR);
    draw A_pat;
    endfor
endgroup
enddef; % End of function A_draw_lat.

%-----------------------------------------------------------
% Return one constant-longitude circle.
% A_pat         The path to be set.
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector to translate centre of sphere by.
% R             Radius of the sphere.
% phi           Longitude of path to construct.
% mR            Number of points around 180 degrees. 12 is fine.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       A_path_long     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_path_long(text A_pat)(text A)(expr s)(text q)(expr R, phi, mR) =
begingroup
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).

% Calculate the points on the constant-longitude line.
% Loop around from theta = -180 to +180.
% for i=-mR upto mR-1:
for i=0 upto 2mR-1:
    % Calculate the point in 3-d.
    Z_set_rpt(A_p)(R, phi, 180*(i/mR));
    Z_add(A_p)(q); % Translate by q.

    % Calculate the projection onto the camera film.
%    A_calc_w(A)(A_v[mR+i])(A_p)(s);
    A_calc_w(A)(A_v[i])(A_p)(s);
    endfor

% Join the points into a path.
A_pat :=
% for i=-mR upto mR-1:
for i=0 upto 2mR-1:
%    A_v[mR+i]..
    A_v[i]..
    endfor
    cycle;
endgroup
enddef; % End of function A_path_long.

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
%      A_draw_long      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_long(text A)(expr s)(text q)(expr R, nlong, mR, pensize) =
begingroup
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).
path A_pat;

pickup pencircle scaled pensize;
for A_long=0 upto nlong-1:
    A_phi := 180*(A_long/nlong);

    % Calculate and draw the points on the constant-longitude circle.
    A_path_long(A_pat)(A)(s)(q)(R, A_phi, mR);
    draw A_pat;
    endfor
endgroup
enddef; % End of function A_draw_long.

%-----------------------------------------------------------
% Draw a single constant-latitude arc. With line hiding.
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector: centre of sphere.
% R             Radius of the sphere.
% lat           Latitude of arc to draw.
% longA         Start longitude of arc to draw.
% longB         End longitude of arc to draw.
% nR            Number of points around the equator. 12 is fine.
% pensize       Diameter of pen in points.
% msk           Boolean mask for arrowheads. See Z_drawmask().
% col           Colour of arc.
% cam           Numeric 3-vector for camera viewing point.
%%%%%%%%%%%%%%%%%%%%%%%%%
%  A_draw_lat_arc_hide  %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_lat_arc_hide(text A)(expr s)(text q)
 (expr R, lat, longA, longB, nR, pensize, msk, col)(text cam) =
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).
path A_pat;
numeric A_sph[];    % Spherical coords of cam view point.
numeric A_tmp[];    % Relative coords of cam view point.

% Calculate the parameters of the visible region.
Z_assign(A_tmp)(cam);
Z_sub(A_tmp)(q);
Z_set_rpt_inv(A_sph)(A_tmp);

A_ratio := R/A_sph[1];      % Ratio R/r_0 = cos(gamma).
A_costh := cosd A_sph[3];   % Cos(theta_0).
A_sinth := sind A_sph[3];   % Sin(theta_0).

A_theta := lat;
% Calculate the points on the equator.
for i=0 upto nR-1:
    % Calculate the point in 3-d.
    Z_set_rpt(A_p)(R, (i/nR)[0,360], A_theta);
    Z_add(A_p)(q); % Translate by q.

    % Calculate the projection onto the camera film.
    A_calc_w(A)(A_v[i])(A_p)(s);
    endfor

% Join the points into a path.
A_pat := for i=0 upto nR-1:
    A_v[i]..
    endfor
    cycle;

% Choose the pen.
pickup pencircle scaled pensize;

% Determine which stretch is visible.
% phi = phi_0 +- arccos((r_0/d - sin(theta)sinth0)/(cos(theta)costh0)).
A_cosph := (A_ratio-sind(A_theta)*A_sinth)/(cosd(A_theta)*A_costh);
if (A_cosph <= 1) and (A_cosph > -1):
    A_dcosph := angle (A_cosph, sqrt(1-A_cosph*A_cosph));
    A_phi := ((A_sph[2] - A_dcosph)/360)*nR;
    A_phii := ((A_sph[2] + A_dcosph)/360)*nR;
    if (A_phi < (longA/360)*nR):
        A_phi := (longA/360)*nR;
        fi
    if (A_phii > (longB/360)*nR):
        A_phii := (longB/360)*nR;
        fi
    Z_drawmask(msk) (subpath (A_phi, A_phii) of A_pat) withcolor col;
elseif A_cosph <= -1:
    Z_drawmask(msk) (subpath ((longA/360)*nR, (longB/360)*nR) of A_pat)
        withcolor col;
    fi
enddef; % End of function A_draw_lat_arc_hide.

%-----------------------------------------------------------
% Draw constant-latitude circles. With line hiding.
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector: centre of sphere.
% R             Radius of the sphere.
% nlat          Number for dividing the latitude of 90 degrees.
%               nlat = 1 to just draw the equator.
%               nlat = 9 to draw every 10 degrees of latitude.
% nR            Number of points around the equator. 12 is fine.
% pensize       Diameter of pen in points.
% pensizee      Diameter of pen in points for equator.
% cam           Numeric 3-vector for camera viewing point.
%%%%%%%%%%%%%%%%%%%%%%%%%
%    A_draw_lat_hide    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_lat_hide(text A)(expr s)(text q)
 (expr R, nlat, nR, pensize, pensizee)(text cam) =
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).
path A_pat;
numeric A_sph[];    % Spherical coords of cam view point.
numeric A_tmp[];    % Relative coords of cam view point.

% Calculate the parameters of the visible region.
Z_assign(A_tmp)(cam);
Z_sub(A_tmp)(q);
Z_set_rpt_inv(A_sph)(A_tmp);
% showvariable A_sph;

A_ratio := R/A_sph[1];      % Ratio R/r_0 = cos(gamma).
A_costh := cosd A_sph[3];   % Cos(theta_0).
A_sinth := sind A_sph[3];   % Sin(theta_0).
% showvariable A_ratio;
% showvariable A_costh;
% showvariable A_sinth;

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

    % Choose the pen.
    if A_lat = 0:
        pickup pencircle scaled pensizee;
    else:
        pickup pencircle scaled pensize;
        fi

    % Determine which stretch is visible.
    % phi = phi_0 +- arccos((r_0/d - sin(theta)sinth0)/(cos(theta)costh0)).
    A_cosph := (A_ratio-sind(A_theta)*A_sinth)/(cosd(A_theta)*A_costh);
%    showvariable A_lat;
%    showvariable A_cosph;
    if (A_cosph <= 1) and (A_cosph > -1):
        A_dcosph := angle (A_cosph, sqrt(1-A_cosph*A_cosph));
%        showvariable A_dcosph;
        A_phi := ((A_sph[2] - A_dcosph)/360)*nR;
        A_phii := ((A_sph[2] + A_dcosph)/360)*nR;
        draw subpath (A_phi, A_phii) of A_pat;
    elseif A_cosph <= -1:
        draw A_pat;
        fi
    endfor
enddef; % End of function A_draw_lat_hide.

%-----------------------------------------------------------
% Draw constant-longitude circles. With line hiding.
% A             Current projection matrix.
% s             Screen scale factor.
% q             Numeric 3-vector to translate centre of sphere by.
% R             Radius of the sphere.
% nlong         Number for dividing the longitude of 180 degrees.
%               nlong = 1 to just draw phi = 0 and 180 degrees.
%               nlong = 12 to draw every 15 degrees of longitude.
% mR            Number of points around 180 degrees. 12 is fine.
% pensize       Diameter of pen in points.
% cam           Numeric 3-vector for camera viewing point.
%%%%%%%%%%%%%%%%%%%%%%%%%
%    A_draw_long_hide   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_draw_long_hide(text A)
 (expr s)(text q)(expr R, nlong, mR, pensize, pensizee)(text cam) =
numeric A_p[];      % Point in 3-d.
pair A_v[];         % Points in 2-d (the projection screen).
path A_pat;
numeric A_sph[];    % Spherical coords of cam view point.
numeric A_tmp[];    % Relative coords of cam view point.

% Calculate the parameters of the visible region.
Z_assign(A_tmp)(cam);
Z_sub(A_tmp)(q);
Z_set_rpt_inv(A_sph)(A_tmp);

A_ratio := R/A_sph[1];          % Ratio R/r_0 = cos(gamma).
A_costh := cosd A_sph[3];       % Cos(theta_0).
A_costhh := A_costh*A_costh;    % Cos^2(theta_0).
A_sinth := sind A_sph[3];       % Sin(theta_0).
A_sinthh := A_sinth*A_sinth;    % Sin^2(theta_0).

for A_long=0 upto nlong-1:
    A_phi := 180*(A_long/nlong);
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

    % Choose the pen.
    if A_phi = 0:
        pickup pencircle scaled pensizee;
    else:
        pickup pencircle scaled pensize;
        fi

    % Determine which stretch is visible.
    A_cosph := cosd(A_phi - A_sph[2]);  % Cos(phi - phi_0).
    A_cosphh := A_cosph*A_cosph;        % Cos^2(phi - phi_0).
    A_theta := angle(A_costh*A_cosph, A_sinth); % Mid-value of theta.

    % Might take sqrt of a negative number!!
    A_cosdtheta := A_ratio/sqrt(A_costhh*A_cosphh + A_sinthh);
    A_dtheta := angle(A_cosdtheta, sqrt(1-A_cosdtheta*A_cosdtheta));
    A_thetamin := (1+(A_theta-A_dtheta)/180)*mR;
    A_thetamax := (1+(A_theta+A_dtheta)/180)*mR;

    draw subpath(A_thetamin, A_thetamax) of A_pat;
    endfor
enddef; % End of function A_draw_long_hide.

%-----------------------------------------------------------
% Draw a 3d vector at a specified point, pointing north.
%%%%%%%%%%%%%%%%%%%%%%%%%
%     A_north_draw      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_north_draw(text A)(expr s)(text u)(expr R, phi, theta, vlen, vcol) =
numeric A_p[], A_q[];   % End-points of 3-vector.
pair A_w[];             % 2-vectors in picture.

% Base point of vector.
Z_set_rpt(A_p)(R, phi, theta);
Z_add(A_p)(u);                  % Translate by u.
A_calc_w(A)(A_w1)(A_p)(s);      % Project A_p to A_w1.

% End point of vector.
Z_set_rpt(A_q)(vlen, phi, theta+90); % The north vector.
Z_add(A_q)(A_p);                % Add the vector base-point to the vector.
A_calc_w(A)(A_w2)(A_q)(s);      % Project A_q to A_w2.

drawarrow A_w1--A_w2 withcolor vcol;
enddef; % End of function A_north_draw.

%-----------------------------------------------------------
% Draw a 3d vector at a specified point, pointing at a given bearing.
%%%%%%%%%%%%%%%%%%%%%%%%%
%    A_bearing_draw     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_bearing_draw(text A)(expr s)(text u)
    (expr R, phi, theta, vlen, vbear, vcol) =
numeric A_p[], A_q[];   % End-points of 3-vector.
pair A_w[];             % 2-vectors in picture.

% Base point of vector.
Z_set_rpt(A_p)(R, phi, theta);
Z_add(A_p)(u);                  % Translate by u.
A_calc_w(A)(A_w1)(A_p)(s);      % Project A_p to A_w1.

% End point of vector.
Z_set(A_q)(0,vlen,0);
Z_rot_yz(A_q)(vbear);
Z_rot_xz(A_q)(theta);
Z_rot_xy(A_q)(phi);
Z_add(A_q)(A_p);                % Add the vector base-point to the vector.
A_calc_w(A)(A_w2)(A_q)(s);      % Project A_q to A_w2.

drawarrow A_w1--A_w2 withcolor vcol;
enddef; % End of function A_bearing_draw.

%-----------------------------------------------------------
% Calculate the apparent outline of a sphere.
% A             Current projection matrix. (input)
% outln         The outline path which is calculated. (output)
% p             Array (x,y,z) for centre of sphere. (input)
% s             Screen scale factor. (input)
% R             Radius of sphere in 3d world. (input)
% Warning: Must have R less than length of A0.
%%%%%%%%%%%%%%%%%%%%%%%%%
%   A_sphere_outline    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def A_sphere_outline(text A)(text outln)(text p)(expr s, R) =
numeric A_p[], A_q[], A_v[];
pair A_w[];

A_rx := p[1] - A[0][1];
A_ry := p[2] - A[0][2];
A_rz := p[3] - A[0][3];

A_w1 := (A_rx, A_ry);
A_rs := length(A_w1);
A_w1 := (A_rs, A_rz);
A_rs := length(A_w1);               % x = length of A0 - p vector.
A_rrr := A_rs / R;
A_rrr := sqrt(A_rrr * A_rrr - 1);   % ((x/R)^2 - 1)^{1/2}.

% Construct unit vector in direction A0 - p.
A_ux := -A_rx / A_rs;   % A0 - p.
A_uy := -A_ry / A_rs;
A_uz := -A_rz / A_rs;

% Plot centre of sphere.
% A_calc_w(A)(A_w0)(p)(s);

% No, it isn't a circle in general. Must plot the curve explicitly.
ntheta := 8;
for i=0 upto ntheta-1:
    theta := (i / ntheta) * 360;
    ct := cosd(theta);
    st := sind(theta);
    A_v[1] := ct * A[1][1] + st * A[2][1];
    A_v[2] := ct * A[1][2] + st * A[2][2];
    A_v[3] := ct * A[1][3] + st * A[2][3];

    A_aa := length((A_v[1], A_v[2]));
    A_aa := length((A_aa, A_v[3]));     % Length of A_v vector.

    % Calculate inner product of (A0 - p) / |A0 - p| with A_v.
    A_bx := A_ux * A_v[1] + A_uy * A_v[2] + A_uz * A_v[3]; % b1.
    A_bxx := A_bx / A_rs;               % b1 / x.

    A_byy := A_aa / A_rs;               % |A1| / x.
    A_byy := sqrt(A_byy * A_byy - A_bxx * A_bxx); % b2 / x.

    % Calculate reciprocal of multiplier for A1.
    A_tt := A_bxx + A_byy * A_rrr;      % 1 / t.

    % Plot point in direction A1.
    Z_assign(A_p)(p);
    Z_assign(A_q)(A_v);
    A_q[1] := A_q[1] / A_tt;
    A_q[2] := A_q[2] / A_tt;
    A_q[3] := A_q[3] / A_tt;
    Z_add(A_p)(A_q);
    A_calc_w(A)(A_w[i])(A_p)(s);
    endfor

outln :=
for i=0 upto ntheta-1:
    A_w[i]..
    endfor
    cycle;

enddef; % End of function A_sphere_outline.
