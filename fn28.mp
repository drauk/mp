% tex/conc/mp/fn28.mp   2015-8-9   Alan U. Kennington.
% $Id: tex/conc/mp/fn28.mp 41ac3631ed 2015-08-09 10:00:16Z Alan U. Kennington $
% Graph of sin(1/x) as connected set which is not locally connected.

verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];

unit := 4.0cm;
a := 1unit + 20pt;
b := 1unit + 12pt;
aa := 20pt;
bb := 1unit + 8pt;

np := 640;             % Number of points on X axis.
nq :=  1;              % Number of notches on both axes.
ht := a/45;            % Notch length.
badpt := 0.7;          % Y value for the non-locally-connected point.
baddiam := 0.1;        % Diameter of nbhd of bad point.
sepY := 13pt;

penAXIS := 0.5pt;      % Thickness of drawing axes.
penPT := 2.5pt;        % Diameter of big dots.
penA := 0.45pt;
penB := 0.35pt;
penC := 0.20pt;
penD := 0.06pt;
penZ := 0.75pt;
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
    xx[i] := offset/(offset+i);
    yy[i] := sind(90/xx[i]);
    endfor

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
% draw (0*unit,0*unit);

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=1 upto nq:
    x1 := i * unit;
    label.bot(decimal i infont "cmr10", (x1,-2pt));
    draw (x1,0)--(x1,ht);
    endfor
for i=-1 upto nq:
    y1 := i*unit;
    label.ulft(decimal i infont "cmr10", (-ht,y1));
    if i<>0:
        draw (0,y1)--(-ht,y1);
        fi
    endfor

% Draw the limit points on the Y axis.
pickup pencircle scaled penZ;
draw (0,-unit)--(0,unit);

% Put dots at end of limiting line.
pickup pencircle scaled penPT;
% draw (0,unit);
% draw (0,-unit);

% Draw a point which is not locally connected.
pickup pencircle scaled penPT;
draw (0,badpt * unit);
pickup pencircle scaled penCIRC;
draw fullcircle scaled (baddiam*unit) shifted (0,badpt * unit)
 dashed evenly scaled 0.4;

%==============================================================================
% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Say what the graph is about.
zz91 := (0.7unit,-0.4unit);
label.rt(btex $\llap{$X={}$}(\{0\}\times[-1,1])\;\bcup{}$ etex, zz91);

label.rt(
 btex $\{(x,y)\in(0,1]\times\reals;\;y=\sin(\pi/(2x))\}$ etex,
 zz91+(0,-sepY));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Put a label on a non-locally-connected point.
label.llft(btex \tmat{not\cr locally\cr connected} etex,
 (-ht,badpt * unit));

pickup pencircle scaled penARROW;
zz10 := (-0.25unit,(badpt-0.064)*unit);
zz11 := 0.7[zz10,(0,badpt*unit)];
drawarrow zz10--zz11;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% setbounds currentpicture to pat1;

endfig;
end
