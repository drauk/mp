% tex/conc/mp/fn2d9.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d9.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Real-valued function on R^2 which is partially differentiable but not
% continuous.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric alpha[];
path pat[];
pair zz[], p[], ptmp[];
color gcol;

gcol := 0.6white;   % Colour of axes.
unit := 1.35cm;     % Unit length on axes.
siz := 1.9 unit;    % Length of lines to draw.
c := 2.30;
a := unit * c;
b := unit * c;
np := 22;           % Number of points on X axis.
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.
penAXIS := 0.5bp;
penNOTCH := 0.5bp;
penLN := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $x_1$ etex, zz1);
label.rt(btex $x_2$ etex, zz2);
label.lft(btex $\scriptstyle 0$ etex, zz3+(0,0));
label.bot(btex $\scriptstyle 0$ etex, zz4+(0,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        label.bot(decimal i infont "cmr9", (x1,0));
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i infont "cmr9", (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Draw the contours of z = f(x) = 2 x_1 x_2 / (x_1^2 + x_2^2).
% If x_2 = 1, then x_1 = 1/z + sqrt(1/z^2 - 1).
alpha[0] := 1;
alpha[1] := 0.9;
alpha[2] := 0.7;
alpha[3] := 0.5;
alpha[4] := 0.3;
alpha[5] := 0.2;
Nalpha := 4;
os := Nalpha + 1;   % Offset in array of points.

pickup pencircle scaled penLN;
for i=0 upto Nalpha:
    zr := 1/alpha[i];
    yy := zr - sqrt(zr*zr - 1);
    ptmp[i] := unitvector((1,yy)) * siz;
    draw (zz0-ptmp[i])--(zz0+ptmp[i]);

    ptmp[os + i] := ptmp[i] rotated 90;
    draw (zz0-ptmp[os + i])--(zz0+ptmp[os + i]);

    ptmp[2os + i] := ptmp[os + i] yscaled -1;
    draw (zz0-ptmp[2os + i])--(zz0+ptmp[2os + i]);

    ptmp[3os + i] := ptmp[2os + i] rotated 90;
    draw (zz0-ptmp[3os + i])--(zz0+ptmp[3os + i]);
    endfor

% Warning: These labels must be synchronised with the alpha array.
% Just above the positive X axis.
label.urt(btex $\scriptstyle 1$ etex, zz0 + ptmp[0]);
label.urt(btex $\scriptstyle 0.9$ etex, zz0 + ptmp[1]);
label.rt(btex $\scriptstyle 0.7$ etex, zz0 + ptmp[2]+(0,3pt));
label.rt(btex $\scriptstyle 0.5$ etex, zz0 + ptmp[3]+(0,1.5pt));
label.rt(btex $\scriptstyle 0.3$ etex, zz0 + ptmp[4]);

% Just left of the positive Y axis.
label.ulft(btex $\scriptstyle -1$ etex, zz0 + ptmp[os + 0]);
label.ulft(btex $\scriptstyle -0.9$ etex, zz0 + ptmp[os + 1]);
label.top(btex $\scriptstyle -0.7$ etex, zz0 + ptmp[os + 2]+(-4.5pt,0));
% label.top(btex $\scriptstyle -0.5$ etex, zz0 + ptmp[os + 3]+(-1.5pt,0));
% label.top(btex $\scriptstyle -0.3$ etex, zz0 + ptmp[os + 4]);

% Just right of the positive Y axis.
% label.urt(btex $\scriptstyle 1$ etex, zz0 - ptmp[2os + 0]);
label.urt(btex $\scriptstyle 0.9$ etex, zz0 - ptmp[2os + 1]);
label.top(btex $\scriptstyle 0.7$ etex, zz0 - ptmp[2os + 2]+(4.5pt,0));
% label.top(btex $\scriptstyle 0.5$ etex, zz0 - ptmp[2os + 3]+(1.5pt,0));
label.top(btex $\scriptstyle 0.3$ etex, zz0 - ptmp[2os + 4]);

% Just left of the negative Y axis.
label.llft(btex $\scriptstyle 1$ etex, zz0 + ptmp[2os + 0]);
label.llft(btex $\scriptstyle 0.9$ etex, zz0 + ptmp[2os + 1]);
label.bot(btex $\scriptstyle 0.7$ etex, zz0 + ptmp[2os + 2]+(-4.5pt,0));
% label.bot(btex $\scriptstyle 0.5$ etex, zz0 + ptmp[2os + 3]+(-1.5pt,0));
% label.bot(btex $\scriptstyle 0.3$ etex, zz0 + ptmp[2os + 4]);

% Just below the positive X axis.
label.lrt(btex $\scriptstyle -1$ etex, zz0 + ptmp[3os + 0]);
label.lrt(btex $\scriptstyle -0.9$ etex, zz0 + ptmp[3os + 1]);
label.rt(btex $\scriptstyle -0.7$ etex, zz0 + ptmp[3os + 2]+(0,-3pt));
label.rt(btex $\scriptstyle -0.5$ etex, zz0 + ptmp[3os + 3]+(0,-1.5pt));
label.rt(btex $\scriptstyle -0.3$ etex, zz0 + ptmp[3os + 4]);

endfig;
end
