% tex/conc/mp/real21.mp   2016-4-12   Alan U. Kennington.
% $Id: tex/conc/mp/real21.mp deda4df32f 2016-04-12 12:21:13Z Alan U. Kennington $
% Refinement of an interval partition.

input mapmax
verbatimtex
% \input akmath
etex

beginfig(1);
numeric rat[];
pair zz[];
color col[];

aa := 10cm;
bb := 1.2cm;
ht := 3pt;
htt := ht + 5pt;
ratA := 0.4;
ratB := 0.7;
np := 5;

zz10 := (0,0);
zz11 := zz10 + (aa,0);
zz12 := zz10 + (aa * ratA, 0);
zz13 := zz10 + (aa * ratB, 0);

zz20 := zz10 + (0,-bb);
zz21 := zz20 + (aa,0);
zz22 := zz20 + (aa * ratA, 0);
zz23 := zz20 + (aa * ratB, 0);
for i=1 upto np-1:
    rat[i] := (i/np)[ratA,ratB];
    zz[30+i] := zz20+(aa * rat[i], 0);
    endfor

col1 := 0.5white;

penARROW := 0.5bp;
penLN := 0.7bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
draw zz10--zz11 withcolor col1;

draw (zz10+(0,-ht))--(zz10+(0,ht));
draw (zz11+(0,-ht))--(zz11+(0,ht));
draw (zz12+(0,-ht))--(zz12+(0,ht));
draw (zz13+(0,-ht))--(zz13+(0,ht));

label.lft(btex\strut $a$ etex, zz10);
label.rt(btex\strut $b$ etex, zz11);
label.top(btex\strut $x_0$ etex, zz10+(0,ht));
label.top(btex\strut $x_{i-1}$ etex, zz12+(0,ht));
label.top(btex\strut $x_i$ etex, zz13+(0,ht));
label.top(btex\strut $x_k$ etex, zz11+(0,ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
draw zz20--zz21 withcolor col1;

draw (zz20+(0,-ht))--(zz20+(0,ht));
draw (zz21+(0,-ht))--(zz21+(0,ht));
draw (zz22+(0,-ht))--(zz22+(0,ht));
draw (zz23+(0,-ht))--(zz23+(0,ht));
for i=1 upto np-1:
    draw (zz[30+i]+(0,-ht))--(zz[30+i]+(0,ht));
    endfor

label.lft(btex\strut $a$ etex, zz20);
label.rt(btex\strut $b$ etex, zz21);
label.bot(btex\strut $x_0'$ etex, zz20+(0,-ht));
label.bot(btex\strut $x_{j_0}'$ etex, zz22+(0,-ht));
label.bot(btex\strut $x_{j_1}'$ etex, zz23+(0,-ht));
label.bot(btex\strut $x_{k'}'$ etex, zz21+(0,-ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
S_arrowspace(zz12, zz22, htt, 1, black);
S_arrowspace(zz13, zz23, htt, 1, black);

endfig;
end
