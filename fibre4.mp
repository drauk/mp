% tex/conc/mp/fibre4.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibre4.mp 8baaf0bddc 2012-05-07 13:25:39Z Alan U. Kennington $
% Graph of false and true parallelism definitions.
% Formerly fn7.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];

a := 1.8in;
aa := 0.84a;
b := 0.93a;
unit := 0.8a;          % Unit length on axes.
np := 4;               % Number of points on X axis.
nq :=  1;              % Number of notches on both axes.
ht := a/45;            % Notch length.
yy := 1mm;
dd := 0.65*(aa/np);
rr := dd/2;
yyy := yy + rr + 3.5mm;
gap := 0.5mm;
penAXIS := 0.5bp;
penCURVE := 0.5bp;
penVEC := 0.4bp;
penLN := 0.5bp;
penPT := 2.5bp;

% The axes.
zz0 := (0,0);
zz1 := zz0 + (a,0);
zz3 := zz0 + (-0.15a,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
label.lrt(btex $x\in\reals$ etex, zz1);

pickup pencircle scaled penCURVE;
pat1 := ((0,-yy)--(aa,-yy)...(aa+1.2yy,0)...(aa,yy)--(0,yy)) shifted zz0;
draw (subpath (0,1) of pat1);
draw (subpath (1,3) of pat1) dashed evenly scaled 0.4;
drawarrow (subpath (3,4) of pat1);

for i=0 upto np:
    pickup pencircle scaled penVEC;
    draw ((i/np)*aa, -yy-gap)--((i/np)*aa, -yyy+rr+gap) withcolor 0.7white;
    draw ((i/np)*aa, yy+gap)--((i/np)*aa, yyy-rr-gap) withcolor 0.7white;

    pickup pencircle scaled penLN;
    zz5 := ((i/np)*aa,-yyy);
    zz6 := ((i/np)*aa,yyy);
    draw fullcircle scaled dd shifted zz5;
    draw fullcircle scaled dd shifted zz6;

    drawarrow zz5--(zz5+(rr,0)rotated(90*(i/np)));
    drawarrow zz6--(zz6+(rr,0)rotated(180-90*(i/np)));

    pickup pencircle scaled penPT;
    draw zz5;
    draw zz6;
    endfor

% Label.
label.bot(btex $\displaystyle\alpha^\gamma_{s,t}=\int_s^t|\gamma'(u)|\,du$ etex,
 (aa/2,-yyy-rr-6pt));

%------------------------------------------------------------------------------
zz10 := (1.5a,0);         % Space between the two graphs.

% The axes.
zz0 := zz10;
zz1 := zz0 + (a,0);
zz3 := zz0 + (-0.15a,0);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
label.lrt(btex $x\in\reals$ etex, zz1);

pickup pencircle scaled penCURVE;
pat1 := ((0,-yy)--(aa,-yy)...(aa+1.2yy,0)...(aa,yy)--(0,yy)) shifted zz0;
draw (subpath (0,1) of pat1);
draw (subpath (1,3) of pat1) dashed evenly scaled 0.4;
drawarrow (subpath (3,4) of pat1);

for i=0 upto np:
    pickup pencircle scaled penVEC;
    draw (((i/np)*aa, -yy-gap)--((i/np)*aa, -yyy+rr+gap))
        shifted zz10 withcolor 0.7white;
    draw (((i/np)*aa, yy+gap)--((i/np)*aa, yyy-rr-gap))
        shifted zz10 withcolor 0.7white;

    pickup pencircle scaled penLN;
    zz5 := zz10+((i/np)*aa,-yyy);
    zz6 := zz10+((i/np)*aa,yyy);
    draw fullcircle scaled dd shifted zz5;
    draw fullcircle scaled dd shifted zz6;

    drawarrow zz5--(zz5+(rr,0)rotated(90*(i/np)));
    drawarrow zz6--(zz6+(rr,0)rotated(90*(i/np)));

    pickup pencircle scaled penPT;
    draw zz5;
    draw zz6;
    endfor

% Label.
label.bot(btex
 $\displaystyle\alpha^\gamma_{s,t}=\int_s^t\gamma'(u)\,du=\gamma(t)-\gamma(s)$
 etex, zz10+(aa/2,-yyy-rr-6pt));

endfig;
end
