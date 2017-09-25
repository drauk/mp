% tex/conc/mp/metric7.mp   2013-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/metric7.mp 1b86b5b461 2015-08-22 05:16:48Z Alan U. Kennington $
% Distance and pseudo-distance functions on a torus.

input mapmax

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[], q[];
color colHYP;

penLN := 0.5bp;
penLNA := 0.3bp;
penPT := 2.0bp;

unit := 1.2cm;
aa := 4unit;
bb := 3unit;

npA := 16;
yAmax := 3;
colHYP := 0.7white;

zz30 := (0,0);
zz31 := zz30 + (aa,0);
zz32 := zz30 + (0,bb);
zz33 := zz30 + (-aa,0);
zz34 := zz30 + (0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Spacelike yyperbolas.
for j=1 upto 3:
    pickup pencircle scaled penLN;
    for i=0 upto npA:
        yA := (i/npA)*yAmax;
        xA := sqrt(yA*yA+j*j);
        q[i] := zz30+(xA,yA)*unit;
        endfor

    draw q[npA]
    for i=npA-1 downto 0:
        ..q[i]
        endfor
    for i=1 upto npA:
        ..(xpart(q[i]),-ypart(q[i]))
        endfor
        withcolor colHYP;

    draw (-xpart(q[npA]),ypart(q[npA]))
    for i=npA-1 downto 0:
        ..(-xpart(q[i]),ypart(q[i]))
        endfor
    for i=1 upto npA:
        ..(-xpart(q[i]),-ypart(q[i]))
        endfor
        withcolor colHYP;
    endfor

% Timelike yyperbolas.
for j=1 upto 2:
    pickup pencircle scaled penLN;
    xAmax := sqrt(yAmax*yAmax - j*j);
    for i=0 upto npA:
        xA := (i/npA)*xAmax;
        yA := sqrt(xA*xA+j*j);
        q[i] := zz30+(xA,yA)*unit;
        endfor

    draw q[npA]
    for i=npA-1 downto 0:
        ..q[i]
        endfor
    for i=1 upto npA:
        ..(-xpart(q[i]),ypart(q[i]))
        endfor
        withcolor colHYP;

    draw (xpart(q[npA]),-ypart(q[npA]))
    for i=npA-1 downto 0:
        ..(xpart(q[i]),-ypart(q[i]))
        endfor
    for i=1 upto npA:
        ..(-xpart(q[i]),-ypart(q[i]))
        endfor
        withcolor colHYP;
    endfor

% Axes.
pickup pencircle scaled penLN;
drawarrow zz33--zz31;
drawarrow zz34--zz32;

% Light-cones.
pickup pencircle scaled penLNA;
drawdblarrow (zz30+(-3unit,-3unit))--(zz30+(3unit,3unit));
drawdblarrow (zz30+(-3unit,3unit))--(zz30+(3unit,-3unit));

% Th origin.
pickup pencircle scaled penPT;
draw zz30;

% Some labels.
% label.llft(btex $y$ etex, zz30);
label.bot(btex\strut $x_1$ etex, zz31);
label.lft(btex\strut $x_2$ etex, zz32+(-2bp,0));

S_tiltlabel_top(btex $\scriptstyle d=0$ etex, zz30+(0.5unit,0.5unit), 45);
S_tiltlabel_top(btex $\scriptstyle d=0$ etex, zz30+(-0.5unit,-0.5unit), 45);
S_tiltlabel_top(btex $\scriptstyle d=0$ etex, zz30+(-0.5unit,0.5unit), -45);
S_tiltlabel_top(btex $\scriptstyle d=0$ etex, zz30+(0.5unit,-0.5unit), -45);

xH := 1.3;
zz1 := zz30 + (xH,sqrt(xH*xH-1))*unit;
S_tiltlabel_bot(btex $\scriptstyle d^+=1$ etex, zz1, 60);

xH := 2.2;
zz1 := zz30 + (xH,sqrt(xH*xH-2*2))*unit;
S_tiltlabel_bot(btex $\scriptstyle d^+=2$ etex, zz1, 68);

xH := 3.2;
zz1 := zz30 + (xH,sqrt(xH*xH-3*3))*unit;
S_tiltlabel_bot(btex $\scriptstyle d^+=3$ etex, zz1, 70);

xH := -1.3;
zz1 := zz30 + (xH,sqrt(xH*xH-1))*unit;
S_tiltlabel_bot(btex $\scriptstyle d^+=1$ etex, zz1, -60);

xH := -2.2;
zz1 := zz30 + (xH,sqrt(xH*xH-2*2))*unit;
S_tiltlabel_bot(btex $\scriptstyle d^+=2$ etex, zz1, -68);

xH := -3.2;
zz1 := zz30 + (xH,sqrt(xH*xH-3*3))*unit;
S_tiltlabel_bot(btex $\scriptstyle d^+=3$ etex, zz1, -70);

yH := 1.3;
zz1 := zz30 + (sqrt(yH*yH-1),yH)*unit;
S_tiltlabel_top(btex $\scriptstyle d^-=1$ etex, zz1, 30);

yH := 2.2;
zz1 := zz30 + (sqrt(yH*yH-2*2),yH)*unit;
S_tiltlabel_top(btex $\scriptstyle d^-=2$ etex, zz1, 22);

yH := -1.3;
zz1 := zz30 + (sqrt(yH*yH-1),yH)*unit;
S_tiltlabel_bot(btex $\scriptstyle d^-=1$ etex, zz1, -30);

yH := -2.2;
zz1 := zz30 + (sqrt(yH*yH-2*2),yH)*unit;
S_tiltlabel_bot(btex $\scriptstyle d^-=2$ etex, zz1, -22);

endfig;
end
