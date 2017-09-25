% tex/conc/mp/fn48.mp   2016-2-15   Alan U. Kennington.
% $Id: tex/conc/mp/fn48.mp 8bf61e31a6 2016-02-15 04:52:55Z Alan U. Kennington $
% Higher derivatives of partially defined real functions.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[], q[];
color col[];

unit := 0.6cm;
a := 2.4unit;
aau := 1.55;
aa := 2.2unit;
b := a;
np := 2;                % Number of points on X axis.
nq := 2;                % Number of points on Y axis.
ht := a/45;
da := 2.4a;

penAXIS := 0.5pt;
penGRAPH := 0.7pt;
penPT := 3.0pt;         % Thickness of dots.
penPTmid := 0.65*penPT; % Middles of dots.

col1 := 0.65white;
npp := 8;               % Points for parabolic curve.
ext := 0.55 unit;       % Extensions to sides of graphs.
extt := 0.7 unit;

sepA := 2pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 0th derivative.
zz0 := (0,0);
zz1 := (a+0.2unit,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.bot(btex $\strut x$ etex, zz1);
label.urt(btex $f(x)$ etex, zz2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    if i <> 0:
        label.bot(decimal i, (x1,0));
        draw (x1,0)--(x1,ht);
        fi
    endfor
for i=-nq step 1 until nq:
    y1 := i*unit;
    if i <> 0:
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1);
        fi
    endfor

% Draw the graph.
pickup pencircle scaled penGRAPH;
draw (zz0+(-2unit-ext,-unit-ext))--(zz0+(unit,2unit));
draw (zz0+(2unit,unit))--(zz0+(2unit+extt,unit));
for i=0 upto npp:
    xxx := 1 + i/npp;
    yyy := xxx * xxx - 4 * xxx + 5;
    q[i] := (xxx * unit, yyy * unit);
    endfor
draw
for i=0 upto npp-1:
    q[i]..
    endfor
    {dir 0}q[npp];

pickup pencircle scaled penPT;
draw (zz0+(unit,2unit));
draw (zz0+(2unit,unit));

label.bot(btex $\Domain(f)=\reals$ etex, zz4+(0,-sepA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 1st derivative.
p0 := zz0 + (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.bot(btex $\strut x$ etex, p1);
label.urt(btex $f'(x)$ etex, p2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    if i <> 0:
        label.bot(decimal i, p0+(x1,0));
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=-nq step 1 until nq:
    y1 := i*unit;
    if i <> 0:
        label.lft(decimal i, p0+(0,y1));
        draw p0+(0,y1)--p0+(ht,y1);
        fi
    endfor

pickup pencircle scaled penGRAPH;
draw (p0+(-2unit-ext,unit))--(p0+(unit,unit));
draw (p0+(unit,-2unit))--(p0+(2unit,0));
draw (p0+(2unit,0))--(p0+(2unit+extt,0));

pickup pencircle scaled penPT;
draw p0+(unit,unit);
draw p0+(unit,-2unit);
draw p0+(2unit,0);

pickup pencircle scaled penPTmid;
draw p0+(unit,unit) withcolor white;
draw p0+(unit,-2unit) withcolor white;

label.bot(btex $\Domain(f')=\reals\setminus\{1\}$ etex, p4+(-10pt,-sepA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 2nd derivative.
p0 := p0 + (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.bot(btex $\strut x$ etex, p1);
label.urt(btex $f''(x)$ etex, p2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    if i <> 0:
        label.bot(decimal i, p0+(x1,0));
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=-nq step 1 until nq:
    y1 := i*unit;
    if i <> 0:
        label.lft(decimal i, p0+(0,y1));
        draw p0+(0,y1)--p0+(ht,y1);
        fi
    endfor

pickup pencircle scaled penGRAPH;
draw (p0+(-2unit-ext,0))--(p0+(unit,0));
draw (p0+(unit,2unit))--(p0+(2unit,2unit));
draw (p0+(2unit,0))--(p0+(2unit+extt,0));

pickup pencircle scaled penPT;
draw p0+(unit,0);
draw p0+(unit,2unit);
draw p0+(2unit,0);
draw p0+(2unit,2unit);

pickup pencircle scaled penPTmid;
draw p0+(unit,0) withcolor white;
draw p0+(unit,2unit) withcolor white;
draw p0+(2unit,0) withcolor white;
draw p0+(2unit,2unit) withcolor white;

label.bot(btex $\Domain(f'')=\reals\setminus\{1,2\}$ etex, p4+(0,-sepA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 3rd derivative.
p0 := p0 + (da,0);
p1 := p0+(a+0.2unit,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.bot(btex $\strut x$ etex, p1);
label.urt(btex $f'''(x)$ etex, p2);

% Draw the graph.
for i=-np step 1 until np:
    x1 := i*unit;
    if i <> 0:
        label.bot(decimal i, p0+(x1,0));
        draw p0+(x1,0)--p0+(x1,ht);
        fi
    endfor
for i=-nq step 1 until nq:
    y1 := i*unit;
    if i <> 0:
        label.lft(decimal i, p0+(0,y1));
        draw p0+(0,y1)--p0+(ht,y1);
        fi
    endfor

pickup pencircle scaled penGRAPH;
draw (p0+(-2unit-ext,0))--(p0+(unit,0));
draw (p0+(unit,0))--(p0+(2unit,0));
draw (p0+(2unit,0))--(p0+(2unit+extt,0));

pickup pencircle scaled penPT;
draw p0+(unit,0);
draw p0+(2unit,0);

pickup pencircle scaled penPTmid;
draw p0+(unit,0) withcolor white;
draw p0+(2unit,0) withcolor white;

label.bot(btex $\Domain(f''')=\reals\setminus\{1,2\}$ etex, p4+(10pt,-sepA));

endfig;
end
