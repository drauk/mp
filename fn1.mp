% tex/conc/mp/fn1.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/fn1.mp 800da2fdb3 2012-07-19 07:54:52Z Alan U. Kennington $
% Floor and ceiling graphs.

beginfig(1);
pair zz[], p[];

a := 1.8in;
b := 0.8a;
np := 5;               % Number of points on X axis.
nq := 4;               % Number of points on Y axis.
unit := a/(np+1);
ht := a/45;
da := 2.7in;
penLN := 0.5bp;
penPT := 2.5bp;
% penTH := 1.0bp;
penTH := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The floor function.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-0.25a,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.lrt(btex $x$ etex, zz1);
label.urt(btex ${\rm floor}(x)$ etex, zz2);

% Draw the graph.
for i=-1 step 1 until np:
    x1 := i*unit;
    if i <> np:
        pickup pencircle scaled penTH;
        draw (x1,x1)--(x1+unit,x1);
        pickup pencircle scaled penLN;
        draw (x1+unit,x1)--(x1+unit,x1+unit) dashed evenly;
        fi
    pickup pencircle scaled penPT;
    draw (x1,x1);
    if i <> 0:
        label.bot(decimal i, (x1,0));
        pickup pencircle scaled penLN;
        draw (x1,0)--(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, (0,y1));
    pickup pencircle scaled penLN;
    draw (0,y1)--(ht,y1);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The ceiling function.
p0 := (da,0);
p1 := p0+(a,0);
p2 := p0+(0,b);
% This is clever, but _very_ confusing!
p0 = 0.8[p1,p3] = 1.0[p2,p4];

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow p3--p1;
drawarrow p4--p2;
label.lrt(btex $x$ etex, p1);
label.urt(btex ${\rm ceiling}(x)$ etex, p2);

% Draw the graph.
for i=-1 step 1 until np:
    x1 := i*unit;
    if i <> np:
        pickup pencircle scaled penLN;
        draw p0+(x1,x1)--p0+(x1,x1+unit) dashed evenly;
        pickup pencircle scaled penTH;
        draw p0+(x1,x1+unit)--p0+(x1+unit,x1+unit);
        fi
    pickup pencircle scaled penPT;
    draw p0+(x1,x1);
    if i <> -1:
        label.bot(decimal i, p0+(x1,0));
        fi
    if i <> 0:
        pickup pencircle scaled penLN;
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, p0+(0,y1));
    pickup pencircle scaled penLN;
    draw p0+(0,y1)--p0+(ht,y1);
    endfor

endfig;
end
