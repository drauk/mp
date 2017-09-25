% tex/conc/mp/fn2d20.mp   2014-10-31   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d20.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph of C^infty function in range [0,1].

verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
numeric xx[], yy[];
pair zz[];
color colAXIS;
path pat[];

unit := 4cm;           % Unit length on axes.
a := unit + 12pt;
b := a;
nq := 1;               % Number of notches on both axes.
ht := 3pt;             % Notch length.
dC := 12pt;
spA := 15pt;
spB := 13pt;

penAXIS := 0.5bp;
penCURVEa := 0.4bp;
penCURVEb := 0.25bp;
penCURVEc := 0.1bp;
penCURVEx := 0.15bp;
penPT := 2.0bp;
penNOTCH := 0.7bp;
penCIRC := 0.4bp;
penARROW := 0.5bp;
colAXIS := 0.75 white;

% The floor function.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (0,0);
zz4 := (0,0);
zz20 := (0.5unit, 1unit);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor colAXIS;
drawarrow zz4--zz2 withcolor colAXIS;
label.lrt(btex $x$ etex, zz1);
label.lft(btex $y$ etex, zz2+(-2pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=0 upto nq:
    x1 := i * unit;
    draw (x1,0)--(x1,-ht);
    label.bot(decimal i infont "cmr9", (x1,-ht-1pt));
    endfor
for i=0 upto nq:
    y1 := i*unit;
    label.lft(decimal i infont "cmr9", (-ht,y1));
    draw (0,y1)--(-ht,y1);
    endfor

% Draw the set.
dA := 1;
for i=1 upto 18:
    dA := dA * 0.75;
    xA := (1 - dA) * unit;
    if i <= 10:
        pickup pencircle scaled penCURVEa;
    elseif i <= 15:
        pickup pencircle scaled penCURVEb;
    else:
        pickup pencircle scaled penCURVEc;
        fi
    draw (xA,0)--(xA,xA);
    endfor

pickup pencircle scaled penCURVEx;
draw (unit,0)--(unit,unit);
pickup pencircle scaled penCURVEa;
draw (0,unit)--(unit,unit);

pickup pencircle scaled penPT;
draw zz20;
label.top(btex $z$ etex, zz20);

% Caption.
label.bot(btex\strut $x=1-(0.75)^k$, $k\in\intsgt$, and $0<y<x$, etex,
 (0.5unit,-spA));
label.bot(btex\strut or (($x=1$ or $y=1$) and $(x,y)\in(0,1]^2$) etex,
 (0.5unit,-spA-spB));

% Draw a point which is not locally connected.
pickup pencircle scaled penPT;
draw (unit, 0.5 unit);
pickup pencircle scaled penCIRC;
draw fullcircle scaled dC shifted (unit, 0.5 unit) dashed evenly scaled 0.4;

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Put a label on a non-locally-connected point.
label.rt(btex \tmat{not\cr locally\cr connected} etex, (unit+dC/2, 0.5 unit));

setbounds currentpicture to pat1;

endfig;
end
