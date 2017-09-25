% tex/conc/mp/fn97.mp   2016-2-15   Alan U. Kennington.
% $Id: tex/conc/mp/fn97.mp e667433252 2016-02-15 08:13:09Z Alan U. Kennington $
% Function with infinitely many limit points at the origin.

beginfig(1);
pair p[], q[];
color col[];

unitX := 5.0cm;
unitY := 1.0cm;
nq := 4;
a := 1.1unitX;
xt := 0.45;
b := (nq+xt)*unitY;
bb := 0.5unitY;
np := 1;                % Number of points on X axis.
ht := 3pt;

penAXIS := 0.5bp;
penLINE := 0.5bp;
penVERT := 1.0bp;
penDOT := 3.0pt;            % Thickness of dots.
penDOTmid := 0.65penDOT;    % Thickness of interior of dots.
col1 := 0.55white;          % Axes.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis points.
p0 := (0,0);
p1 := p0+(a+10pt,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.top(btex $\strut x$ etex, p1);
label.urt(btex $f(x)$ etex, p2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% X-axis labels.
for i=1 upto nq+1:
    x1 := unitX/i;
    draw p0+(x1,0)--p0+(x1,-ht);
    draw p0+(-x1,0)--p0+(-x1,-ht);
    endfor
label.bot(btex \strut $1$ etex, p0+(unitX,-ht));
label.bot(btex \strut ${1\over2}$ etex, p0+(unitX/2,-ht));
label.bot(btex \strut ${1\over3}$ etex, p0+(unitX/3,-ht));
label.bot(btex \strut ${1\over4}$ etex, p0+(unitX/4,-ht));
label.bot(btex \strut ${1\over5}$ etex, p0+(unitX/5,-ht));

label.bot(btex \strut $\llap{$-{}$}1$ etex, p0+(-unitX,-ht));
label.bot(btex \strut $\llap{$-{}$}{1\over2}$ etex, p0+(-unitX/2,-ht));
label.bot(btex \strut $\llap{$-{}$}{1\over3}$ etex, p0+(-unitX/3,-ht));
label.bot(btex \strut $\llap{-}{1\over4}$ etex, p0+(-unitX/4,-ht));
label.bot(btex \strut $\hbox{-}\rlap{$1\over5$}$ etex, p0+(-unitX/5,-ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Y-axis labels.
for i=1 upto nq:
    draw p0+(0,i*unitY)--p0+(-ht,i*unitY);
    label.lft(decimal i infont "cmr10", p0+(-ht,i*unitY));
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the graph.
for i=1 upto nq:
    pickup pencircle scaled penLINE;
    draw (p0+(unitX/i,i*unitY))--(p0+(unitX/(i+1),i*unitY));
    draw (p0+(-unitX/i,i*unitY))--(p0+(-unitX/(i+1),i*unitY));

    pickup pencircle scaled penVERT;
    draw (p0+(unitX/i,i*unitY))--(p0+(unitX/i,(i-1)*unitY)) dashed withdots;
    draw (p0+(-unitX/i,i*unitY))--(p0+(-unitX/i,(i-1)*unitY)) dashed withdots;
    endfor

pickup pencircle scaled penVERT;
draw (p0+(unitX/(nq+1),nq*unitY))--(p0+(unitX/(nq+1),(nq+xt)*unitY))
    dashed withdots;
draw (p0+(-unitX/(nq+1),nq*unitY))--(p0+(-unitX/(nq+1),(nq+xt)*unitY))
    dashed withdots;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the vertices of the graph.
pickup pencircle scaled penDOT;
draw p0;
for i=1 upto nq:
    draw p0+(unitX/i,i*unitY);
    draw p0+(-unitX/i,i*unitY);
    endfor

for i=1 upto nq+1:
    pickup pencircle scaled penDOT;
    draw p0+(unitX/i,(i-1)*unitY);
    draw p0+(-unitX/i,(i-1)*unitY);

    pickup pencircle scaled (penDOTmid);
    draw p0+(unitX/i,(i-1)*unitY) withcolor white;
    draw p0+(-unitX/i,(i-1)*unitY) withcolor white;
    endfor

endfig;
end
