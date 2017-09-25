% tex/conc/mp/3d33.mp   2012-5-19   Alan U. Kennington.
% $Id: tex/conc/mp/3d33.mp 531d388621 2015-05-19 09:16:16Z Alan U. Kennington $
% Wild knot in $\reals^3$.

input 3dmax.mp
verbatimtex
% \input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric s;              % The screen scale factor.
numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
numeric sty[];          % Line drawing style.
pair w[], pt[];         % Coordinate pairs on the drawing canvas.
color col[];
path pat[];

s := 2000;
unit := 12;
col0 := 0.7white;       % Axes.
col1 := black;          % The curve.
col2 := 0.6white;       % Dotted horizontal line.

penAXIS := 0.5bp;
penLN := 0.5bp;
penTHICK := 0.4bp;
penPT := 2.5bp;
penPTbig := 3.0bp;
penPTsmall := 1.4bp;

% Dimensions of axes.
Xa := 1.8unit;
Ya := 0.6unit;
Za := 0.6unit;

% Dimensions of each loop.
dX := 0.35unit;
dZ := 0.30unit;
dirX := -1;             % Direction of travel.
dirZ := -1;             % Direction of oscillation.
Xb := dirX * dX;
Yb := 0.15unit;
Zb := dirZ * dZ;
% Xstart := Xa - 1.0dX;
Xstart := 0.25dX;
Zstart := dZ;

% Dimensions of bypass.
Xc := dirX * 0.08dX;
Yc := -0.3dX;
Zc := 0;

% Point at infinity for convergence of the curve.
% Xinf := Xa - 1.0dX;
Xinf := Xa - 0.05Xa;
Zinf := dZ;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p0)(28, -100, 38);    % Position of viewer.
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

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Point at infinity and convergence dots.
nINFpts := 4;
dINFpts := 0.018Xinf;
for i=nINFpts downto 0:
    Z_set(p60)(Xinf - i*dINFpts, 0, Zinf);
    A_calc_w(A)(w14)(p60)(s);
    if i=0:
        pickup pencircle scaled penPTbig;
    else:
        pickup pencircle scaled penPTsmall;
        fi
    draw w14;
    endfor
% Connecting loop back to the start.
Z_set(p60)(Xinf, 0, 0);
A_calc_w(A)(w15)(p60)(s);

% Dotted lines to improve perspective.
Z_set(p60)(0, 0, 2*dZ);
A_calc_w(A)(pt1)(p60)(s);
Z_set(p60)(Xinf, 0, 2*dZ);
A_calc_w(A)(pt2)(p60)(s);
Z_set(p60)(0, Ya, 2*dZ);
A_calc_w(A)(pt3)(p60)(s);
Z_set(p60)(Xinf, Ya, 2*dZ);
A_calc_w(A)(pt4)(p60)(s);
Z_set(p60)(Xinf, Ya, 0);
A_calc_w(A)(pt5)(p60)(s);

pickup pencircle scaled penLN;
draw pt1--pt2--w15 dashed evenly withcolor col2;
draw pt3--pt4--pt5 dashed evenly withcolor col2;
draw pt1--pt3--w12--pt5--w15 dashed evenly withcolor col2;
draw pt2--pt4 dashed evenly withcolor col2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penAXIS;
drawarrow w10--w11 withcolor col0;
drawarrow w10--w12 withcolor col0;
drawarrow w10--w13 withcolor col0;

label.rt(btex $x_1$ etex, w11);
label.ulft(btex $x_2$ etex, w12+(0,0));
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

iA := 20;   % Start of array of points to plot.
nA := 50;
for j=0 upto nA-1:
    for i=0 upto npts-1:
        k := iA + j * npts + i;
        % Run the sequence backwards, from left to right.
%        kmod := iA + i;
        kmod := iA + npts - 1 - i;
%        Z_add_set(p50)(p[kmod])(Xb * j, 0, Zstart);
        Z_add_set(p50)(p[kmod])(-Xb * j, 0, Zstart);

        % Process the point to make it converge to a "point at infinity".
        rat := Xinf / (p50[1] + Xinf);
        p50[1] := p50[1] * rat;
        p50[2] := p50[2] * rat;
        p50[3] := Zinf + (p50[3] - Zinf) * rat;

        % Project the 3-d point onto the "paper".
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
        w[k]--
    elseif sty[k] = 2:
        w[k]--
%    elseif sty[k] = 3:
%        w[k]--
    else:
        w[k]--
        fi
    endfor
    w[iA + nA * npts - 1];

pickup pencircle scaled penTHICK;
drawarrow w14--w15;
drawarrow w15--w[iA];
drawarrow w[iA]--w[iA+1];
drawarrow w[iA+1]--w[iA+2];

pickup pencircle scaled penPT;
draw w[iA];
draw w15;
label.ulft(btex $t=0$ etex, w[iA]);
label.bot(btex $t=1$ etex, w[iA]);
label.urt(btex $t=0.5$ etex, w14);

endfig;
end
