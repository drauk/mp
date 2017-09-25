% tex/conc/mp/3d31.mp   2012-5-19   Alan U. Kennington.
% $Id: tex/conc/mp/3d31.mp 17d34e3a20 2015-05-19 09:12:59Z Alan U. Kennington $
% Repeating pattern to be used for wild curve in $\reals^3$.

input 3dmax.mp
verbatimtex
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric s;              % The screen scale factor.
numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
numeric sty[];          % Line drawing style.
pair w[];               % Coordinate pairs on the drawing canvas.
color col[];
path pat[];

s := 2000;
unit := 10;
col0 := 0.5white;       % Axes.
col1 := black;          % The curve.

penAXIS := 0.5bp;
penLN := 0.5bp;
penTHICK := 1.0bp;

% Dimensions of axes.
Xa := 1.8unit;
Ya := 0.5unit;
Za := 0.25unit;

% Dimensions of each loop.
dX := 0.2unit;
dZ := 0.2unit;
dirX := -1;             % Direction of travel.
dirZ := -1;             % Direction of oscillation.
Xb := dirX * dX;
Yb := 0.1unit;
Zb := dirZ * 0.2unit;
Xstart := Xa - 1.0dX;
Zstart := dZ;

% Dimensions of bypass.
Xc := dirX * 0.1dX;
Yc := -0.4dX;
Zc := 0;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p0)(30, -100, 30);    % Position of viewer.
Z_set(q0)(Xa/2, 0, 0);      % Centre of picture.

A_set_pq(A)(p0)(q0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(Xa, 0cm, 0cm);   % X axis.
Z_set(p12)(0cm, Ya, 0cm);   % Y axis.
Z_set(p13)(0cm, 0cm, Za);   % Z axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

pickup pencircle scaled penAXIS;
drawarrow w10--w11 withcolor col0;
drawarrow w10--w12 withcolor col0;
drawarrow w10--w13 withcolor col0;

label.rt(btex $x_1$ etex, w11);
label.ulft(btex $x_2$ etex, w12+(2pt,0));
label.lft(btex $x_3$ etex, w13+(0,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p20)(Xstart, 0, Zb);
Z_set(p21)(Xstart, 0, -Zb);
Z_set(p22)(Xstart-0.5Xb, 0, -Zb);
Z_set(p23)(Xstart-0.5Xb, 0, -0.5Zb);

Z_set(p24)(Xstart-Xb+Xc, 0, -0.5Zb);
Z_set(p25)(Xstart-Xb, -Yc, -0.5Zb);
Z_set(p26)(Xstart-Xb-Xc, 0, -0.5Zb);

Z_set(p27)(Xstart-1.25Xb, 0, -0.5Zb);
Z_set(p28)(Xstart-1.25Xb, 0, 0);

Z_set(p29)(Xstart-Xb-Xc, 0, 0);
Z_set(p30)(Xstart-Xb, Yc, 0);
Z_set(p31)(Xstart-Xb+Xc, 0, 0);

Z_set(p32)(Xstart-0.5Xb, 0, 0);
Z_set(p33)(Xstart-0.5Xb, 0, 0.5Zb);

Z_set(p34)(Xstart-Xc, 0, 0.5Zb);
Z_set(p35)(Xstart, Yc, 0.5Zb);
Z_set(p36)(Xstart+Xc, 0, 0.5Zb);

Z_set(p37)(Xstart+0.25Xb, 0, 0.5Zb);
Z_set(p38)(Xstart+0.25Xb, 0, Zb);
Z_set(p39)(Xstart+Xb, 0, Zb);               % Not used!
npts := 19;

iA := 20;
nA := 8;
for j=0 upto nA-1:
    for i=0 upto npts-1:
        k := iA + j * npts + i;
        kmod := iA + i;
        Z_add_set(p50)(p[kmod])(Xb * j, 0, Zstart);
        A_calc_w(A)(w[k])(p50)(s);
        sty[k] := 0;
        if p[kmod][2] <> 0:
            sty[k-1] := 1;
            sty[k] := 2;
            sty[k+1] := 3;
            fi
        endfor
    endfor

pickup pencircle scaled penTHICK;
draw
for k=iA upto iA + nA * npts - 2:
    if sty[k] = 1:
        w[k]..
    elseif sty[k] = 2:
        w[k]..
%    elseif sty[k] = 3:
%        w[k]--
    else:
        w[k]--
        fi
    endfor
    w[iA + nA * npts - 1];

endfig;
end
