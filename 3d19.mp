% tex/conc/mp/3d19.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/3d19.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% 3d graphic: Definition of multilinear map.

input 3dmax.mp
verbatimtex
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.
path pat[];
color col[];

s := 2000;
unit := 10;
penLN := 0.5bp;
penLNA := 0.7bp;
penPT := 2.5bp;
penCIRC := 1.0bp;

Z_set(p0)(100, -100, 35); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

pickup pencircle scaled penLN;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(unit, 0cm, 0cm); % X axis.
Z_set(p12)(0cm, unit, 0cm); % Y axis.
Z_set(p13)(0cm, 0cm, unit); % Z axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% showvariable w;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

label.lft(btex $0$ etex, w10);
label.lrt(btex $V_1$ etex, w11);
label.rt(btex $V_2$ etex, w12);
label.lft(btex $V_3$ etex, w13+(-2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
va := 0.29unit;             % Origin of local variation.
vb := 0.29unit;
vc := 0.37unit;

wa := 0.3unit;              % Axes for local variation.
wb := 0.3unit;
wc := 0.3unit;

Z_set(p20)(va, vb, vc);     % Origin of local variation.
Z_set(p21)(va+wa, vb, vc);  % X axis.
Z_set(p22)(va, vb+wb, vc);  % Y axis.
Z_set(p23)(va, vb, vc+wc);  % Z axis.

A_calc_w(A)(w21)(p21)(s);
A_calc_w(A)(w22)(p22)(s);
A_calc_w(A)(w23)(p23)(s);
A_calc_w(A)(w20)(p20)(s);

drawarrow w20--w21;
drawarrow w20--w22;
drawarrow w20--w23;

label.lft(btex $(v_1,v_2,v_3)$ etex, w20);
label.lft(btex $\strut{}\in V_1\times V_2\times V_3$ etex, w20+(20pt,-12pt));
label.lrt(btex $(v'_1,v_2,v_3)$ etex, w21+(-5pt,0));
label.urt(btex $(v_1,v'_2,v_3)$ etex, w22+(-5pt,0));
label.top(btex $(v_1,v_2,v'_3)$ etex, w23);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
va := 1.30unit;             % Origin of remote variation.
vb := 1.30unit;
vc := 0.37unit;

wa := 0.45unit;              % Axes for remote variation.
wb := 0.26unit;
wc := 0.22unit;

Z_set(p30)(va, vb, vc);     % Origin of remote variation.
Z_set(p31)(va+wa, vb, vc);  % X axis.
Z_set(p32)(va, vb+wb, vc);  % Y axis.
Z_set(p33)(va, vb, vc+wc);  % Z axis.

A_calc_w(A)(w31)(p31)(s);
A_calc_w(A)(w32)(p32)(s);
A_calc_w(A)(w33)(p33)(s);
A_calc_w(A)(w30)(p30)(s);

% Draw a curve around the linear space U.
% show currentpen;
pickup pencircle scaled penCIRC;
w39 := w30 + (0.5cm,0);
du := 5cm;
draw fullcircle scaled du shifted w39 withcolor 0.55white;

% Go back to the default currentpen.
pickup pencircle scaled penLN;
drawarrow w30--w31;
drawarrow w30--w32;
drawarrow w30--w33;

label.lft(btex $f(v_1,v_2,v_3)$ etex, w30);
label.bot(btex $f(v'_1,v_2,v_3)$ etex, w31+(0,-1pt));
label.urt(btex $f(v_1,v'_2,v_3)$ etex, w32);
label.top(btex $f(v_1,v_2,v'_3)\rlap{${}\in U$}$ etex, w33);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penPT;
draw w10;
draw w20;
draw w30;

gap := 0.02;
gapp := 0.4;
gappp := 0.45;
col1 := 0.4white;
pat1 := w21..w31;
pat2 := w22..w32;
pat3 := w23..w33;

pickup pencircle scaled penLNA;
drawarrow subpath(gap,length(pat1)-2.4gap) of pat1 withcolor col1;
drawarrow subpath(gap,length(pat2)-2gap) of pat2 withcolor col1;
drawarrow subpath(gap,length(pat3)-gap) of pat3 withcolor col1;

w43 := point 0.5 of pat3;
w44 := w43 + (0,-4cm);
w41 := (w43--w44) intersectionpoint pat1;
w42 := (w43--w44) intersectionpoint pat2;

label.bot(btex linear etex, w41);
label.top(btex linear etex, w42);
label.top(btex linear etex, w43);

label(btex $V_1\times V_2\times V_3$ etex, w10+(0,-1cm));
% label(btex $U$ etex, 0.5[w30,w31]+(-0.1cm,-1.5cm));
label.bot(btex $\strut U$ etex, w39+(0,-du/2));

w40 := 0.5[w23,w33]+(0,10mm);
pat4 := w23..w40..w33;
pickup pencircle scaled penLN;
drawarrow subpath(gapp,length(pat4)-gappp) of pat4;
label.top(btex $f\in\mlin(V_1,V_2,V_3;U)$ etex, w40);

endfig;
end
