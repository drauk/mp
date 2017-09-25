% tex/conc/mp/fn45.mp   2011-2-10   Alan U. Kennington.
% $Id: tex/conc/mp/fn45.mp 5de5d2ccad 2011-02-10 00:47:50Z Alan U. Kennington $
% Sawtooth functions.

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
label.top(btex $\vert(x+a)\bmod2a-a\vert$ etex, zz2);

% Notches.
for i=1 step 1 until nq:
    y1 := i*unit;
    draw (0,y1)--(ht,y1);
    endfor
draw (unit,0)--(unit,ht);
draw (-unit,0)--(-unit,ht);

% Draw the graph.
pickup pencircle scaled thh;
draw (zz0+(-(np+0.5)*unit,0.5unit))--
for i=-np upto np:
    if odd(abs(i)):
        (zz0+(i*unit,unit))--
    else:
        (zz0+(i*unit,0))--
        fi
    endfor
    (zz0+((np+0.5)*unit,0.5unit));

pickup pencircle scaled thhh;

label.bot(btex $\strut 0$ etex, zz0);
label.bot(btex $\strut a$ etex, zz0+(unit,0));
label.bot(btex $\strut 2a$ etex, zz0+(2unit,0));
label.bot(btex $\strut -a$ etex, zz0+(-unit,0));
label.bot(btex $\strut -2a$ etex, zz0+(-2unit,0));

label.rt(btex $a$ etex, zz0+(ht,unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The ceiling function.
p0 := (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,0.7b);
p3 := p0+(-a,0);
p4 := p0+(0,-0.6b);

% Draw the axes.
pickup pencircle scaled th;
drawarrow p3--p1;
drawarrow p4--p2;
label.lrt(btex $x$ etex, p1);
label.top(btex $\vert(x+3a)\bmod4a-2a\vert-a$ etex, p0+(0,b));

% Notches.
draw p0+(0,0.5unit)--p0+(-ht,0.5unit);
label.ulft(btex $a$ etex, p0+(-ht,0.5unit));
draw p0+(0,-0.5unit)--p0+(ht,-0.5unit);
label.lrt(btex $-a$ etex, p0+(ht,-0.5unit));

for i=-2np upto 2np:
    if i <> 0:
        draw p0+(i*unit/2,0)--p0+(i*unit/2,ht);
        fi
    endfor

% Draw the graph.
pickup pencircle scaled thh;
draw
for i=-np upto np:
    if odd(abs(i)):
        p0+((i-0.5)*unit,0.5unit)--
    else:
        p0+((i-0.5)*unit,-0.5unit)--
        fi
    endfor
    p0+((np+0.5)*unit,0.5unit);

% label.ulft(btex $\strut 0$ etex, p0);
label.top(btex $\strut 2\rlap{$a$}$ etex, p0+(unit,0));
label.top(btex $\strut \llap{$4$}a$ etex, p0+(2unit,0));
label.urt(btex $\strut \llap{$-{}$}2a$ etex, p0+(-unit,0));
label.top(btex $\strut\llap{$-4$}a$ etex, p0+(-2unit,0));

dc := 2.5pt;
label.bot(btex $\strut a$ etex, p0+(0.5unit,dc));
label.bot(btex $\strut 3a$ etex, p0+(1.5unit,dc));
label.bot(btex $\strut\llap{$-$}a$ etex, p0+(-0.5unit,dc));
label.bot(btex $\strut\llap{$-3$}a$ etex, p0+(-1.5unit,dc));

endfig;
end
