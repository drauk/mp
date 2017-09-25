% tex/conc/mp/metric6.mp   2013-12-24   Alan U. Kennington.
% $Id: tex/conc/mp/metric6.mp 1b86b5b461 2015-08-22 05:16:48Z Alan U. Kennington $
% Distance and pseudo-distance functions on a torus.

input mapmax

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[], q[];
color colHYP;
string ss;

penLN := 0.5bp;
penLNA := 0.3bp;
penCIRC := 0.5bp;
penPT := 2.0bp;

unit := 1.2cm;
aa := 4unit;
bb := 3unit;
dd := 25bp;
dyA := 12bp;
dyB := 1bp;
radA := 9pt;
xyA := 5pt;

npA := 16;
yAmax := 3;
ddXA := 0unit;
ddXB := 0.05unit;
colHYP := 0.8white;

zz10 := (0,0);
zz11 := zz10 + (aa,0);
zz12 := zz10 + (aa,bb);
zz13 := zz10 + (0,bb);

zz20 := 0.5[zz10,zz13];
zz21 := 0.5[zz11,zz12];
zz22 := 0.5[zz20,zz21];

zz30 := zz10 + (aa+dd,0);
zz31 := zz30 + (aa,0);
zz32 := zz30 + (aa,bb);
zz33 := zz30 + (0,bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% First diagram.
pickup pencircle scaled penLN;
draw zz13--zz10--zz11;
draw zz11--zz12--zz13 dashed evenly;

draw subpath(0,2) of fullcircle scaled 1unit shifted zz10;
draw subpath(2,4) of fullcircle scaled 1unit shifted zz11;
draw subpath(4,6) of fullcircle scaled 1unit shifted zz12;
draw subpath(6,8) of fullcircle scaled 1unit shifted zz13;

draw subpath(0,2) of fullcircle scaled 2unit shifted zz10;
draw subpath(2,4) of fullcircle scaled 2unit shifted zz11;
draw subpath(4,6) of fullcircle scaled 2unit shifted zz12;
draw subpath(6,8) of fullcircle scaled 2unit shifted zz13;

draw subpath(0,2) of fullcircle scaled 3unit shifted zz10;
draw subpath(2,4) of fullcircle scaled 3unit shifted zz11;
draw subpath(4,6) of fullcircle scaled 3unit shifted zz12;
draw subpath(6,8) of fullcircle scaled 3unit shifted zz13;

p[1] := (fullcircle scaled 4unit shifted zz10) intersectiontimes (zz20--zz21);
p[2] := (fullcircle scaled 4unit shifted zz11) intersectiontimes (zz20--zz21);
p[3] := (fullcircle scaled 4unit shifted zz12) intersectiontimes (zz20--zz21);
p[4] := (fullcircle scaled 4unit shifted zz13) intersectiontimes (zz20--zz21);

draw subpath(0,xpart(p[1])) of fullcircle scaled 4unit shifted zz10;
draw subpath(xpart(p[2]),4) of fullcircle scaled 4unit shifted zz11;
draw subpath(4,xpart(p[3])) of fullcircle scaled 4unit shifted zz12;
draw subpath(xpart(p[4]),8) of fullcircle scaled 4unit shifted zz13;

pickup pencircle scaled penPT;
draw zz10;
draw zz22;

% Some labels.
label.llft(btex $y$ etex, zz10);
label.bot(btex $x_1$ etex, zz11);
label.lft(btex $x_2$ etex, zz13);

label.lft(btex $\scriptstyle r=0.5$ etex, zz10+(0,0.5unit));
label.lft(btex $\scriptstyle r=1\phantom{.5}$ etex, zz10+(0,1unit));
label.lft(btex $\scriptstyle r=1.5$ etex, zz10+(0,1.5unit));
label.lft(btex $\scriptstyle r=1\phantom{.5}$ etex, zz13+(0,-1unit));
label.lft(btex $\scriptstyle r=0.5$ etex, zz13+(0,-0.5unit));

label.top(btex $\scriptstyle r=1.5$ etex, zz13+(1.5unit,0));
label.top(btex $\scriptstyle r=1.5$ etex, zz12+(-1.5unit,0));

label.bot(btex $\scriptstyle r=1$ etex, zz10+(1unit,0));
label.bot(btex $\scriptstyle r=2$ etex, zz10+(2unit,0));
label.bot(btex $\scriptstyle r=1$ etex, zz11+(-1unit,0));

label.top(btex $\scriptstyle r=2.5$ etex, zz22);

label.bot(btex points at distance $r$ from $y=(0,0)$ etex,
 0.5[zz10,zz11]+(0,-dyA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Second diagram.
pickup pencircle scaled penLN;
for i=0 upto npA:
    yA := (i/npA)*yAmax;
    xA := sqrt(yA*yA+1);
    q[i] := zz30+(xA,yA)*unit;
    endfor
draw q0
for i=1 upto npA:
    ..q[i]
    endfor
    withcolor colHYP;

for i=0 upto npA:
    yA := (i/npA)*yAmax;
    xA := sqrt(yA*yA+1);
    q[i] := zz30+(4-xA,yA)*unit;
    endfor
draw q0
for i=1 upto npA:
    ..q[i]
    endfor
    withcolor colHYP;

for i=0 upto npA:
    yA := (i/npA)*yAmax;
    xA := sqrt(yA*yA+1);
    q[i] := zz30+(xA,3-yA)*unit;
    endfor
draw q0
for i=1 upto npA:
    ..q[i]
    endfor
    withcolor colHYP;

for i=0 upto npA:
    yA := (i/npA)*yAmax;
    xA := sqrt(yA*yA+1);
    q[i] := zz30+(4-xA,3-yA)*unit;
    endfor
draw q0
for i=1 upto npA:
    ..q[i]
    endfor
    withcolor colHYP;

pickup pencircle scaled penLN;
draw zz33--zz30--zz31;
draw zz31--zz32--zz33 dashed evenly;

pickup pencircle scaled penLNA;
drawarrow zz30--(zz30+(3unit,3unit));
drawarrow (zz30+(1unit,0unit))--(zz30+(4unit,3unit));
drawarrow (zz30+(2unit,0unit))--(zz30+(4unit,2unit));
drawarrow (zz30+(3unit,0unit))--(zz30+(4unit,1unit));
drawarrow (zz30+(0unit,1unit))--(zz30+(2unit,3unit));
drawarrow (zz30+(0unit,2unit))--(zz30+(1unit,3unit));

% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(0.5unit,2.5unit), 45);
% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(0.5unit,1.5unit), 45);
% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(0.5unit,0.5unit), 45);
% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(1.5unit,0.5unit), 45);
% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(2.5unit,0.5unit), 45);
% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(3.5unit,0.5unit), 45);

S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(0.5unit,2.5unit), 45);
% S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(1.5unit,2.5unit), 45);
S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(1.6unit,2.6unit), 45);
S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(2.5unit,2.5unit), 45);
S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(3.5unit,2.5unit), 45);
S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(3.5unit,1.5unit), 45);
S_tiltlabel_top(btex $\scriptstyle r=0$ etex, zz30+(3.5unit,0.5unit), 45);

% S_tiltlabel_bot(btex $\scriptstyle r^+=1$ etex,
%  zz30+(2.5unit+ddXA,2.5unit-ddXA), 45);
S_tiltlabel_bot(btex $\scriptstyle r^+=1$ etex,
 zz30+(1.0unit+ddXA,1.0unit-ddXA), 58);
% S_tiltlabel_bot(btex $\scriptstyle r^+=1$ etex,
%  zz30+(2.25unit+ddXB,0.75unit+ddXB), -45);
S_tiltlabel_bot(btex $\scriptstyle r^+=1$ etex,
 zz30+(2.77unit+ddXB,1.22unit+ddXB), -53);

% zz45 := zz30 + (0.5unit,2.5unit) + (xyA,-xyA);
zz43 := zz30 + (0.5unit,1.5unit) + (xyA,-xyA);
zz41 := zz30 + (0.5unit,0.5unit) + (xyA,-xyA);
% zz46 := zz30 + (1.5unit,0.5unit) + (xyA,-xyA);
% zz44 := zz30 + (2.5unit,0.5unit) + (xyA,-xyA);
% zz42 := zz30 + (3.5unit,0.5unit) + (xyA,-xyA);

zz45 := zz30 + (0.5unit,2.5unit) + (xyA,-xyA);
% zz43 := zz30 + (1.5unit,2.5unit) + (xyA,-xyA);
% zz41 := zz30 + (2.5unit,2.5unit) + (xyA,-xyA);
zz46 := zz30 + (3.5unit,2.5unit) + (xyA,-xyA);
zz44 := zz30 + (3.5unit,1.5unit) + (xyA,-xyA);
zz42 := zz30 + (3.5unit,0.5unit) + (xyA,-xyA);

pickup pencircle scaled penCIRC;
for i=41 upto 46:
    draw fullcircle scaled radA shifted zz[i];
    ss := decimal(i-40);
    label(ss infont "cmr8", zz[i]);
    endfor

pickup pencircle scaled penPT;
draw zz30;

% Some labels.
label.llft(btex $y$ etex, zz30);
label.bot(btex $x_1$ etex, zz31);
label.lft(btex $x_2$ etex, zz33);

label.bot(btex pseudo-distances $r=0$ etex,
 0.5[zz30,zz31]+(0,-dyB));
label.bot(btex and $r^+=1$ from $y=(0,0)$ etex,
 0.5[zz30,zz31]+(0,-dyA));

endfig;
end
