% tex/conc/mp/real2.mp   2015-8-22   Alan U. Kennington.
% $Id: tex/conc/mp/real2.mp d287508d91 2015-08-22 13:51:41Z Alan U. Kennington $
% Non-Hausdorff locally Cartesian space example.

verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
color col[];

a := 10cm;
b := 0.8cm; % Separation of 1 above 0 in X.
bc := 0.8cm; % Vertical separation of chart ranges.
bz := b*1.5; % Height of y-axis arrows.
bzz := b*0.65; % Height of y-axis arrows for charts.
c := 0.5; % Location of points on left.
d := 0.5; % Location of points on right.
bb := 2.0cm; % Separation of X diagram from Y'.
bbb := bb + 2.5cm; % Separation of X diagram above chart ranges.
dx := 0.18bb; % Side-swerve of collage map.
dxx := 1.5pt; % Separation of arrows from points.
dyy := dxx*1.6;
sepA := 15pt;
sepB := 12pt;

penARROW := 0.5bp;
penPT := 2.5bp;

col1 := 0.5white;

% The set X.
w0 := (0,0);    % Left of real line.
w1 := (a,0);    % Right of real line.
w2 := (0,b);    % Left of real line.
w3 := (a,b);    % Right of real line.
w4 := (a/2,0);  % Axis crossover.
w5 := w4+(0,b); % (0,1)
w6 := c[w4,w0];
w7 := c[w5,w2];
w8 := d[w4,w1];
w9 := d[w5,w3];
w10 := w4+(0,bz); % Y-axis top.

% The set Y'.
w20 := w0+(0,-bb);
w21 := w1+(0,-bb);
w24 := w4+(0,-bb);
w25 := w5+(0,-bb);
w26 := w6+(0,-bb);
w28 := w8+(0,-bb);
w29 := w10+(0,-bb);

% The charts.
w30 := w0+(0,-bbb);
w31 := w1+(0,-bbb);
w32 := w30+(0,bc);
w33 := w31+(0,bc);
w34 := w4+(0,-bbb);
w35 := w34+(0,bc);
w36 := w6+(0,-bbb);
w37 := w36+(0,bc);
w38 := w8+(0,-bbb);
w39 := w38+(0,bc);
w40 := w34+(0,bzz);
w41 := w35+(0,bzz);

% The set X.
pickup pencircle scaled penARROW;
drawarrow w4--w10 withcolor col1;
drawarrow w0--w1;
drawarrow w2--w3;
pickup pencircle scaled penPT;
draw w4;
draw w5;
draw w6;
draw w7;
draw w8;
draw w9;
label.lft(btex $X$ etex, 0.5[w0,w2]+(-b/3,0));
label.rt(btex $\reals\times\{0\}$ etex, w1);
label.rt(btex $\reals\times\{1\}$ etex, w3);

% The set Y'.
pickup pencircle scaled penARROW;
drawarrow w24--w29 withcolor col1;
drawarrow w20--w21;
pickup pencircle scaled penPT;
draw w24;
draw w25;
draw w26;
draw w28;
label.lft(btex $Y\rlap{${}'$}$ etex, w20+(-b/3,0));
label.rt(btex $\reals\times\{0\}$ etex, w21);
label.rt(btex $\scriptstyle(0,1)$ etex, w25);

% Some curves from X to Y'. (Collage map.)
w51 := 0.5[w6,w26]+(-dx,0);
w52 := 0.5[w7,w26]+(dx,0);
pickup pencircle scaled penARROW;
drawarrow (w6+(-dxx,-dyy))..w51..(w26+(-dxx,dyy));
drawarrow (w7+(dxx,-dyy))..w52..(w26+(dxx,dyy));
label.lft(btex $f$ etex, w51);
label.rt(btex $f$ etex, w52);

w53 := 0.5[w8,w28]+(-dx,0);
w54 := 0.5[w9,w28]+(dx,0);
drawarrow (w8+(-dxx,-dyy))..w53..(w28+(-dxx,dyy));
drawarrow (w9+(dxx,-dyy))..w54..(w28+(dxx,dyy));
label.lft(btex $f$ etex, w53);
label.rt(btex $f$ etex, w54);

w55 := 0.5[w4,w24]+(-dx,0);
w56 := 0.5[w5,w25]+(dx,0);
drawarrow (w4+(-dxx,-dyy))..w55..(w24+(-dxx,dyy));
drawarrow (w5+(dxx,-dyy))..w56..(w25+(dxx,dyy));
label.lft(btex $f$ etex, w55);
label.rt(btex $f$ etex, w56);

% The charts.
pickup pencircle scaled penARROW;
drawarrow w34--w40 withcolor col1;
drawarrow w35--w41 withcolor col1;
drawarrow w30--w31;
drawarrow w32--w33;
pickup pencircle scaled penPT;
draw w34;
draw w35;
draw w36;
draw w37;
draw w38;
draw w39;
% label.lft(btex $X$ etex, 0.5[w0,w2]+(-b/3,0));
label.rt(btex $\reals$ etex, w31);
label.rt(btex $\reals$ etex, w33);

% Some charts from Y' to reals.
w61 := 0.5[w26,w36]+(-dx,0);
w62 := 0.5[w26,w37]+(dx,0);
pickup pencircle scaled penARROW;
drawarrow (w26+(-dxx,-dyy))..w61..(w36+(-dxx,dyy));
drawarrow (w26+(dxx,-dyy))..w62..(w37+(dxx,dyy));
label.lft(btex $\phi_0$ etex, w61);
label.rt(btex $\phi_1$ etex, w62);

w63 := 0.5[w28,w38]+(-dx,0);
w64 := 0.5[w28,w39]+(dx,0);
drawarrow (w28+(-dxx,-dyy))..w63..(w38+(-dxx,dyy));
drawarrow (w28+(dxx,-dyy))..w64..(w39+(dxx,dyy));
label.lft(btex $\phi_0$ etex, w63);
label.rt(btex $\phi_1$ etex, w64);

w65 := 0.5[w24,w34]+(-dx,0);
w66 := 0.5[w25,w35]+(dx,0);
drawarrow (w24+(-dxx,-dyy))..w65..(w34+(-dxx,dyy));
drawarrow (w25+(dxx,-dyy))..w66..(w35+(dxx,dyy));
label.lft(btex $\phi_0$ etex, w65);
label.rt(btex $\phi_1$ etex, w66);

% Some more labels.
label.rt(btex\strut identification etex, 0.5[w0,w20]+(-sepA,sepB/2));
label.rt(btex\strut map etex, 0.5[w0,w20]+(-sepA,-sepB/2));
label.rt(btex charts etex, 0.5[w20,w32]+(-sepA,0));

endfig;
end
