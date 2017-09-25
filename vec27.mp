% tex/conc/mp/vec27.mp   2015-4-11   Alan U. Kennington.
% $Id: tex/conc/mp/vec27.mp dfbbcc9d65 2015-04-11 14:55:45Z Alan U. Kennington $
% Commutativity of derivatives of a family of curves in a manifold.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], v[], w[][];
color col[];

unit := 1.5cm;
aa := 3unit;
bb := 2unit;
mm := 10;
nn := 10;
kA := 1;
kB := 1;
kC := 1;
kD := 1;
kE := 1;

penARROW := 0.5bp;
penDOT := 2.5bp;
penGRID := 0.5bp;
penLINE := 0.5bp;

v1 := (aa, 0.1bb);
v2 := (0.1aa, bb);
v3 := (0, 0.08bb);
v4 := (0.06aa, 0);
v5 := (0.2aa, 0.2bb);

v20 := (1.4 * xpart(v1), 0);

p0 := (0,0);
p1 := p0 + v1;
p2 := p0 + v2;
p20 := p0 + v20;
p21 := p20 + v1;
p22 := p20 + v2;

spX := 2pt;

col1 := 0.85white;
col2 := 0.65white;
col3 := 0.40white;
col4 := black;

%==============================================================================
% Left hand diagram.
for i=0 upto mm:
    s := i/mm;
    for j=0 upto nn:
        t := j/nn;
        w[i][j] := p0 + kA*s*v1 + kB*t*v2 + kC*s*s*v3 + kD*t*t*v4 + kE*s*t*v5;
        pickup pencircle scaled penDOT;
%        draw w[i][j];
        endfor
    endfor

pickup pencircle scaled penGRID;
for i=0 upto mm:
    draw w[i][0]
    for j=1 upto nn:
        --w[i][j]
        endfor
        withcolor col1;
    endfor
for j=0 upto nn:
    draw w[0][j]
    for i=1 upto mm:
        --w[i][j]
        endfor
        withcolor col1;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penGRID;
for i=0 upto mm:
    s := i/mm;
    drawarrow (p0+s*v1)--(p0+s*v1+v2) withcolor col2;
    endfor
for i=0 upto mm:
    s := i/mm;
    drawarrow (p0+s*v1)--w[i][nn] withcolor col3;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
drawarrow (p0+v1+v2)--w[mm][nn] withcolor col4;
label.ulft(btex $\partial_sY(s,0)\restrict{s=0}$ etex, w[mm][nn]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLINE;
drawarrow p0--p1;
drawarrow p0--p2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex $\gamma(0,0)$ etex, p0);
% label.bot(btex $X(0,0)=\partial_s\gamma(s,0)\restrict{s=0}$ etex, p0+v1);
% label.ulft(btex $Y(0,0)=\partial_t\gamma(0,t)\restrict{t=0}$ etex, p0+v2);
% label.bot(btex $X(0,0)$ etex, p0+v1+(0,-spX));
label.top(btex $Y(0,0)$ etex, p0+v2);

%==============================================================================
% Right hand diagram.
for i=0 upto mm:
    s := i/mm;
    for j=0 upto nn:
        t := j/nn;
        w[i][j] := p20 + kA*s*v1 + kB*t*v2 + kC*s*s*v3 + kD*t*t*v4 + kE*s*t*v5;
        pickup pencircle scaled penDOT;
%        draw w[i][j];
        endfor
    endfor

pickup pencircle scaled penGRID;
for i=0 upto mm:
    draw w[i][0]
    for j=1 upto nn:
        --w[i][j]
        endfor
        withcolor col1;
    endfor
for j=0 upto nn:
    draw w[0][j]
    for i=1 upto mm:
        --w[i][j]
        endfor
        withcolor col1;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penGRID;
for j=0 upto nn:
    t := j/nn;
    drawarrow (p20+t*v2)--(p20+t*v2+v1) withcolor col2;
    endfor
for j=0 upto nn:
    t := j/nn;
    drawarrow (p20+t*v2)--w[mm][j] withcolor col3;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
drawarrow (p20+v1+v2)--w[mm][nn] withcolor col4;
label.ulft(btex $\partial_tX(0,t)\restrict{t=0}$ etex, w[mm][nn]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLINE;
drawarrow p20--p21;
drawarrow p20--p22;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex $\gamma(0,0)$ etex, p20);
% label.bot(btex $X(0,0)=\partial_s\gamma(s,0)\restrict{s=0}$ etex, p20+v1);
% label.ulft(btex $Y(0,0)=\partial_t\gamma(0,t)\restrict{t=0}$ etex, p20+v2);
label.bot(btex $X(0,0)$ etex, p20+v1+(0,-spX));
% label.top(btex $Y(0,0)$ etex, p20+v2);

endfig;
end
