% tex/conc/mp/fn101.mp   2016-9-22   Alan U. Kennington.
% $Id: tex/conc/mp/fn101.mp fccac43f4a 2016-09-22 08:29:26Z Alan U. Kennington $
% Rational powers of non-negative real numbers.

input mapmax
verbatimtex
% \input akmath
etex

beginfig(1);
numeric xx[], yy[];
pair zz[];
color gcol;

gcol := 0.4white;   % Colour of axes.
unit := 2.9cm;      % Unit length on axes.
a := 2.25 unit;
b := 2.05 unit;
bb := 2.2 unit;
aL := 0.2unit;
bB := aL;
r := 1;
R := 2 unit;
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.
ylabelA := 1.9;

penLN := 0.5pt;
penNOTCH := 0.5pt;
penAXIS := 0.5pt;

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,bb);
zz3 := (-aL,0);
zz4 := (0,-bB);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x$ etex, zz1);

label.rt(btex\strut $x^0$ etex, (R,1unit));

% The y = x^0 and x^1 "curves".
pickup pencircle scaled penLN;
draw (0,1unit)--(R,1unit);
draw (0,0)--(R,R);

%==============================================================================
% Calculate the points for alpha = 2.
np := 20;           % Number of points in graph.
factor := 2**0.5;
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**2;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 3.
np := 20;           % Number of points in graph.
factor := 2**(1/3);
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**3;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, -yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 4.
np := 20;           % Number of points in graph.
factor := 2**0.25;
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**4;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 5.
np := 20;           % Number of points in graph.
factor := 2**(1/5);
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**5;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, -yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

%==============================================================================
% Calculate the points for alpha = -1.
np := 20;           % Number of points in graph.
endA := 1/(2**1);
endB := 2;
for i=0 upto np:
    xx[i] := (i/np)[endA,endB];
    yy[i] := 1/(xx[i]**1);
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, yy[0]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = -2.
np := 20;           % Number of points in graph.
endA := 1/(2**0.5);
endB := 2;
for i=0 upto np:
    xx[i] := (i/np)[endA,endB];
    yy[i] := 1/(xx[i]**2);
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = -3.
np := 20;           % Number of points in graph.
endA := 1/(2**(1/3));
endB := 2;
for i=0 upto np:
    xx[i] := (i/np)[endA,endB];
    yy[i] := 1/(xx[i]**3);
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = -4.
np := 20;           % Number of points in graph.
endA := 1/(2**(1/4));
endB := 2;
for i=0 upto np:
    xx[i] := (i/np)[endA,endB];
    yy[i] := 1/(xx[i]**4);
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[0]*unit, yy[0]*unit);

% Draw the reflected graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (yy[i]*unit, xx[i]*unit)..
    endfor
    (yy[0]*unit, xx[0]*unit);

%==============================================================================
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=1 step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        label.bot(decimal i infont "cmr8", (x1,-2pt));
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i infont "cmr8", (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some labels.
% zz14 := (((0.3**(1/2)))*unit,0.3unit);
% zz15 := (0.3unit,0.65unit);
% pickup pencircle scaled penLN;
% S_arrowspaces(zz15, zz14, 0pt, 2pt, 1, black);
% label.ulft(btex $x\rlap{${}^2$}$ etex, zz15);

label.rt(btex\strut $x^1$ etex, (2unit,2unit) + (0,1.5pt));
label.urt(btex\strut $x^2$ etex, ((2**0.5)*unit,2unit) + (0,-3pt));
label.top(btex $x\rlap{${}^3$}$ etex, ((2**(1/3))*unit, 2unit) + (1.2pt,0pt));
label.ulft(btex $x^5$ etex, ((2**0.2)*unit,2unit) + (3pt,-1pt));

% label.ulft(btex $x^{-1}$ etex, ((2**(-1))*unit,2unit) + (7pt,-1pt));
label.top(btex $x\rlap{${}^{-1}$}$ etex, ((2**(-1))*unit,2unit));
label.top(btex $x\rlap{${}^{-2}$}$ etex, ((2**(-1/2))*unit,2unit));

% label.ulft(btex $x^{-1/2}$ etex, ((2**(-2))*unit,2unit) + (7pt,-1pt));
label.top(btex $x\rlap{${}^{-1/2}$}$ etex, ((2**(-2))*unit,2unit) + (-3pt,1pt));

label.rt(btex\strut $x^{-1}$ etex, (2unit,(2**(-1))*unit));
label.rt(btex\strut $x^{-2}$ etex, (2unit,(2**(-2))*unit));
label.rt(btex\strut $x^{-3}$ etex, (2unit,(2**(-3))*unit));

label.rt(btex\strut $x^{1/2}$ etex, (2unit,(2**(0.5))*unit));
label.rt(btex\strut $x^{1/3}$ etex, (2unit,(2**(1/3))*unit));
label.rt(btex\strut $x^{1/5}$ etex, (2unit,(2**(1/5))*unit));

label.rt(btex\strut $x^{-1/2}$ etex, (2unit,(2**(-0.5))*unit));
label.rt(btex\strut $x^{-1/3}$ etex, (2unit,(2**(-1/3))*unit));

t := 0.35;
label.llft(btex $x^{-1/4}$ etex, (t*unit, (t**(-1/4))*unit) + (0,3pt));
t := 0.45;
label.ulft(btex $x^0$ etex, (t*unit, 1*unit));
t := 0.45;
label.ulft(btex $x^1$ etex, (t*unit, t*unit) + (3pt,-3pt));
t := 0.25;
label.top(btex $x^{1/5}$ etex, (t*unit, (t**(1/5))*unit));
t := 0.8;
label.rt(btex $x^5$ etex, (t*unit, (t**5)*unit));
t := 1.4;
label.bot(btex\strut $x^{-4}$ etex, (t*unit, (t**(-4))*unit) + (0,-3pt));

endfig;
end
