% tex/conc/mp/fn87.mp   2014-10-19   Alan U. Kennington.
% $Id: tex/conc/mp/fn87.mp a93c26a28f 2014-10-19 07:12:35Z Alan U. Kennington $
% Graph: (1 + x/(1+|x|))/2.

verbatimtex
\input akmath
etex

beginfig(1);
pair t[], zz[];

unit := 1.2cm;

% Dimensions of the axes.
np := 5;
a  := (np + 0.5) * unit;
aa := (np + 0.5) * unit;
b  := 1.5 unit;
bb := 0 unit;
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);
ht := 3bp;
penLN := 0.5bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw axes with labels.
pickup pencircle scaled penLN;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.ulft(btex $\strut x\in\rats$ etex, zz1+(0pt,0pt));
label.rt(btex $(1+x/(1+\vert x\vert))/2\in\rats(0,1)$ etex, zz2+(3pt,0pt));

% X-axis notches/labels.
for i = -np step 1 until np:
    x1 := i * unit;
        draw (x1,0)--(x1,-ht);
        label.bot(decimal i infont "cmr9", (x1,-ht-2pt));
    endfor

% Y-axis label.
y1 := unit;
label.ulft(btex $1$ etex, (0,y1));

% Asymptote.
drawdblarrow (-aa,unit)--(a,unit) dashed evenly;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the function.
nt := 40;
for i=-nt upto nt:
    xA := (np + 0.5) * (i/nt);
    yA := (1 + xA/(1 + abs(xA)))/2;
    t[i] := (xA, yA) * unit;
    endfor
pickup pencircle scaled penLN;
draw for i:=-nt upto nt-1:
    t[i]..
    endfor
    t[nt];

endfig;
end
