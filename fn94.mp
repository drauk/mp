% tex/conc/mp/fn94.mp   2015-5-30   Alan U. Kennington.
% $Id: tex/conc/mp/fn94.mp b9fa2e45c0 2015-05-30 13:10:00Z Alan U. Kennington $
% Two mysterious functions defined in terms of cube roots.
% Task: Prove that the lower graph is bounded by the upper one.

verbatimtex
\input akmath
etex

beginfig(1);
pair p[], zz[], ww[];
color col[];

unitX := 1.0cm;
unitY := unitX;
nX := 10;
a := (nX + 0.5)*unitX;
b := 4.5unitY;
aa := 0.5unitY;
bb := 0.5unitY;
ht := 3pt;

penAXIS := 0.5bp;
penBDY := 0.5bp;
penPLOT := 0.5bp;
penDOT := 2.0pt;        % Thickness of dots.
col1 := 0.55white;      % Axes.
col2 := 0.70white;      % Row 0 coverage.
col3 := 0.80white;      % Row 1 coverage.
col4 := 0.90white;      % Row 2 coverage.

col12 := 0.50white;     % Row 0 coverage boundary.
col13 := 0.60white;     % Row 1 coverage boundary.
col14 := 0.70white;     % Row 2 coverage boundary.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis points.
p0 := (0,0);
p1 := p0+(a,0);
p2 := p0+(0,b);
p3 := p0+(-aa,0);
p4 := p0+(0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res := 40;
xmax := nX;
npts := xmax * res;
for i=0 upto npts:
    xx := i/res;
    yyTOP := ((1 + xx * xx)/2)**(1/3) + 2 * (((1+xx)/(1+xx*xx))**(1/3));
    zz[i] := (xx * unitX, yyTOP * unitY);
    yyBOT := 9 * (xx**(1/3))/(2+xx);
    ww[i] := (xx * unitX, yyBOT * unitY);
    endfor

pickup pencircle scaled penPLOT;
draw
for i=0 upto npts-1:
    zz[i]..
    endfor
    zz[npts];
draw
for i=0 upto npts-1:
    ww[i]..
    endfor
    ww[npts] withcolor (0,0,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1;
drawarrow p4--p2;
label.bot(btex\strut $a$ etex, p1+(2pt,0));
label.rt(btex\strut LHS (black). RHS (blue). $b=c=1$. etex, p2+(2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% X-axis labels.
pickup pencircle scaled penAXIS;
for k=1 upto nX:
    draw p0+(k*unitX,0)--p0+(k*unitX,-ht);
    label.bot(decimal k infont "cmr9", p0+(k*unitX,-ht));
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Y-axis labels.
pickup pencircle scaled penAXIS;
for k=1 upto 4:
    draw p0+(0,k*unitY)--p0+(-ht,k*unitY);
    label.lft(decimal k infont "cmr9", p0+(-ht,k*unitY));
    endfor

endfig;
end
