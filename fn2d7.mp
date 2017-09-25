% tex/conc/mp/fn2d7.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d7.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Real-valued multilinear function of two real variables.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric alpha[];
path pat[];
pair zz[], p[];
color gcol;

gcol := 0.6white;   % Colour of axes.
unit := 1.35cm;     % Unit length on axes.
a := 2.35 unit;
b := 2.35 unit;
np := 22;           % Number of points on X axis.
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.
gap := 1pt;         % Arrowhead gap.

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.
penLN := 0.5bp;
penCURVE := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
% label.lrt(btex $\strut(x_1)\in\reals^1$ etex, zz1);
% label.lft(btex $\strut(x_2)\in\reals^1$ etex, zz2);
label.rt(btex $x_1$ etex, zz1);
label.rt(btex $x_2$ etex, zz2+(1.5pt,0));
label.lft(btex $\scriptstyle 0$ etex, zz3+(0,0));

% Add some notches.
pickup pencircle scaled penLN;
for i=-nq+1 step 1 until nq-1:
    x1 := i * unit;
    if (i <> 0):
        label.bot(decimal i infont "cmr8", (x1,0));
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq+1 step 1 until nqq-1:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i infont "cmr8", (2pt,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Draw the contours of f(x_1, x_2) = k x_1 x_2.
alpha[0] := 0.25;
alpha[1] := 0.5;
alpha[2] := 1;
alpha[3] := 1.5;
alpha[4] := 2;
Nalpha := 4;

pickup pencircle scaled penCURVE;
ovr := 1.05; % Overshoot factor.
npts := 20;
for i=0 upto Nalpha:
    alp := alpha[i];
    xmin := alp/(nqq*ovr);
    xmax := nq*ovr;
    for j := 0 upto npts:
        xa := xmin + (xmax-xmin)*(j/npts);
        ya := alp/xa;
        p[j] := (xa,ya)*unit;
        endfor
    for ang=0 upto 3:
        draw
        for j := 0 upto npts-1:
            (p[j]rotated(ang*90))..
            endfor
            (p[npts]rotated(ang*90));
        endfor
    endfor

% Some labels for the contours.
pickup pencircle scaled penLN;

zz10 := (1,1)*unit;
zz11 := (1.6,1.6)*unit;
label.urt(btex $f(x_1,x_2)=1$ etex, zz11);
S_arrowspaces(zz11,zz10,0,gap,1,black);

zz12 := (-1,1)*unit;
zz13 := (-1.6,1.6)*unit;
label.ulft(btex $f(x_1,x_2)=-1$ etex, zz13);
S_arrowspaces(zz13,zz12,0,gap,1,black);

zz14 := (0.625,0.4)*unit;
label.llft(btex $\scriptstyle 0.25$ etex, zz14+(1pt,1pt));

zz15 := (0.8,0.625)*unit;
label.urt(btex $\scriptstyle 0.5$ etex, zz15+(0,-1pt));

zz16 := (nq*ovr,alpha[4]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle 2$ etex, zz16);
label.lft(btex $\scriptstyle 2$ etex, zz16 rotated 180);
label.bot(btex $\scriptstyle -2$ etex, zz16 rotated -90);

zz17 := (nq*ovr,alpha[3]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle 1.5$ etex, zz17);
label.lft(btex $\scriptstyle 1.5$ etex, zz17 rotated 180);

zz18 := (nq*ovr,alpha[2]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle 1$ etex, zz18);
label.lft(btex $\scriptstyle 1$ etex, zz18 rotated 180);
label.bot(btex $\scriptstyle -1$ etex, zz18 rotated -90);

zz19 := (nq*ovr,alpha[1]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle 0.5$ etex, zz19);
label.lft(btex $\scriptstyle 0.5$ etex, zz19 rotated 180);

zz16 := (nq*ovr,-alpha[4]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle -2$ etex, zz16);
label.lft(btex $\scriptstyle -2$ etex, zz16 rotated 180);
label.bot(btex $\scriptstyle 2$ etex, zz16 rotated -90);

zz17 := (nq*ovr,-alpha[3]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle -1.5$ etex, zz17);
label.lft(btex $\scriptstyle -1.5$ etex, zz17 rotated 180);

zz18 := (nq*ovr,-alpha[2]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle -1$ etex, zz18);
label.lft(btex $\scriptstyle -1$ etex, zz18 rotated 180);
label.bot(btex $\scriptstyle 1$ etex, zz18 rotated -90);

zz19 := (nq*ovr,-alpha[1]/(nq*ovr))*unit;
label.rt(btex $\scriptstyle -0.5$ etex, zz19);
label.lft(btex $\scriptstyle -0.5$ etex, zz19 rotated 180);

zz20 := (-0.2,-0.5)*unit;
zz21 := (0.5,0)*unit;
zz22 := zz21 rotated 90;
zz23 := zz21 rotated 180;
zz24 := (zz21 scaled 0.4) rotated 270;
label.bot(btex $\scriptstyle f(x_1,x_2)=0$ etex, zz20+(-2pt,1pt));
gapp := 2pt;
pickup pencircle scaled penLN;
S_arrowspaces(zz20,zz21,gapp,gap,1,black);
S_arrowspaces(zz20,zz22,gapp,gap,1,black);
S_arrowspaces(zz20,zz23,gapp,gap,1,black);
S_arrowspaces(zz20,zz24,gapp,gap,1,black);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% label.urt(btex
%  $\displaystyle \psi_\alpha^1\circ\psi_0^{-1}(x)=x^1-\alpha|x^1|$ etex, zz2);

zz32 := (-1,-1)*unit;
zz33 := (-1.2,-1.9)*unit;
label.llft(btex $f(x_1,x_2)=x_1x_2$ etex, zz33);

setbounds currentpicture to pat1;

endfig;
end
