% tex/conc/mp/fn78.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn78.mp c1042c4ff2 2012-05-07 09:22:41Z Alan U. Kennington $
% Graph of sin(1/x) as connected set which is not locally connected.

verbatimtex
\input dgmpmax
etex

% Ad-hoc function definition.
def fn(expr xval) =
% sqrt(1+(xval*xval))
% (1+3sqrt(abs(xval)))
(1+3abs(xval))
enddef;

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];
color colAXIS;

unitX := 4.4cm;
unitY := 1.1cm;
a := 1.2unitX;
b := 4unitY + 12pt;
bb := 3.4unitY;
np := 640;             % Number of points on X axis.
nqX :=  1;             % Number of notches on X axis.
nqY :=  4;             % Number of notches on Y axis.
ht := a/45;            % Notch length.
penPT := 2.5bp;        % Diameter of big dots.
badpt := 0.7;          % Y value for the non-locally-connected point.
baddiam := 0.1;        % Diameter of nbhd of bad point.
penAXIS := 0.5pt;      % Thickness of drawing axes.
penFNA := 0.18pt;
penFNB := 0.12pt;
penFNC := 0.06pt;
penFND := 0.04pt;
penNOTCH := penAXIS;
colAXIS := 0.6white;

% Geometry of the axes.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor colAXIS;
drawarrow zz4--zz2 withcolor colAXIS;
label.lrt(btex $x$ etex, zz1);
label.lrt(btex $y$ etex, zz2+(3pt,2pt));

% Calculate the points.
offset := 12;
for i=0 upto np:
    xx[i] := offset/(offset+i);
    yy[i] := sind(90/xx[i]);
    endfor

% Draw the function.
npa := floor(np/8);
npb := floor(2np/4);
npc := floor(3np/4);
pickup pencircle scaled penFNA;
draw for i=0 upto npa-1:
    (xx[i]*unitX,yy[i]*unitY*fn(xx[i]))..
    endfor
    (xx[npa]*unitX,yy[npa]*unitY*fn(xx[npa]));
pickup pencircle scaled penFNB;
draw for i=npa upto npb-1:
    (xx[i]*unitX,yy[i]*unitY*fn(xx[i]))--
    endfor
    (xx[npb]*unitX,yy[npb]*unitY*fn(xx[npb]));
pickup pencircle scaled penFNC;
draw for i=npb upto npc-1:
    (xx[i]*unitX,yy[i]*unitY*fn(xx[i]))--
    endfor
    (xx[npc]*unitX,yy[npc]*unitY*fn(xx[npc]));
pickup pencircle scaled 0.penFND;
draw for i=npc upto np-1:
    (xx[i]*unitX,yy[i]*unitY*fn(xx[i]))--
    endfor
    (xx[np]*unitX,yy[np]*unitY*fn(xx[np]));

pickup pencircle scaled penFNA;
draw for i=0 upto npa-1:
    (-xx[i]*unitX,-yy[i]*unitY*fn(xx[i]))..
    endfor
    (-xx[npa]*unitX,-yy[npa]*unitY*fn(xx[npa]));
pickup pencircle scaled penFNB;
draw for i=npa upto npb-1:
    (-xx[i]*unitX,-yy[i]*unitY*fn(xx[i]))--
    endfor
    (-xx[npb]*unitX,-yy[npb]*unitY*fn(xx[npb]));
pickup pencircle scaled penFNC;
draw for i=npb upto npc-1:
    (-xx[i]*unitX,-yy[i]*unitY*fn(xx[i]))--
    endfor
    (-xx[npc]*unitX,-yy[npc]*unitY*fn(xx[npc]));
pickup pencircle scaled penFND;
draw for i=npc upto np-1:
    (-xx[i]*unitX,-yy[i]*unitY*fn(xx[i]))--
    endfor
    (-xx[np]*unitX,-yy[np]*unitY*fn(xx[np]));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-1 upto nqX:
    x1 := i * unitX;
    draw (x1,0)--(x1,ht) withcolor colAXIS;
    if i>0:
        label.urt(decimal i infont "cmr10", (x1,2pt));
        fi
    if i<0:
        label.ulft(decimal i infont "cmr10", (x1,2pt));
        fi
    endfor
for i=-3 upto nqY:
    y1 := i*unitY;
    if i>1:
        label.ulft(decimal i infont "cmr10", (-ht,y1));
        draw (0,y1)--(-ht,y1) withcolor colAXIS;
        fi
    if i<-1:
        label.llft(decimal i infont "cmr10", (-ht,y1));
        draw (0,y1)--(-ht,y1) withcolor colAXIS;
        fi
    endfor

% Draw the limit points on the Y axis.
pickup pencircle scaled penAXIS;
draw (0,-unitY)--(0,unitY);

% Put dots at end of limiting line.
pickup pencircle scaled penPT;
draw (0,unitY);
draw (0,-unitY);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex $\displaystyle
 f(x)=\cases{\strut(1+3\vert x\vert)\sin(\pi/(2x))&$x\neq0$\cr
  \strut0&$x=0$\cr}$ etex,
 (5pt,-2.8unitY));

% Label the lim-sup.
zz10 := (-0.25unitX, 3unitY);
zz11 := (0, unitY);
pat2 := zz10--zz11;
pickup pencircle scaled penAXIS;
drawarrow subpath(0,0.95) of pat2;
label.ulft(btex $\displaystyle\smash{\limsup_{x\to0}f(x)=1}$ etex,
 zz10+(12pt,2pt));

% Label the lim-inf.
zz20 := (-0.72unitX, -0.55unitY);
zz21 := (0, -unitY);
zz22 := 0.5[zz20,zz21]+(0,-unitY);
pat2 := zz20{dir-70}..zz22..{dir72}zz21;
pickup pencircle scaled penAXIS;
drawarrow subpath(0,1.93) of pat2;
label.ulft(btex $\displaystyle\smash{\liminf_{x\to0}f(x)=-1}$ etex,
 zz20+(20pt,2pt));

setbounds currentpicture to pat1;

endfig;
end
