% tex/conc/mp/fn4.mp   2007-9-30   Alan Kennington.
% $Id: tex/conc/mp/fn4.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Graph of function f(x) = x exp((1-x^2)/2).

verbatimtex \input akmath etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol, gc;

gcol = 0.35white;    % Colour of axes.
gc = 0.65white;      % Colour of diagnoal lines.
unit := 1.35cm;      % Unit length on axes.
a := 3.35 unit;
b := 1.28 unit;
r := 1;
R := 1.0 unit;
np := 50;           % Number of points in graph.
nq := 3;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/25;         % Notch length.
xmax := 3.2;        % X-extent of graph.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled 0.7pt;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $t$ etex, zz1);
label.urt(btex $\displaystyle g(t)=te^{(1-t^2)/2}$ etex, zz2);

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i, (x1+2pt,-ht-2.5pt));
        else:
            label.top(decimal i, (x1-4pt,ht+2.5pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Calculate the points. mexp() means exp(x/256).
for i=0 upto np:
    xx[i] := (i*xmax)/np;
    yy[i] := xx[i] * mexp((1-xx[i] * xx[i]) * 128);
    endfor

% Draw the graph.
penx := 0.5pt;
pickup pencircle scaled penx;
draw for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);

draw for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

endfig;
end
