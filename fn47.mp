% tex/conc/mp/fn47.mp   2016-9-19   Alan U. Kennington.
% $Id: tex/conc/mp/fn47.mp 50cfd4c31b 2016-09-19 05:26:58Z Alan U. Kennington $
% Heaviside function multiplies by monomial.

beginfig(1);
pair zz[], p[];
color col[];

unit := 0.76cm;
a := 2.5unit;
aau := 1.55;
aa := 2.2unit;
b := a;
np := 2;               % Number of points on X axis.
nq := 2;               % Number of points on Y axis.
ht := a/45;
da := 2.4a;
penAXIS := 0.5pt;
penFN := 1.2pt;
penPT := 3.0bp;
col1 := 0.5white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Power 1.
zz0 := (0,0);
zz1 := (a+0.2unit,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.bot(btex $\strut x$ etex, zz1);
label.urt(btex $H(x)x^1$ etex, zz2);

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
pickup pencircle scaled penFN;
draw zz0--(-aa,0);
draw zz0--(aa,aa);
pickup pencircle scaled penPT;
draw zz0;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Power 0.
p0 := (-da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.bot(btex $\strut x$ etex, p1);
label.urt(btex $H(x)\equiv H(x)x^0$ etex, p2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    label.bot(decimal i, p0+(x1,0));
    if i <> 0:
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, p0+(0,y1));
    draw p0+(0,y1)--p0+(ht,y1);
    endfor

pickup pencircle scaled penFN;
draw (p0+(0,0))--(p0+(-a,0));
draw (p0+(0,unit))--(p0+(a,unit));
pickup pencircle scaled penPT;
draw p0+(0,0.5unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Power 2.
p0 := (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.bot(btex $\strut x$ etex, p1);
label.urt(btex $H(x)x^2$ etex, p2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    label.bot(decimal i, p0+(x1,0));
    if i <> 0:
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, p0+(0,y1));
    draw p0+(0,y1)--p0+(ht,y1);
    endfor

pickup pencircle scaled penFN;
draw (p0+(0,0))--(p0+(-a,0));
draw
for i=0 step 0.125 until aau:
    (p0+(i*unit,i*i*unit))..
    endfor
    (p0+(aau*unit,aau*aau*unit));
pickup pencircle scaled penPT;
draw p0;

endfig;
end
