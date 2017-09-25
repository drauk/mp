% tex/conc/mp/fn96.mp   2016-2-28   Alan U. Kennington.
% $Id: tex/conc/mp/fn96.mp 9f23acf9f3 2016-02-28 04:47:38Z Alan U. Kennington $
% Graph of sin(1/x) as connected set which is not locally connected.

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];

unit := 3.0cm;
xmax := 2;
a := xmax * unit + 20pt;
b := 1unit + 12pt;
aa := 20pt;
bb := 1unit + 8pt;

np := 640;             % Number of points on X axis.
nqx :=  2;             % Number of notches on X axis.
nq :=  1;              % Number of notches on Y axis.
ht := a/45;            % Notch length.
badpt := 0.7;          % Y value for the non-locally-connected point.
baddiam := 0.1;        % Diameter of nbhd of bad point.

penAXIS := 0.5pt;      % Thickness of drawing axes.
penPT := 2.5pt;        % Diameter of big dots.
penA := 0.50pt;
penB := 0.40pt;
penC := 0.16pt;
penD := 0.05pt;
penNOTCH := 0.5bp;
penCIRC := 0.3pt;
penARROW := 0.5bp;

% Geometry of the axes.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
drawarrow zz4--zz2 withcolor0.6white;
label.lrt(btex $x$ etex, zz1);
label.lrt(btex $y$ etex, zz2+(3pt,2pt));

% Calculate the points.
offset := 16;
for i=0 upto np:
    xx[i] := xmax * offset/(offset+i);
    yy[i] := sind(180/xx[i]);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the function.
npa := floor(np/8);
npb := floor(2np/4);
npc := floor(3np/4);
pickup pencircle scaled penA;
draw for i=0 upto npa-1:
    (xx[i]*unit,yy[i]*unit)..
    endfor
    (xx[npa]*unit,yy[npa]*unit);
pickup pencircle scaled penB;
draw for i=npa upto npb-1:
    (xx[i]*unit,yy[i]*unit)--
    endfor
    (xx[npb]*unit,yy[npb]*unit);
pickup pencircle scaled penC;
draw for i=npb upto npc-1:
    (xx[i]*unit,yy[i]*unit)--
    endfor
    (xx[npc]*unit,yy[npc]*unit);
pickup pencircle scaled penD;
draw for i=npc upto np-1:
    (xx[i]*unit,yy[i]*unit)--
    endfor
    (xx[np]*unit,yy[np]*unit);

% Put a dot at the origin.
pickup pencircle scaled penPT;
draw (0*unit,0*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=1 upto nqx:
    x1 := i * unit;
    label.ulft(decimal i infont "cmr10", (x1,2pt));
    draw (x1,0)--(x1,ht);
    endfor
for i=-1 upto nq:
    y1 := i*unit;
    label.ulft(decimal i infont "cmr10", (-ht,y1));
    if i<>0:
        draw (0,y1)--(-ht,y1);
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Say what the graph is about.
zz91 := (0.9unit,-0.35unit);
label.rt(btex $\displaystyle
 f(x)=\cases{\sin(\pi/x)&$x\in(0,2]$\cr 0&$x=0$}$ etex, zz91);

endfig;
end
