% tex/conc/mp/fn38.mp   2007-1-27   Alan Kennington.
% $Id: tex/conc/mp/fn38.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Absolute value and sign function graphs.

beginfig(1);
pair zz[], p[];

unit := 0.8cm;
a := 3.5unit;
b := a;
np := 3;               % Number of points on X axis.
nq := 3;               % Number of points on Y axis.
ht := a/45;
da := 2.4a;
th := 0.5pt;
thh := 0.9pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The floor function.
zz0 := (0,0);
zz1 := (a+0.2unit,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled th;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.lrt(btex $x$ etex, zz1);
label.urt(btex $\vert x\vert$ etex, zz2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    label.bot(decimal i, (x1,0));
    if i <> 0:
        draw (x1,0)--(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, (0,y1));
    draw (0,y1)--(ht,y1);
    endfor

% Draw the graph.
pickup pencircle scaled thh;
draw zz0--(-a,a);
draw zz0--(a,a);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The ceiling function.
p0 := (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-1.2unit);

% Draw the axes.
pickup pencircle scaled th;
drawarrow p3--p1;
drawarrow p4--p2;
label.lrt(btex $x$ etex, p1);
label.urt(btex ${\rm sign}(x)$ etex, p2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    if i <> 0:
        label.bot(decimal i, p0+(x1,0));
        fi
    if i <> 0:
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, p0+(0,y1));
    draw p0+(0,y1)--p0+(ht,y1);
    endfor
for i=-1 step 1 until -1:
    y1 := i*unit;
    label.rt(decimal i, p0+(0,y1));
%    draw p0+(0,y1)--p0+(ht,y1);
    endfor

pickup pencircle scaled thh;
draw (p0+(0,-unit))--(p0+(-a,-unit));
draw (p0+(0,unit))--(p0+(a,unit));
pickup pencircle scaled (3.5thh);
draw p0;

endfig;
end
