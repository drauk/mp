% tex/conc/mp/fn76.mp   2016-2-15   Alan U. Kennington.
% $Id: tex/conc/mp/fn76.mp 8bf61e31a6 2016-02-15 04:52:55Z Alan U. Kennington $
% Function with lim inf y/x less than lim sup y/x to the origin.

input mapmax.mp

beginfig(1);
pair p[], q[];
color col[];

unitX := 5.0cm;
unitY := 1.4cm;
a := 1.1unitX;
b := 2.35unitY;
bb := 0.5unitY;
np := 1;                % Number of points on X axis.
ht := 3pt;
extA := 0.1unitX;
extB := 0.2unitX;
scA := 0.7;

th := 0.5bp;
thh := 0.5bp;
thhh := 3.0pt;          % Thickness of dots.
col1 := 0.55white;      % Axes.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis points.
p0 := (0,0);
p1 := p0+(a+20pt,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points to plot.
q0 := (1unitX,2unitY);
q1 := (1unitX,1unitY);
q2 := (1/2unitX,1unitY);
q3 := (1/2unitX,1/3unitY);
q4 := (1/6unitX,1/3unitY);
q5 := (1/6unitX,1/12unitY);
q6 := (1/24unitX,1/12unitY);
q7 := (1/24unitX,1/60unitY);
q8 := (1/120unitX,1/60unitY);

for k=0 upto 8:
    q[20+k] = (-xpart(q[k]),ypart(q[k]));
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled th;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.top(btex $\strut x$ etex, p1);
label.rt(btex $f(x)$ etex, p2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% X-axis labels.
for k=0 step 2 until 8:
    x1 := xpart(q[k]);
    draw p0+(x1,0)--p0+(x1,-ht);
    draw p0+(-x1,0)--p0+(-x1,-ht);
    endfor
label.bot(btex \strut $1$ etex, p0+(xpart(q0),-ht));
label.bot(btex \strut ${1\over2}$ etex, p0+(xpart(q2),-ht));
label.bot(btex \strut ${1\over6}$ etex, p0+(xpart(q4),-ht));
label.bot(btex \strut ${1\over24}$ etex, p0+(xpart(q6),-ht));

label.bot(btex \strut $\llap{$-{}$}1$ etex, p0+(-xpart(q0),-ht));
label.bot(btex \strut $\llap{$-{}$}{1\over2}$ etex, p0+(-xpart(q2),-ht));
label.bot(btex \strut $\llap{$-{}$}{1\over6}$ etex, p0+(-xpart(q4),-ht));
label.bot(btex \strut $\llap{-}{1\over24}$ etex, p0+(-xpart(q6),-ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Y-axis labels.
y1 := ypart(q0);
draw p0+(0,y1)--p0+(-ht,y1);
label.lft(btex \strut $2$ etex, p0+(-ht,y1));

y1 := ypart(q2);
draw p0+(0,y1)--p0+(-ht,y1);
label.lft(btex \strut $1$ etex, p0+(-ht,y1));

y1 := ypart(q4);
draw p0+(0,y1)--p0+(-ht,y1);
label.lft(btex \strut ${1\over3}$ etex, p0+(-ht,y1));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the graph.
pickup pencircle scaled thh;
draw q0
    for k=1 upto 8:
        --q[k]
        endfor
        ;
draw q[20]
    for k=1 upto 8:
        --q[20+k]
        endfor
        ;
draw q0--(q0+(extB,0)) dashed evenly scaled scA;
draw q20--(q20+(-extA,0)) dashed evenly scaled scA;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the vertices of the graph.
for k=0 step 2 until 8:
    pickup pencircle scaled thhh;
    draw q[k];
    draw q[20+k];
    endfor

for k=1 step 2 until 7:
    pickup pencircle scaled thhh;
    draw q[k];
    draw q[20+k];

    pickup pencircle scaled (0.65*thhh);
    draw q[k] withcolor white;
    draw q[20+k] withcolor white;
    endfor

p10 := q6+(15pt,30pt);
p11 := q8+(15pt,56pt);
pickup pencircle scaled thh;
S_arrowspaces(p10,q6,0,2.5pt,1,black);
S_arrowspaces(p11,q8,0,2.5pt,1,black);
label.urt(btex $({1\over24},{1\over12})$ etex, p10);
label.urt(btex $({1\over120},{1\over60})$ etex, p11+(-3pt,0pt));

endfig;
end
