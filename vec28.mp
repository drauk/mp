% tex/conc/mp/vec28.mp   2016-2-4   Alan U. Kennington.
% $Id: tex/conc/mp/vec28.mp adfb7e5432 2016-02-03 17:00:51Z Alan U. Kennington $
% Proof that subspaces of finite-dimensional spaces are finite-dimensional.

beginfig(1);
pair zz[];
color col[];
path pat[];

unit := 0.7cm;
unitx := 0.6unit;
a := 2.8unit;
b := 2.8unit;
da := 2a + 70pt;
spA := 16pt;

penAXIS := 0.5bp;       % Thickness of axis lines.
penLINE := 0.5bp;       % Thickness of lines for drawing graphs.
penARROW := 0.75bp;     % Thickness of arrows.

col1 := 0.5white;       % Colour of axes.
col2 := 0.5white;       % Colour of subspaces.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subspace of "coordinate" space.
zz10 := (0,0);
zz11 := zz10+(a+0.2unit,0);
zz12 := zz10+(0,b);
zz13 := zz10+(-a,0);
zz14 := zz10+(0,-b);
zz15 := zz10+(-4unitx,-4unitx);
zz16 := zz10+(4unitx,4unitx);
zz17 := zz10+(2unitx,2unitx);
zz18 := zz10+(0.6a,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz13--zz11 withcolor col1;
drawarrow zz14--zz12 withcolor col1;
label.lrt(btex\strut $K^n$ etex, zz11);
label.rt(btex $W$ etex, zz16);

pickup pencircle scaled penLINE;
draw zz15--zz16 withcolor col2;

pickup pencircle scaled penARROW;
drawarrow zz10--zz17;
label.lrt(btex $w_j$ etex, zz17);
drawarrow zz10--zz18;
label.bot(btex\strut $e_i$ etex, zz18);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subspace of a linear space.
zz20 := (-da,0);
zz21 := zz20+(a+0.2unit,0);
zz22 := zz20+(0,b);
zz23 := zz20+(-a,0);
zz24 := zz20+(0,-b);
zz25 := zz20+(-4unitx,-4unitx);
zz26 := zz20+(4unitx,4unitx);
zz27 := zz20+(2unitx,2unitx);
zz28 := zz20+(0.6a,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz23--zz21 withcolor col1;
drawarrow zz24--zz22 withcolor col1;
label.lrt(btex\strut $V$ etex, zz21);
label.rt(btex $U$ etex, zz26);

pickup pencircle scaled penLINE;
draw zz25--zz26 withcolor col2;

pickup pencircle scaled penARROW;
drawarrow zz20--zz27;
label.lrt(btex $u_j$ etex, zz27);
drawarrow zz20--zz28;
label.bot(btex\strut $v_i$ etex, zz28);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some formulas.
zz30 := zz13 + (-30pt,0.6b);
zz31 := zz30 + (0,-spA);

label.rt(btex\strut $\llap{$u_j={}$}\sum_{k=1}^nw_{j,k}v_k$ etex, zz30);
label.rt(btex\strut $\llap{$v_i={}$}\sum_{k=1}^ne_{i,k}v_k$ etex, zz31);

endfig;
end
