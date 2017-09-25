% tex/conc/mp/fn46.mp   2011-2-10   Alan U. Kennington.
% $Id: tex/conc/mp/fn46.mp 5de5d2ccad 2011-02-10 00:47:50Z Alan U. Kennington $
% Square functions.

verbatimtex \input akmath etex

beginfig(1);
pair zz[], p[];

unit := 1.25cm;
a := 2.5unit;
b := 1.5unit;
np := 2;               % Number of points on X axis.
nq := 1;               % Number of points on Y axis.
ht := a/35;
da := 2.4a;
th := 0.5pt;
thh := 0.9pt;
thhh := 3.5thh;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The floor function.
zz0 := (0,0);
zz1 := (a+0.2unit,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled th;
drawarrow zz3--zz1 withcolor 0.6white;
drawarrow zz4--zz2 withcolor 0.6white;
label.lrt(btex $x$ etex, zz1);
label.top(btex $\floor(x/a)-2\floor(x/(2a))$ etex, zz2);

% Notches.
draw (unit,0)--(unit,ht) withcolor 0.6white;
draw (-unit,0)--(-unit,ht) withcolor 0.6white;

for i=-np upto np:
    draw zz0+(i*unit,0)--zz0+(i*unit,unit) dashed evenly withcolor 0.6white;
    endfor

% Draw the graph.
for i=-np upto np-1:
    pickup pencircle scaled thh;
    if odd(abs(i)):
        draw (zz0+(i*unit,unit))--(zz0+((i+1)*unit,unit));
        pickup pencircle scaled thhh;
        draw zz0+(i*unit,unit);
    else:
        draw (zz0+(i*unit,0))--(zz0+((i+1)*unit,0));
        pickup pencircle scaled thhh;
        draw zz0+(i*unit,0);
        fi
    endfor
pickup pencircle scaled thh;
draw (zz0+(np*unit,0))--(zz0+((np+0.5)*unit,0unit));
draw (zz0+(-(np+0.5)*unit,unit))--(zz0+(-np*unit,unit));

pickup pencircle scaled thhh;
draw zz0+(np*unit,0);

label.bot(btex $\strut 0$ etex, zz0);
label.bot(btex $\strut a$ etex, zz0+(unit,0));
label.bot(btex $\strut 2a$ etex, zz0+(2unit,0));
label.bot(btex $\strut -a$ etex, zz0+(-unit,0));
label.bot(btex $\strut -2a$ etex, zz0+(-2unit,0));

label.rt(btex $a$ etex, zz0+(0,unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The ceiling function.
p0 := (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,0);

% Draw the axes.
pickup pencircle scaled th;
drawarrow p3--p1 withcolor 0.6white;
drawarrow p4--p2 withcolor 0.6white;
label.lrt(btex $x$ etex, p1);
label.top(btex $2\ceiling(x/(2a))-\ceiling(x/a)$ etex, p2);

% Notches.
draw p0+(unit,0)--p0+(unit,ht) withcolor 0.6white;
draw p0+(-unit,0)--p0+(-unit,ht) withcolor 0.6white;

for i=-np upto np:
    draw p0+(i*unit,0)--p0+(i*unit,unit) dashed evenly withcolor 0.6white;
    endfor

% Draw the graph.
for i=-np upto np-1:
    pickup pencircle scaled thh;
    if not odd(abs(i)):
        draw (p0+(i*unit,unit))--(p0+((i+1)*unit,unit));
        pickup pencircle scaled thhh;
        draw p0+(i*unit,0);
    else:
        draw (p0+(i*unit,0))--(p0+((i+1)*unit,0));
        pickup pencircle scaled thhh;
        draw p0+(i*unit,unit);
        fi
    endfor
pickup pencircle scaled thh;
draw (p0+(np*unit,unit))--(p0+((np+0.5)*unit,unit));
draw (p0+(-(np+0.5)*unit,0unit))--(p0+(-np*unit,0unit));

pickup pencircle scaled thhh;
draw p0+(np*unit,0);

label.bot(btex $\strut 0$ etex, p0);
label.bot(btex $\strut a$ etex, p0+(unit,0));
label.bot(btex $\strut 2a$ etex, p0+(2unit,0));
label.bot(btex $\strut -a$ etex, p0+(-unit,0));
label.bot(btex $\strut -2a$ etex, p0+(-2unit,0));

label.lft(btex $a$ etex, p0+(0pt,unit));

endfig;
end
