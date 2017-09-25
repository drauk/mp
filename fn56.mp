% tex/conc/mp/fn56.mp   2015-9-27   Alan U. Kennington.
% $Id: tex/conc/mp/fn56.mp 8d726f3de1 2015-09-27 12:26:31Z Alan U. Kennington $
% Fractional-part and rounding functions.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[];

unit := 7.5mm;
np := 3;               % Number of points on X axis.
nq := 1;               % Number of points on Y axis.
a := (np+1)*unit;
b := 0.8a;
ht := a/35;
da := 2.4a;
th := 0.5pt;
% thh := 0.9pt;
thh := 0.5bp;
thhh := 3pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The fractional part function.
zz0 := (0,0);
zz1 := (a+0.2unit,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled th;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.urt(btex $x$ etex, zz1);
label.urt(btex $\fracpart(x)$ etex, zz2);

% Notches.
for i=1 step 1 until nq:
    y1 := i*unit;
%    label.rt(decimal i, (ht,y1));
    draw (0,y1)--(ht,y1);
    endfor

% Draw the graph.
for i=-np upto np-1:
    pickup pencircle scaled thh;
    draw (zz0+(i*unit,0))--(zz0+((i+1)*unit,unit));

    pickup pencircle scaled thhh;
    draw zz0+(i*unit,0);
    endfor
pickup pencircle scaled thh;
draw (zz0+(np*unit,0))--(zz0+((np+0.5)*unit,0.5unit));
draw (zz0+(-(np+0.5)*unit,0.5unit))--(zz0+(-np*unit,unit));

pickup pencircle scaled thhh;
draw zz0+(np*unit,0);

for i = -np upto np:
    label.bot(decimal i, zz0+(i*unit,-ht));
    endfor
label.urt(decimal 1, zz0+(ht,unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The rounding function.
unit := 7.5mm;
np := 5;               % Number of points on X axis.
nq := 4;               % Number of points on Y axis.
a := (np+1)*unit;
b := 0.8a;
ht := a/45;
da := 5.6cm;

p0 := (da,0);
p1 := p0+(a,0);
p2 := p0+(0,b);
% This is clever, but _very_ confusing!
p0 = 0.8[p1,p3] = 1.0[p2,p4];

% Draw the axes.
pickup pencircle scaled 0.5bp; % See page 39, MetaPost manual.
drawarrow p3--p1;
drawarrow p4--p2;
label.urt(btex $x$ etex, p1);
label.urt(btex $\round(x)$ etex, p2);

% Draw the graph.
for i=-1 step 1 until np+1:
    x1 := i*unit;
    x2 := (i-0.5)*unit;
    if (i > -1) and (i <> np+1):
        draw p0+(x2,x1-unit)--p0+(x2,x1) dashed evenly;
        fi
    if i <> np+1:
        draw p0+(x2,x1)--p0+(x2+unit,x1) withpen pencircle;
        fi
    if (i > 0):
        if (i <= np):
            makelabel(nullpicture, p0+(x2,x1));
            fi
    else:
        if (i > -1):
            makelabel(nullpicture, p0+(x2,x1-unit));
            fi
        fi
    if i <= np:
        label.bot(decimal i, p0+(x1,0));
        fi
    if (i <> 0) and (i <= np):
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=1 step 1 until nq:
    y1 := i*unit;
    label.lft(decimal i, p0+(0,y1));
    draw p0+(0,y1)--p0+(ht,y1);
    endfor

endfig;
end
