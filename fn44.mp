% tex/conc/mp/fn44.mp   2013-11-17   Alan U. Kennington.
% $Id: tex/conc/mp/fn44.mp 1e54fe8f30 2013-11-17 13:33:18Z Alan U. Kennington $
% Binary modulus functions.

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
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.lrt(btex $x$ etex, zz1);
label.urt(btex $x\bmod m$ etex, zz2);

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

label.bot(btex $\strut 0$ etex, zz0);
label.bot(btex $\strut m$ etex, zz0+(unit,0));
label.bot(btex $\strut 2m$ etex, zz0+(2unit,0));
label.bot(btex $\strut -m$ etex, zz0+(-unit,0));
label.bot(btex $\strut -2m$ etex, zz0+(-2unit,0));

label.rt(btex $m$ etex, zz0+(ht,unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% ((x+m) mod (2m)) - m.
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
label.urt(btex $(x+m)\bmod 2m - m$ etex, p2);

% Notches.
draw p0+(0,unit)--p0+(-ht,unit);
label.ulft(btex $m$ etex, p0+(-ht,unit));
draw p0+(0,-unit)--p0+(ht,-unit);
label.lrt(btex $-m$ etex, p0+(ht,-unit));

draw p0+(unit,0)--p0+(unit,-ht);
draw p0+(-unit,0)--p0+(-unit,-ht);

% Draw the graph.
for i=-np upto np-1:
    p10 := p0+(i*unit,0);
    if odd(abs(i)):
        p10 := p10 + (0,-unit);
        fi
    p11 := p10 + (unit,unit);
    pickup pencircle scaled thh;
    draw p10--p11;
    pickup pencircle scaled thhh;
    if odd(abs(i)):
        draw p10;
        fi
    endfor
pickup pencircle scaled thh;
draw (p0+(np*unit,0))--(p0+((np+0.5)*unit,0.5unit));
draw (p0+(-(np+0.5)*unit,-0.5unit))--(p0+(-np*unit,0));

label.ulft(btex $\strut 0$ etex, p0);
label.top(btex $\strut m$ etex, p0+(unit,0));
label.ulft(btex $\strut 2m$ etex, p0+(2unit,0));
label.top(btex $\strut \llap{${}-{}$}m$ etex, p0+(-unit,0));
label.ulft(btex $\strut\relax -2m$ etex, p0+(-2unit,0));

% label.rt(btex $a$ etex, p0+(ht,unit));

endfig;
end
