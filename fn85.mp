% tex/conc/mp/fn85.mp   2014-8-28   Alan U. Kennington.
% $Id: tex/conc/mp/fn85.mp 18c41de24b 2014-08-27 19:18:25Z Alan U. Kennington $
% Definition of Dini derivatives of real-valued function of real variable.

beginfig(1);
numeric xx[], yy[];
pair aa[], zz[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
a := 1.8in;
b := 0.90a;
unit := 0.5a;          % Unit length on axes.
col1 := 0.0white;
col2 := 0.6white;

xx1 := 0.75 unit;
yy1 := 0.75 unit;
penAXIS := 0.5bp;
penNOTCH := 0.5bp;
penCURVE := 0.5bp;
penDASH := 0.6bp;

% Pick some random-looking upper and lower left and right Dini derivatives.
dUr := 1.6;
dLr := -1.4;
dUl := 0.6;
dLl := -0.4;

dBr := (dLr + dUr)/2;
dAr := (dUr - dLr)/2;
dBl := (dLl + dUl)/2;
dAl := (dUl - dLl)/2;

% Parameters for curve:
% X = 2^(-theta/360).
% Y = 2^(-theta/360).cos(theta).
% Theta = 90*i/k, k = 3.
% i := 0, 1, ... imax.

k := 8;
f := 90/k;
ncycles := 7;
imax := round(ncycles * (360/f));
rA := mexp((-f/360)*180);
xAz := 1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-10pt,0);
zz4 := (0,-10pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
% label.lrt(btex $x$ etex, zz1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw asymptotes.
zz10 := (xx1,yy1);

% Add vertical dashed line, and label on X-axis.
pickup pencircle scaled penDASH;
draw (xx1,0)--zz10 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex $\strut x$ etex, (xx1,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
zz31 := zz10 + xAz * (1,dUr) * unit * 1.05;
zz32 := zz10 + xAz * (1,dLr) * unit * 0.8;
zz33 := zz10 + xAz * (-1,dUl) * unit * 1.05;
zz34 := zz10 + xAz * (-1,dLl) * unit * 0.9;

pickup pencircle scaled penDASH;
draw zz10--zz31 dashed evenly withcolor col2;
draw zz10--zz32 dashed evenly withcolor col2;
draw zz10--zz33 dashed evenly withcolor col2;
draw zz10--zz34 dashed evenly withcolor col2;

label.rt(btex $\displaystyle\limsup_{h\to0^+}{f(x+h)-f(x)\over h}$ etex, zz31);
label.rt(btex $\displaystyle\liminf_{h\to0^+}{f(x+h)-f(x)\over h}$ etex, zz32);
label.lft(btex $\displaystyle\liminf_{h\to0^-}{f(x+h)-f(x)\over h}$ etex, zz33);
label.lft(btex $\displaystyle\limsup_{h\to0^-}{f(x+h)-f(x)\over h}$ etex, zz34);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the curves.
xA := xAz;
for i=0 upto imax:
    yA := xA * (dAr * cosd(f * i) + dBr);
    aa[i] := (xx1,yy1) + (xA,yA)*unit;
    xA := xA * rA;
    endfor

pickup pencircle scaled penCURVE;
draw
for i=0 upto imax-1:
    aa[i]..
    endfor
    aa[imax];

xA := xAz;
for i=0 upto imax:
    yA := xA * (dAl * cosd(f * i) + dBl);
    aa[i] := (xx1,yy1) + (-xA,yA)*unit;
    xA := xA * rA;
    endfor

pickup pencircle scaled penCURVE;
draw
for i=0 upto imax-1:
    aa[i]..
    endfor
    aa[imax];

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

% setbounds currentpicture to pat1;

endfig;
end
