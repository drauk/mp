% tex/conc/mp/vec20.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec20.mp c157bf5f68 2012-05-06 17:01:47Z Alan U. Kennington $
% Parametrised lines in Cartesian space.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];

a := 7cm;
b := 2.5cm;
px := 0.25a;
py := 0.55b;
na := 2;        % Number of points to left of p.
nb := 3;        % Number of points to right of p.

zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-0.1a,0);
zz4 := (0,-0.1b);

zz10 := (px,py);        % Point p.
zz11 := (0.14a,0.09b);  % Vector v1.
zz12 := (0.19a,-0.09b); % Vector v2.
zz13 := zz10-(na+0.5)*zz11; % Left of L1.
zz14 := zz10+(nb+0.7)*zz11; % Right of L1.
zz15 := zz10-(na+0.3)*zz12; % Left of L2.
zz16 := zz10+(nb+0.6)*zz12; % Right of L2.

% This is the default initial point size for drawing.
pickup pencircle scaled 0.5bp;

% Draw the axes.
pickup pencircle scaled 0.6pt;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.llft(btex $\reals^n$ etex, zz1+(0,-5pt));

% Draw the lines.
pickup pencircle scaled 0.5bp;
drawarrow zz13--zz14;
drawarrow zz15--zz16;
label.urt(btex $L_1$ etex, zz14);
label.lrt(btex $L_2$ etex, zz16);

% Draw the points.
pickup pencircle scaled 2.5pt;
draw zz10;
for i = -na upto nb:
    draw zz10 + i * zz11;
    label.bot(decimal i infont "cmr7", zz10 + i * zz11);

    draw zz10 + i * zz12;
    if i <> 0:
        label.top(decimal i infont "cmr7", zz10 + i * zz12);
        fi
    endfor
label.top(btex \strut$p$ etex, zz10);
label.top(btex \strut$p+v_1$ etex, zz10+zz11);
label.bot(btex \strut$p+v_2$ etex, zz10+zz12);

endfig;
end
