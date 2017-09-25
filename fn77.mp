% tex/conc/mp/fn77.mp   2017-1-25   Alan U. Kennington.
% $Id: tex/conc/mp/fn77.mp 3983b3269e 2017-01-25 07:35:03Z Alan U. Kennington $
% Discontinuous function satisfying
% $\forall S\in\powerset(Y),\,\Int(S)\subseteq f(\Int(f^{-1}(S)))$.

\input centmax
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], midpt;
color col[];

unitX := 1.0cm;
unitY := 1.0cm;
a := 2.1unitX;
b := 2.35unitY;
bb := 0.5unitY;
ht := 3pt;

penAXIS := 0.5bp;
penPLOT := 0.5bp;
penDOT := 3.0pt;        % Thickness of dots.
col1 := 0.55white;      % Axes.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis points.
p0 := (0,0);
p1 := p0+(a+20pt,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-bb);
midpt := p0;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.top(btex $\strut X=\reals$ etex, p1+(2pt,0));
label.rt(btex $Y=\realsge$ etex, p2+(2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% X-axis labels.
pickup pencircle scaled penAXIS;
for k=-2 upto 2:
    if k <> 0:
        draw p0+(k*unitX,0)--p0+(k*unitX,-ht);
        fi
    endfor
label.bot(btex \strut $1$ etex, p0+(1*unitX,-ht));
label.bot(btex \strut $2$ etex, p0+(2*unitX,-ht));
label.bot(btex \strut $\llap{$-{}$}1$ etex, p0+(-1*unitX,-ht));
label.bot(btex \strut $\llap{$-{}$}2$ etex, p0+(-2*unitX,-ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Y-axis labels.
pickup pencircle scaled penAXIS;
y1 := 2*unitY;
draw p0+(0,y1)--p0+(-ht,y1);
label.lft(btex \strut $2$ etex, p0+(-ht,y1));

y1 := 1*unitY;
draw p0+(0,y1)--p0+(-ht,y1);
label.lft(btex \strut $1$ etex, p0+(-ht,y1));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the graph.
pickup pencircle scaled penPLOT;
draw p0--(p0+(a,a));
draw p0--(p0+(-a,a));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penDOT;
draw p0+(-1*unitX,1*unitY);
draw p0+(-1*unitX,2*unitY);

pickup pencircle scaled (0.65*penDOT);
draw p0+(-1*unitX,1*unitY) withcolor white;

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
