% tex/conc/mp/fn84.mp   2014-8-22   Alan U. Kennington.
% $Id: tex/conc/mp/fn84.mp f9b8aa0995 2014-08-22 12:05:16Z Alan U. Kennington $
% Explicit delta(epsilon) for given epsilon.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color gcol, colA;
path pat[];

unit := 1.80cm;     % Unit length on axes.
a := 1.6 unit;
b := 2.35 unit;
bb := 0.3 unit;
gcol := 0.6white;   % Colour of axes.
colA := 0.5white;

np := 6;            % Number of points on X axis.
npp := 9;           % Number of points on X axis.
nq := 1;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
nqqB := 1;          % Number of notches on Y axes.
ht := a/45;         % Notch length.

xA := 1;
yA := xA * xA;
dyA := 0.7;         % Epsilon.
dxA := sqrt(yA + dyA) - xA; % Delta.

dxL := 0.4;
dyL := 0.5;
spL := 2bp;

penA := 0.5bp;
penCURVE := 0.5bp;
penDOT := 2.5bp;
penLN := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x$ etex, zz1);
label.rt(btex\strut $y=x^2$ etex, zz2+(3bp,0));

pickup pencircle scaled penCURVE;
draw
for i=-npp upto npp-1:
    ((i/np)*unit,(i/np)*(i/np)*unit)..
    endfor
    ((npp/np)*unit,(npp/np)*(npp/np)*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penLN;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        label.bot(decimal i infont "cmr9", (x1,-ht-2.5pt));
        draw (x1,0)--(x1,-ht) withcolor gcol;
        fi
    endfor
for i=1 upto nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i infont "cmr9", (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
% draw ((xA-dxA,yA+dyA)*unit)--((xA+dxA,yA+dyA)*unit) withcolor colA;
% draw ((xA-dxA,yA-dyA)*unit)--((xA+dxA,yA-dyA)*unit) withcolor colA;

pat1 := ((xA-dxA,yA+dyA)*unit)--((xA+dxA,yA+dyA)*unit)
      --((xA+dxA,yA-dyA)*unit)--((xA-dxA,yA-dyA)*unit)--cycle;
draw pat1 withcolor colA;
draw ((xA-dxA,yA-dyA)*unit)--((xA-dxA,0)*unit)
 dashed (evenly scaled 0.7) withcolor colA;
draw ((xA+dxA,yA-dyA)*unit)--((xA+dxA,0)*unit)
 dashed (evenly scaled 0.7) withcolor colA;

draw ((xA-dxA,yA-dyA)*unit)--((0,yA-dyA)*unit)
 dashed (evenly scaled 0.7) withcolor colA;
draw ((xA-dxA,yA+dyA)*unit)--((0,yA+dyA)*unit)
 dashed (evenly scaled 0.7) withcolor colA;

label.top(btex $\scriptstyle y=y_0+\varepsilon$ etex, (xA,yA+dyA)*unit);
label.top(btex $\scriptstyle y=y_0-\varepsilon$ etex, (xA,yA-dyA)*unit);

pickup pencircle scaled penDOT;
draw (xA * unit, yA * unit);

pickup pencircle scaled penLN;
S_arrowspaces((xA-dxA-dxL,-dyL)*unit, (xA-dxA,0)*unit, 0, spL, 1, black);
label.bot(btex $\scriptstyle x=x_0-\delta^+(x_0)(\varepsilon)$ etex,
 (xA-dxA-dxL,-dyL)*unit);

S_arrowspaces((xA+dxA+dxL,-dyL)*unit, (xA+dxA,0)*unit, 0, spL, 1, black);
label.bot(btex $\scriptstyle x=x_0+\delta^+(x_0)(\varepsilon)$ etex,
 (xA+dxA+dxL,-dyL)*unit);


endfig;
end
