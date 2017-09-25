% tex/conc/mp/fn31.mp   2015-9-1   Alan U. Kennington.
% $Id: tex/conc/mp/fn31.mp 93e440b87e 2015-09-01 11:32:28Z Alan U. Kennington $
% Graph of a C^{0,1} transition map.

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
b := 2.2 unit;
r := 1;
R := 2;
np := 22;           % Number of points on X axis.
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.

aa := 0.4;          % Beta value.
aaa := 0.8;         % Beta value.
penLN := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x_1$ etex, zz1);

% The beta = 0 curve.
draw (-R*unit,-R*unit)--(R*unit,R*unit) dashed evenly;

label.lft(btex $\beta=0$ etex, (-R*unit,-R*unit));
label.rt(btex $\beta=0$ etex, (R*unit,R*unit));

% Non-zero beta.
zz10 := (R*unit,R*unit*(1-aa));
zz11 := (-R*unit/(1+aa),-R*unit);
draw (0,0)--zz10;
draw zz11--(0,0);

label.bot(btex $\beta=0.4$ etex, zz11+(-10pt,0));
label.rt(btex $\beta=0.4$ etex, zz10);

zz20 := (R*unit,R*unit*(1-aaa));
zz21 := (-R*unit/(1+aaa),-R*unit);
draw (0,0)--zz20;
draw zz21--(0,0);

label.lrt(btex $\beta=0.8$ etex, zz21);
label.rt(btex $\beta=0.8$ etex, zz20);

% Add some notches.
pickup pencircle scaled penLN;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        label.bot(decimal i, (x1,-ht-2.5pt));
        draw (x1,0)--(x1,-ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

label.urt(btex
 $\displaystyle \psi_\beta^1\circ\psi_0^{-1}(x)=x^1-\beta|x^1|$ etex, zz2);

endfig;
end
