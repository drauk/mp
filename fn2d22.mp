% tex/conc/mp/fn2d22.mp   2015-5-21   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d22.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Lissajous figure.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], pt[];
color gcol;
path pat[];

unit := 3cm;          % Unit length on axes.
a := 1.20 unit;
b := 1.15 unit;

np := 100;          % Number of points in graph.
nq := 1;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/35;         % Notch length.
PI := 3.14159265358979;
gcol := 0.35white;    % Colour of axes.

penLN := 0.5bp;
penPT := 3.0bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.bot(btex $x_1$ etex, zz1);
label.lft(btex $x_2$ etex, zz2);

% Add some notches.
pickup pencircle scaled penLN;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if i < 0:
            label.llft(decimal i infont "cmr9", (x1,-1pt));
        else:
            label.lrt(decimal i infont "cmr9", (x1,-1pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        if i < 0:
%            label.llft(decimal i infont "cmr9", (0,y1));
            label.lft(decimal i infont "cmr9", (0,y1));
        else:
%            label.ulft(decimal i infont "cmr9", (0,y1));
            label.lft(decimal i infont "cmr9", (0,y1));
            fi
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points.
tmax := 360;
for i=0 upto np:
    t := tmax * (i/np);
    pt[i] := unit * (sind(t), sind(2 * t));
    endfor

% Draw the graph.
pat2 :=
for i=0 upto np-1:
    pt[i]..
    endfor
%    pt[np];
    cycle;

spA := 0.15;
pickup pencircle scaled penLN;
drawarrow subpath(spA,np-spA) of pat2;
% draw subpath(0,spA) of pat2 dashed withdots;
% draw subpath(np-spA,np) of pat2 dashed (evenly scaled 0.5);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex $f:(0,2\pi)\to\reals^2$ with $f:t\mapsto(\sin t,\sin 2t)$ etex,
zz4);

qnp := np/tmax;             % Multiplier for degrees.
qPI := np/(2*PI)*(360/tmax); % Multiplier for radians. Equals 180/PI * np/tmax.
zz10 := point (0.1 * qPI) of pat2;
zz11 := point (0.2 * qPI) of pat2;
zz12 := point (0.3 * qPI) of pat2;
zz13 := point (45 * qnp) of pat2;
zz14 := point (90 * qnp) of pat2;
zz15 := point (225 * qnp) of pat2;
zz16 := point (np - 0.1 * qPI) of pat2;

pickup pencircle scaled penPT;
draw zz10;
draw zz11;
draw zz12;
draw zz13;
draw zz14;
draw zz15;
draw zz16;
label.rt(btex $t=0.1$ etex, zz10+(2pt,0));
label.rt(btex $t=0.2$ etex, zz11+(2pt,0));
label.rt(btex $t=0.3$ etex, zz12+(2pt,0));
label.top(btex $t=\pi/4$ etex, zz13+(0,0));
label.ulft(btex $t=\pi/2$ etex, zz14+(0,0));
label.top(btex $t=5\pi/4$ etex, zz15+(0,0));
label.lft(btex $t=2\pi-0.1$ etex, zz16+(-2pt,0));

endfig;
end
