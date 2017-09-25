% tex/conc/mp/fn81.mp   2014-7-23   Alan U. Kennington.
% $Id: tex/conc/mp/fn81.mp 9362a319ee 2014-07-23 08:30:57Z Alan U. Kennington $
% Some fractional and integral powers of x.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol, gc;

gcol := 0.4white;   % Colour of axes.
gc := 0.55white;    % Colour of diagonal lines.
unit := 1.65cm;     % Unit length on axes.
a := 2.35 unit;
b := 1.7 unit;
r := 1;
R := 1.75 unit;
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/45;         % Notch length.

% penLN := 0.24pt;
penLN := 0.5pt;
penNOTCH := 0.5pt;
penASYM := 0.6pt;
penAXIS := 0.5pt;

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% The y = +- x curves.
pickup pencircle scaled penASYM;
draw (-R,-R)--(R,R) dashed (evenly scaled 0.95) withcolor gc;
draw (-R,R)--(R,-R) dashed (evenly scaled 0.95) withcolor gc;

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x$ etex, zz1);

label.ulft(btex $\llap{$f(x)={}$}-x$ etex, (-R,R)+(-2pt,0));
label.llft(btex $\llap{$f(x)={}$}x$ etex, (-R,-R)+(-2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 0.5.
np := 20;           % Number of points in graph.
factor := 2**0.5;
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**2;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

draw for i=np downto 1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
    (xx[np]*unit, -yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 0.25.
np := 20;           % Number of points in graph.
factor := 2**0.25;
for i=0 upto np:
    k := i * factor;
    xx[i] := (k/np)**4;
    yy[i] := k/np;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

draw for i=np downto 1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
    (xx[np]*unit, -yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 0.75.
np := 80;           % Number of points in graph.
factor := 2**0.75;
for i=0 upto np:
    k := i * factor;
    xx[i] := (k/np)**(4/3);
    yy[i] := k/np;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

draw for i=np downto 1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
    (xx[np]*unit, -yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i, (x1,-2pt));
        else:
            label.bot(decimal i, (x1,-2pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Some labels.
zz10 := (0.5unit,(0.5**0.75)*unit);
zz11 := (1.2unit,0.3unit);
pickup pencircle scaled penLN;
S_arrowspaces(zz11, zz10, 0pt, 0pt, 1, black);
label.rt(btex $\displaystyle \vert x\vert^{0.75}$ etex, zz11);
label.top(btex $\displaystyle \vert x\vert^{0.25}$ etex,
 (0.5unit,(0.5**0.25)*unit)+(1pt,-2.5pt));

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

label.urt(btex $\displaystyle f(x)=x^2$ etex,
 ((2**0.5)*unit,2unit));
label.rt(btex $\displaystyle f(x)=\vert x\vert^{0.25}$ etex,
 (2unit,(2**0.25)*unit)+(0,-2pt));
label.rt(btex $\displaystyle f(x)=\vert x\vert^{0.75}$ etex,
 (2unit,(2**0.75)*unit));

label.lrt(btex $\displaystyle f(x)=-x^2$ etex,
 ((2**0.5)*unit,-2unit));
label.rt(btex $\displaystyle f(x)=-\vert x\vert^{0.25}$ etex,
 (2*unit,-(2**0.25)*unit)+(0,2pt));
label.rt(btex $\displaystyle f(x)=-\vert x\vert^{0.75}$ etex,
 (2unit,-(2**0.75)*unit));

% setbounds currentpicture to pat1;

endfig;
end
