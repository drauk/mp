% tex/conc/mp/fn2d18.mp   2014-8-2   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d18.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph of Picard iterants for uniform orthogonal translation.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
pair zz[];
color colAXIS, colCIRCLE;
path pat[];

unit := 1.65cm;     % Unit length on axes.
a := 2.5 unit;
b := 1.4 unit;
bb := 2.5 unit;
r := 1;
R := 1.75 unit;

npA := 40;          % Number of points per unit time in graph.
tmaxA := 2.95;
npp := floor(npA * tmaxA); % Total number of points.
tmax := npp / npA;

nqX := 2;           % Number of notches on X axes.
nqY := 1;           % Number of notches on Y axis upper.
nqYb := 2;          % Number of notches on Y axis lower.
ht := a/35;         % Notch length.

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.

colAXIS := 0.35white;
colCIRCLE := 0.3white;

penLN := 0.5bp;
penPTaxis := 2.5bp;
penPT := 2.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor colAXIS;
drawarrow zz4--zz2 withcolor colAXIS;
label.bot(btex $\strut v_2$ etex, zz1);
label.lft(btex $\strut v_1$ etex, zz2);

% Add some notches.
for i=-nqX upto nqX:
    x1 := i * unit;
    if (i < -1) or (i > 1):
        pickup pencircle scaled penLN;
        label.bot(decimal i infont "cmr7", (x1,0));
        draw (x1,0)--(x1,ht) withcolor colAXIS;
        fi
    endfor
for i=-nqYb step 1 until nqY:
    y1 := i*unit;
    if (i > 0):
        pickup pencircle scaled penPTaxis;
        label.ulft(decimal i infont "cmr7", (0,y1));
        draw (0,y1) withcolor colAXIS;
        fi
    if (i = -1):
        pickup pencircle scaled penPTaxis;
        label.ulft(decimal i infont "cmr7", (0,y1));
        draw (0,y1) withcolor colAXIS;
        fi
    if (i < -1):
        pickup pencircle scaled penLN;
        label.lft(decimal i infont "cmr7", (-2pt,y1));
        draw (0,y1)--(ht,y1) withcolor colAXIS;
        fi
    endfor

% Draw the main circle.
pickup pencircle scaled penLN;
draw fullcircle scaled 2unit shifted zz0 withcolor colCIRCLE;

% A_0 approximation.
zz90 := (0,1unit);
zz91 := zz90 + (15pt,10pt);
pickup pencircle scaled penLN;
S_arrowspaces(zz91, zz90, 0pt, 3pt, 1, black);
pickup pencircle scaled penPT;
draw zz90;
label.urt(btex $\smash{A_0}$ etex, zz91+(-1pt,-1pt));

% Draw A_1 approximation.
pickup pencircle scaled penLN;
zz10 := (-tmaxA*unit,1unit);
zz11 := (tmaxA*unit,1unit);
drawdblarrow zz10--zz11;
label.bot(btex\strut $A_1$ etex, zz10);
label.bot(btex\strut $A_1$ etex, zz11);

pickup pencircle scaled penPT;
zz12 := (1,1)*unit;
zz13 := (-1,1)*unit;
zz14 := (2,1)*unit;
zz15 := (-2,1)*unit;
draw zz12;
draw zz13;
draw zz14;
draw zz15;
label.top(btex $\scriptstyle t=1$ etex, zz12);
label.top(btex $\scriptstyle t=-1$ etex, zz13);
label.top(btex $\scriptstyle t=2$ etex, zz14);
label.top(btex $\scriptstyle t=-2$ etex, zz15);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for A_2.
for i=0 upto npp:
    t := i/npA;
    xx[i] := t;
    yy[i] := 1 - (t*t)/2;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
drawdblarrow
for i=npp downto 1:
    ((-xx[i],yy[i])*unit)..
    endfor
for i=0 upto npp-1:
    ((xx[i], yy[i])*unit)..
    endfor
    ((xx[npp],yy[npp])*unit);

label.urt(btex\strut $A_2$ etex, (-xx[npp],yy[npp])*unit+(4pt,0));
label.ulft(btex\strut $A_2$ etex, (xx[npp],yy[npp])*unit+(-4pt,0));

pickup pencircle scaled penPT;
zz20 := (xx[npA],yy[npA])*unit;
zz21 := (-xx[npA],yy[npA])*unit;
zz22 := (xx[npA*2],yy[npA*2])*unit;
zz23 := (-xx[npA*2],yy[npA*2])*unit;
draw zz20;
draw zz21;
draw zz22;
draw zz23;
label.urt(btex $\scriptstyle t=1$ etex, zz20);
label.ulft(btex $\scriptstyle t=-1$ etex, zz21);
label.urt(btex $\scriptstyle t=2$ etex, zz22);
label.ulft(btex $\scriptstyle t=-2$ etex, zz23);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for A_3.
for i=0 upto npp:
    t := i/npA;
    xx[i] := t - (t*t*t)/6;
    yy[i] := 1 - (t*t)/2;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
drawdblarrow
for i=npp downto 1:
    ((-xx[i],yy[i])*unit)..
    endfor
for i=0 upto npp-1:
    ((xx[i], yy[i])*unit)..
    endfor
    ((xx[npp],yy[npp])*unit);

label.urt(btex\strut $A_3$ etex, (-xx[npp],yy[npp])*unit+(0,0));
label.ulft(btex\strut $A_3$ etex, (xx[npp],yy[npp])*unit+(0,0));

pickup pencircle scaled penPT;
zz30 := (xx[npA],yy[npA])*unit;
zz31 := (-xx[npA],yy[npA])*unit;
zz32 := (xx[npA*2],yy[npA*2])*unit;
zz33 := (-xx[npA*2],yy[npA*2])*unit;
draw zz30;
draw zz31;
draw zz32;
draw zz33;
label.lft(btex $\scriptstyle t=1$ etex, zz30);
label.rt(btex $\scriptstyle t=-1$ etex, zz31);
label.rt(btex $\scriptstyle t=2$ etex, zz32);
label.lft(btex $\scriptstyle t=-2$ etex, zz33);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for A_4.
for i=0 upto npp:
    t := i/npA;
    xx[i] := t - (t*t*t)/6;
    yy[i] := 1 - (t*t)/2 + (t*t*t*t)/24;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
drawdblarrow
for i=npp downto 1:
    ((-xx[i],yy[i])*unit)..
    endfor
for i=0 upto npp-1:
    ((xx[i], yy[i])*unit)..
    endfor
    ((xx[npp],yy[npp])*unit);

label.bot(btex\strut $A_4$ etex, (-xx[npp],yy[npp])*unit+(4pt,3pt));
label.bot(btex\strut $A_4$ etex, (xx[npp],yy[npp])*unit+(-4pt,3pt));

pickup pencircle scaled penPT;
zz40 := (xx[npA],yy[npA])*unit;
zz41 := (-xx[npA],yy[npA])*unit;
zz42 := (xx[npA*2],yy[npA*2])*unit;
zz43 := (-xx[npA*2],yy[npA*2])*unit;
draw zz40;
draw zz41;
draw zz42;
draw zz43;
% label.lft(btex $\scriptstyle t=1$ etex, zz40);
% label.rt(btex $\scriptstyle t=-1$ etex, zz41);
% label.rt(btex $\scriptstyle t=2$ etex, zz42);
% label.lft(btex $\scriptstyle t=-2$ etex, zz43);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for A_5.
for i=0 upto npp:
    t := i/npA;
    xx[i] := t - (t*t*t)/6 + (t*t*t*t*t)/120;
    yy[i] := 1 - (t*t)/2 + (t*t*t*t)/24;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
drawdblarrow
for i=npp downto 1:
    ((-xx[i],yy[i])*unit)..
    endfor
for i=0 upto npp-1:
    ((xx[i], yy[i])*unit)..
    endfor
    ((xx[npp],yy[npp])*unit);

label.rt(btex\strut $A_5$ etex, (-xx[npp],yy[npp])*unit+(-1pt,2pt));
label.lft(btex\strut $A_5$ etex, (xx[npp],yy[npp])*unit+(1pt,2pt));

pickup pencircle scaled penPT;
zz50 := (xx[npA],yy[npA])*unit;
zz51 := (-xx[npA],yy[npA])*unit;
zz52 := (xx[npA*2],yy[npA*2])*unit;
zz53 := (-xx[npA*2],yy[npA*2])*unit;
draw zz50;
draw zz51;
draw zz52;
draw zz53;
% label.lft(btex $\scriptstyle t=1$ etex, zz50);
% label.rt(btex $\scriptstyle t=-1$ etex, zz51);
% label.rt(btex $\scriptstyle t=2$ etex, zz52);
% label.lft(btex $\scriptstyle t=-2$ etex, zz53);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for A_6.
for i=0 upto npp:
    t := i/npA;
    xx[i] := t - (t*t*t)/6 + (t*t*t*t*t)/120;
    yy[i] := 1 - (t*t)/2 + (t*t*t*t)/24 - (t*t*t*t*t*t)/720;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
drawdblarrow
for i=npp downto 1:
    ((-xx[i],yy[i])*unit)..
    endfor
for i=0 upto npp-1:
    ((xx[i], yy[i])*unit)..
    endfor
    ((xx[npp],yy[npp])*unit);

label.rt(btex\strut $A_6$ etex, (-xx[npp],yy[npp])*unit+(-2pt,0pt));
label.lft(btex\strut $A_6$ etex, (xx[npp],yy[npp])*unit+(2pt,0pt));

pickup pencircle scaled penPT;
zz60 := (xx[npA],yy[npA])*unit;
zz61 := (-xx[npA],yy[npA])*unit;
zz62 := (xx[npA*2],yy[npA*2])*unit;
zz63 := (-xx[npA*2],yy[npA*2])*unit;
draw zz60;
draw zz61;
draw zz62;
draw zz63;
% label.lft(btex $\scriptstyle t=1$ etex, zz60);
% label.rt(btex $\scriptstyle t=-1$ etex, zz61);
% label.rt(btex $\scriptstyle t=2$ etex, zz62);
% label.lft(btex $\scriptstyle t=-2$ etex, zz63);

pickup pencircle scaled penPT;
zz50 := (xx[npA],yy[npA])*unit;
zz51 := (-xx[npA],yy[npA])*unit;
zz52 := (xx[npA*2],yy[npA*2])*unit;
zz53 := (-xx[npA*2],yy[npA*2])*unit;
draw zz50;
draw zz51;
draw zz52;
draw zz53;
% label.lft(btex $\scriptstyle t=1$ etex, zz50);
% label.rt(btex $\scriptstyle t=-1$ etex, zz51);
% label.rt(btex $\scriptstyle t=2$ etex, zz52);
% label.lft(btex $\scriptstyle t=-2$ etex, zz53);

label.rt(btex $\scriptstyle t=\pm\sqrt6$ etex, (ht,-2unit));

endfig;
end
