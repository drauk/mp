% tex/conc/mp/calc2.mp   2016-3-29   Alan U. Kennington.
% $Id: tex/conc/mp/calc2.mp 10d5d8e347 2016-03-29 14:17:04Z Alan U. Kennington $
% Chain rule for partial derivatives.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];
path pat[];

unit := 0.7cm;
unitx := 0.6unit;
a := 2.1unit;
b := 2.1unit;
da := 2a + 25pt;
spA := 16pt;
dY := 1.2unit;
dYa := 1unit;

penAXIS := 0.5bp;       % Thickness of axis lines.
penLINE := 0.7bp;       % Thickness of lines for drawing graphs.
penARROW := 0.7bp;      % Thickness of arrows.
penPT := 3bp;
penMAP := 0.5bp;

col1 := 0.5white;       % Colour of axes.
col2 := 0.5white;       % Colour of subspaces.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% R^n.
zz10 := (0,0);
zz11 := zz10+(a+0.2unit,0);
zz12 := zz10+(0,b);
zz13 := zz10+(-a,0);
zz14 := zz10+(0,-b);
zz17 := zz10+(2unitx,2unitx);
zz18 := zz10+(0.6a,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz13--zz11 withcolor col1;
drawarrow zz14--zz12 withcolor col1;
label.urt(btex\strut $\reals^n$ etex, zz11);

pickup pencircle scaled penARROW;
drawarrow zz10--zz18;
label.bot(btex\strut $e_i$ etex, zz18);
pickup pencircle scaled penPT;
draw zz10;
label.ulft(btex\strut $x$ etex, zz10);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% R^m.
zz20 := zz10 + (da,0);
zz21 := zz20+(a+0.2unit,0);
zz22 := zz20+(0,b);
zz23 := zz20+(-a,0);
zz24 := zz20+(0,-b);
zz27 := zz20+(2unitx,2unitx);
zz28 := zz20+(0.6a,0);
zz29 := zz20+(0,0.6a);
zz25 := (-1.2)[zz20,zz27]+(0,-0.9unit);
zz26 := 1.2[zz20,zz27]+(0,0.9unit);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz23--zz21 withcolor col1;
drawarrow zz24--zz22 withcolor col1;
label.urt(btex\strut $\reals^m$ etex, zz21);

pickup pencircle scaled penLINE;
t := angle(zz27-zz20);
drawarrow zz25..zz20{dir t}..zz26 withcolor col2;
label.rt(btex $t\mapsto f(x+te_i)$ etex, zz26);

pickup pencircle scaled penARROW;
drawarrow zz20--zz27;
label.rt(btex $\partial_if(x)$ etex, zz27);
drawarrow zz20--zz28;
label.bot(btex\strut $e_j$ etex, zz28);
drawarrow zz20--zz29;
pickup pencircle scaled penPT;
draw zz20;
label.ulft(btex\strut $f(x)$ etex, zz20);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% R^p.
zz30 := zz20 + (da,0);
zz31 := zz30+(a+0.2unit,0);
zz32 := zz30+(0,b);
zz33 := zz30+(-a,0);
zz34 := zz30+(0,-b);
zz37 := zz30+(1.8unitx,-2.2unitx);
zz38 := zz30+(0.6a,0);
zz39 := zz30+(0,0.6a);
zz35 := (-1.2)[zz30,zz37]+(0,-0.9unit);
zz36 := 1.2[zz30,zz37]+(0,0.9unit);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz33--zz31 withcolor col1;
drawarrow zz34--zz32 withcolor col1;
label.urt(btex\strut $\reals^p$ etex, zz31);

pickup pencircle scaled penLINE;
t := angle(zz37-zz30);
drawarrow zz35..zz30{dir t}..zz36 withcolor col2;
label.rt(btex $t\mapsto g(f(x+te_i))$ etex, zz36);

pickup pencircle scaled penARROW;
drawarrow zz30--zz37;
label.lrt(btex $\partial_i(g\circ f)(x)$ etex, zz37);
drawarrow zz30--zz38;
label.top(btex\strut $e_k$ etex, zz38);
drawarrow zz30--zz39;
pickup pencircle scaled penPT;
draw zz30;
label.llft(btex\strut $g(f(x))$ etex, zz30);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penMAP;
zz40 := 0.5[zz10,zz20] + (-dYa,-dY);
zz41 := 0.5[zz10,zz20] + (dYa,-dY);
drawarrow zz40--zz41;
label.bot(btex\strut $f$ etex, 0.5[zz40,zz41]);

zz50 := 0.5[zz20,zz30] + (-dYa,-dY);
zz51 := 0.5[zz20,zz30] + (dYa,-dY);
drawarrow zz50--zz51;
label.bot(btex\strut $g$ etex, 0.5[zz50,zz51]);


endfig;
end
