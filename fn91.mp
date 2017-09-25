% tex/conc/mp/fn91.mp   2015-3-6   Alan U. Kennington.
% $Id: tex/conc/mp/fn91.mp 91a3a28a89 2015-03-06 03:21:08Z Alan U. Kennington $
% Enumeration of gradient pairs for double shadow set procedure.

verbatimtex
\input akmath
etex

beginfig(1);
pair p[], zz[][];
color col[];

unitX := 1.0cm;
unitY := unitX;
a := 4.5unitX;
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
% Draw the graph.
pickup pencircle scaled penPLOT;
draw p0--(p0+(a,a)) withcolor col1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the (lambda, Lambda) pairs.
nrows := 3;             % How many rows to plot.
k := 0;                 % Enumeration index.
jmax := 1;              % Number of points in each row.
q := 1;                 % Quotient for point coordinates.
for row=0 upto nrows-1:
    for j=1 upto jmax:
        xPT := j/q;
        yPT := (j+1)/q;
        zz[row][j] := p0 + (xPT*unitX, yPT*unitY);
        k := k + 1;
        endfor
    q := q * 2;
    jmax := jmax * 4;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Shading for the covered (lambda, Lambda) pairs.
nrows := 3;             % How many rows to plot.
yPLOT := b;
for row=nrows-1 downto 0:
    jmax := 2 ** (2*row);
    for j=1 upto jmax:
        p10 := zz[row][j];
        p11 := (0, ypart(p10));
        p12 := (0, yPLOT);
        p13 := (xpart(p10), yPLOT);
        pickup pencircle scaled penPLOT;
        fill p10--p11--p12--p13--cycle withcolor col[row+2];
        pickup pencircle scaled penBDY;
        draw p11--p10--p13 withcolor col[row+12];
        endfor
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw and label the dots.
pickup pencircle scaled penDOT;
nrows := 3;             % How many rows to plot.
k := 0;                 % Enumeration index.
jmax := 1;              % Number of points in each row.
for row=0 upto nrows-1:
    for j=1 upto jmax:
        draw zz[row][j];
        if row = 0:
            label.ulft(btex $\scriptstyle i=0$ etex, zz[row][j]);
            fi
        if row = 1:
            label.ulft(decimal k infont "cmr7", zz[row][j]);
            fi
        if row = 2:
            label.lrt(decimal k infont "cmr5", zz[row][j]);
            fi
        k := k + 1;
        endfor
    jmax := jmax * 4;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1;
drawarrow p4--p2;
label.bot(btex\strut $\lambda\rlap{${}<c_1(i)$}$ etex, p1+(2pt,0));
label.lft(btex\strut $c_2(i)<\Lambda$ etex, p2+(-2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% X-axis labels.
pickup pencircle scaled penAXIS;
for k=1 upto 4:
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
