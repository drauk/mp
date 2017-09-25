% tex/conc/mp/fn32.mp   2015-9-1   Alan U. Kennington.
% $Id: tex/conc/mp/fn32.mp 93e440b87e 2015-09-01 11:32:28Z Alan U. Kennington $
% Graph of a C^{0,1} manifold.

verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol;

gcol = 0.6white;    % Colour of axes.
unit := 1.65cm;     % Unit length on axes.
a := 2.35 unit;
ax := 3.35 unit;
b := 2.2 unit;
r := 1;
R := 2.1;
nq := 2;            % Number of notches on X axes.
nqx := 3;           % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.

aa := 0.4;          % Beta value.
aaa := 0.8;         % Beta value.
penPROJ := 0.4bp;
penLN := 0.5bp;
penPT := 2.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-ax,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x_1$ etex, zz1);

% The beta = 0 curve.
pickup pencircle scaled penLN;
draw (0,0)--(R*unit,R*unit);
draw (-R*unit,R*unit)--(0,0);

label.rt(btex $M$ etex, (R*unit,R*unit));
label.lft(btex $M$ etex, (-R*unit,R*unit));

% Add some notches.
pickup pencircle scaled penLN;
for i=-nqx step 1 until nq:
    x1 := i * unit;
    label.bot(decimal i, (x1,-ht-2.5pt));
    draw (x1,0)--(x1,-ht) withcolor gcol;
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    label.lft(decimal i, (0,y1));
    pickup pencircle scaled penLN;
    draw (0,y1)--(ht,y1) withcolor gcol;

    % Projection map arrows. Beta = 0.
    pickup pencircle scaled penPROJ;
    drawarrow (y1,y1)--(y1,0) dashed evenly;
    drawarrow (-y1,y1)--(-y1,0) dashed evenly;

    % Projection map arrows. Beta = 0.4.
    drawarrow (y1,y1)--(y1*(1-aa),0);
    drawarrow (-y1,y1)--(-y1*(1+aa),0);

    % Projection map arrows. Beta = 0.8.
    drawarrow (y1,y1)--(y1*(1-aaa),0);
    drawarrow (-y1,y1)--(-y1*(1+aaa),0);
    endfor

% Labels on projection arrows. Left side.
zz10 := 0.6[(-nqq*unit,nqq*unit),(-nqq*unit,0)];
draw (thelabel.top(btex $\scriptstyle\beta=0$ etex, (0,0)))
 rotated 90 shifted zz10;

tt := angle(aa,1);
zz11 := 0.6[(-nqq*unit,nqq*unit),(-nqq*(1+aa)*unit,0)];
draw (thelabel.top(btex $\scriptstyle\beta=0.4$ etex, (0,0)))
 rotated tt shifted zz11;

ttt := angle(aaa,1);
zz12 := 0.6[(-nqq*unit,nqq*unit),(-nqq*(1+aaa)*unit,0)];
draw (thelabel.top(btex $\scriptstyle\beta=0.8$ etex, (0,0)))
 rotated ttt shifted zz12;

% Labels on projection arrows. Right side.
zz20 := 0.6[(nqq*unit,nqq*unit),(nqq*unit,0)];
draw (thelabel.bot(btex $\scriptstyle\beta=0$ etex, (0,0)))
 rotated 90 shifted zz20;

zz21 := 0.55[(nqq*unit,nqq*unit),(nqq*(1-aa)*unit,0)];
draw (thelabel.bot(btex $\scriptstyle\beta=0.4$ etex, (0,0)))
 rotated tt shifted zz21;

zz22 := 0.5[(nqq*unit,nqq*unit),(nqq*(1-aaa)*unit,0)];
draw (thelabel.bot(btex $\scriptstyle\beta=0.8$ etex, (0,0)))
 rotated ttt shifted zz22;

label.urt(btex $\displaystyle x^{n+1}$ etex, zz2);

endfig;
end
