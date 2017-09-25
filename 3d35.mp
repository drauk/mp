% tex/conc/mp/3d35.mp   2015-7-30   Alan U. Kennington.
% $Id: tex/conc/mp/3d35.mp ef935a1ec0 2015-07-29 14:45:47Z Alan U. Kennington $
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
color colSM, colARROW;
path pat[];

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
latA := 15;             % Latitude of selected orbit.
latB := 50;             % Latitude of selected orbit.
longA := -180;          % Start/end longitudes of selected orbit.
longB := 180;
colARROW := 0.6white;   % Colour of label-arrows.
colSM := 0.4white;      % Colour of submanifolds.

penARROW := 1.0pt;      % Arrows for labels.
penEQU := 1.0pt;        % Equator.
penLAT := 0.5pt;        % Latitude lines.
penLONG := 0.5pt;       % Longitude lines.
penARC := 2.2pt;        % Arcs.
penARCx := 1.2pt;       % Arcs in X-space.

yTXT := 2.65cm;
dyTXT := 15bp;          % Label text vertical spacing.

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
A_calc_w(A)(w0)(p11)(s);

% Draw the sphere.
A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, penLAT, penEQU)(p0);
A_draw_long_hide(A)(s)(p11)(R, nlong, mR, penLONG, penLONG)(p0);

% Draw arcs.
A_draw_lat_arc_hide(A)(s)(p11)(R, latA, longA, longB, nR, penARC, 0, colSM)(p0);
A_draw_lat_arc_hide(A)(s)(p11)(R, latB, longA, longB, nR, penARC, 0, colSM)(p0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for submanifolds.
pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,latA);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-7,-5)*5;
% S_arrowspaces(w11,w10,0pt,3.5pt,1,colARROW);
% label.lft(btex\strut $(0,x_2)$ etex, w11);

pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,0,latB);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (-7,-5)*5;
% S_arrowspaces(w11,w10,0pt,3.5pt,1,colARROW);
% label.lft(btex\strut $(0,x_2')$ etex, w11);

pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,135,latA);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (20pt,15pt);
S_arrowspaces(w11,w10,0pt,3.2pt,1,colARROW);
label.urt(btex $\phi_2^{-1}(\{x_2\})$ etex, w11);

pickup pencircle scaled penARROW;
Z_set_rpt(p10)(R,120,latB);
A_calc_w(A)(w10)(p10)(s);
w11 := w10 + (25pt,20pt);
S_arrowspaces(w11,w10,0pt,3.2pt,1,colARROW);
label.urt(btex $\phi_2^{-1}(\{x_2'\})$ etex, w11);

w90 := w0+(0,-yTXT);
label.bot(btex\strut $Y=\{\,y\in S^2;\,y_1>-\sqrt{y_1^2+y_2^2}\,\}$ etex, w90);

%==============================================================================
pair v[], pt[];
color col;

pi := 3.14159265358979;
unit := 1.00cm;         % Global scale factor.

% Dimensions of the axes.
np := 3;
nq := 2;
aa := (np + 2/3) * unit;
bb := (nq + 1/3) * unit;
ht := unit/8;
dd := 8.5cm;            % Spacing between graphs.
col := 0.85white;
penLN := 0.5bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pt0 := w0+(6.7cm,0);
pt1 := pt0+(aa,0);
pt2 := pt0+(0,bb);
pt3 := pt0+(-aa,0);
pt4 := pt0+(0,-bb);

% Draw axes with labels.
pickup pencircle scaled penLN;
drawarrow pt3--pt1;
drawarrow pt4--pt2;
label.bot(btex $X_1$ etex, pt1);
label.ulft(btex $X_2$ etex, pt2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the X-axis notches.
pickup pencircle scaled penLN;
for i = -np step 1 until np:
    x1 := i * unit;
    if i <> 0:
        draw ((x1,0)--(x1,ht)) shifted pt0;
        fi
    if i = -3:
        label.bot(decimal i infont "cmr7", pt0+(x1+3pt,0));
    elseif i <> 0:
        label.bot(decimal i infont "cmr7", pt0+(x1,0));
        fi
    endfor

% Draw the Y-axis notches.
for i = -nq step 1 until nq:
    y1 := i * unit;
    if i <> 0:
        draw ((0,y1)--(ht,y1)) shifted pt0;
        fi
    if i <> 0:
        label.rt(decimal i infont "cmr7", pt0+(ht,y1+2pt));
        fi
    endfor

% Arcs in X-space.
pickup pencircle scaled penARCx;
pt80 := pt0 + (-pi*unit, (latA/180)*pi*unit);
pt81 := pt0 + (pi*unit, (latA/180)*pi*unit);
pt82 := pt0 + (-pi*unit, (latB/180)*pi*unit);
pt83 := pt0 + (pi*unit, (latB/180)*pi*unit);
draw pt80--pt81 withcolor colSM;
draw pt82--pt83 withcolor colSM;
pt85 := 0.25[pt80,pt81];
pt86 := 0.25[pt82,pt83];
pt87 := 0.75[pt80,pt81];
pt88 := 0.75[pt82,pt83];
label.top(btex $X_1\times\{x_2\}$ etex, pt85);
label.top(btex $X_1\times\{x_2'\}$ etex, pt86);
label.top(btex $x_2=15^\circ$ etex, pt87);
label.top(btex $x_2'=50^\circ$ etex, pt88);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The outline of the range set.
pickup pencircle scaled penLN;
draw (((pi,pi/2)--(-pi,pi/2)--(-pi,-pi/2)--(pi,-pi/2)--cycle)
 scaled unit) shifted pt0 dashed evenly;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Extra labels.
label.ulft(btex $\pi/2$ etex, pt0+(0,pi/2)*unit);
label.llft(btex $-\pi/2$ etex, pt0+(0,-pi/2)*unit);

% label.urt(btex $\strut\pi$ etex, pt0+(pi,0)*unit);
label.urt(btex $\pi$ etex, pt0+(pi,0)*unit);
label.ulft(btex $-\pi$ etex, pt0+(-pi,0)*unit);

pt90 := (xpart(pt0), ypart(w90));
pt95 := w90;
label.bot(btex\strut $X_1\times X_2=(-\pi,\pi)\times(-\pi/2,\pi/2)$ etex, pt90);
label.bot(btex\strut
 $\phi_1^{-1}:\{x_1\}\mapsto\{y\in Y;\,y_1=\cos(x_1),\,y_2=\sin(x_1)\}$ etex,
 pt90+(0,-dyTXT));
label.bot(btex\strut
 $\phi_2^{-1}:\{x_2\}\mapsto\{y\in Y;\,y_3=\sin(x_2)\}$ etex,
 pt90+(0,-2dyTXT));

label.bot(btex\strut $\phi_1:y\mapsto\arctan(y_1,y_2)$ etex, pt95+(0,-dyTXT));
label.bot(btex\strut $\phi_2:y\mapsto\arcsin(y_3)$ etex, pt95+(0,-2dyTXT));

pt99 := 0.5[pt90,pt95];
label.bot(btex\strut $\phi_1\times\phi_2:Y\to X_1\times X_2$ etex,
 pt99+(0,dyTXT)+(0,5pt));

endfig;
end
