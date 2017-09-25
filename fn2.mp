% tex/conc/mp/fn2.mp   2014-7-29   Alan U. Kennington.
% $Id: tex/conc/mp/fn2.mp f88dfe8119 2014-07-28 14:44:15Z Alan U. Kennington $
% Graph: arctan, arcsin, arccos.

beginfig(1);
pair zz[];

pi := 3.14159265358979;
s := 0.9cm;       % Global scale factor.

% Dimensions of the axes.
np := 6;
a  := (np + 1) * s;
aa := (np + 1) * s;
b  := 4 * s;
bb := 2.4 * s;
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);
unit := s;
ht := s/8;
penLN := 0.5bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw axes with labels.
pickup pencircle scaled penLN;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.llft(btex $\strut x$ etex, zz1+(-2pt,0pt));
label.lrt(btex $y$ etex, zz2+(2pt,-2pt));

% Draw the X-axis notches.
for i = -np step 1 until np:
    x1 := i * unit;
    if i <> 0:
        draw (x1,0)--(x1,ht);
        label.bot(decimal i, (x1,0));
        fi
    endfor

% Draw the Y-axis notches.
y1 := 0;
label.ulft(btex $0$ etex, (0,y1));

y1 := pi/2 * s;
draw (0,y1)--(ht,y1);
label.llft(btex $\pi/2$ etex, (0,y1));

y1 := pi * s;
draw (0,y1)--(ht,y1);
label.lft(btex $\pi$ etex, (0,y1));

y1 := -pi/2 * s;
draw (0,y1)--(ht,y1);
label.lrt(btex $-\pi/2$ etex, (0,y1));

% Asymptotes for the atan function.
drawdblarrow (-a,pi/2 * s)--(a,pi/2 * s) dashed evenly;
drawdblarrow (-a,-pi/2 * s)--(a,-pi/2 * s) dashed evenly;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arctangent function.
pair t[];
nt := 11;
for i=-nt upto nt:
    y1 := (i/(nt+1.1)) * 90;
    t[i] := (sind(y1)/cosd(y1) * s, y1 * (pi/180) * s);
    endfor
pickup pencircle scaled penLN;
draw for i:=-nt upto nt-1:
    t[i]..
    endfor
    t[nt];
label(btex ${\rm atan}(x)$ etex, (6*s,(pi/3)*s));
label(btex ${\rm atan}(x)$ etex, (-6*s,-(pi/3)*s));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arcsin function.
nt := 8;
for i=-nt upto nt:
    y1 := (i/nt) * 90;
    t[i] := (sind(y1) * s, y1 * (pi/180) * s);
    endfor
pickup pencircle scaled penLN;
draw for i:=-nt upto nt-1:
    t[i]..
    endfor
    t[nt];
pickup pencircle scaled penPT;
draw (s,pi/2 * s);
draw (-s,-pi/2 * s);
label.top(btex ${\rm asin}(x)$ etex, (s,pi/2 * s));
label.bot(btex ${\rm asin}(x)$ etex, (-s,-pi/2 * s));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arccos function.
nt := 8;
for i=0 upto nt * 2:
    y1 := (i/nt) * 90;
    t[i] := (cosd(y1) * s, y1 * (pi/180) * s);
    endfor
pickup pencircle scaled penLN;
draw for i:=0 upto nt * 2 - 1:
    t[i]..
    endfor
    t[nt * 2];
pickup pencircle scaled penPT;
draw (s,0);
draw (-s,pi * s);
label.top(btex ${\rm acos}(x)$ etex, (-s,pi * s));

endfig;
end
