% tex/conc/mp/vec21.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec21.mp c157bf5f68 2012-05-06 17:01:47Z Alan U. Kennington $
% Parametrised lines in Cartesian space. Addition operation.
% This diagram is based on vec20.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];

a := 7cm;
b := 2.7cm;
px := 0.12a;
py := 0.50b;
na := 1;        % Number of points to left of p.
nb := 2;        % Number of points to right of p.
penAX := 0.5bp;
penLN := 0.5bp;
penPT := 2.5bp;

zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-0.1a,0);
zz4 := (0,-0.1b);

zz10 := (px,py);        % Point p.
zz11 := (0.16a,0.17b);  % Vector v1.
zz12 := (0.21a,-0.12b); % Vector v2.
zz13 := zz10-(na+0.5)*zz11; % Left of L1.
zz14 := zz10+(nb+0.7)*zz11; % Right of L1.
zz15 := zz10-(na+0.3)*zz12; % Left of L2.
zz16 := zz10+(nb+0.6)*zz12; % Right of L2.

zz20 := zz11 + zz12;    % Vector v1 + v2.
zz21 := zz10-(na+0.1)*zz20; % Left of L3.
zz22 := zz10+(nb+0.6)*zz20; % Right of L3.

% Draw the axes.
pickup pencircle scaled penAX;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.llft(btex $\reals^n$ etex, zz1+(0,-5pt));

% Draw the lines.
pickup pencircle scaled penLN;
drawarrow zz13--zz14;
drawarrow zz15--zz16;
drawarrow zz21--zz22;
label.urt(btex $L_1$ etex, zz14);
label.lrt(btex $L_2$ etex, zz16);
label.llft(btex \strut$L_1+L_2$ etex, zz22+(4pt,0));

% Draw the points.
pickup pencircle scaled penPT;
draw zz10;
for i = -na upto nb:
    draw zz10 + i * zz11;
    label.bot(decimal i infont "cmr7", zz10 + i * zz11);

    draw zz10 + i * zz12;
    if (i <> 0):
        label.top(decimal i infont "cmr7", zz10 + i * zz12);
        fi
%    if i = 2:
%        label.bot(decimal i infont "cmr7", zz10 + i * zz12);
%        fi

    draw zz10 + i * zz20;
    if i <> 0:
        label.top(decimal i infont "cmr7", zz10 + i * zz20);
        fi
    endfor
label.top(btex \strut$p$ etex, zz10);
label.top(btex \strut$p+v_1$ etex, zz10+zz11+(-5pt,-1pt));
label.bot(btex \strut$p+v_2$ etex, zz10+zz12);
label.bot(btex $p+v_1\rlap{${}+v_2$}$ etex, zz10+zz20);

endfig;
end
