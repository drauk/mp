% tex/conc/mp/fibre5.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibre5.mp 09c178b650 2012-05-08 03:58:47Z Alan U. Kennington $
% Direction-dependent connection.
% Formerly fn8.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
path pat[];

a := 1.8in;
aa := 0.84a;
b := 0.93a;
unit := 0.8a;          % Unit length on axes.
np := 4;               % Number of points on X axis.
nq :=  1;              % Number of notches on both axes.
ht := a/45;            % Notch length.
yy := 1mm;
dd := 0.58*(aa/np);
rr := dd/2;
yyy := yy + rr + 3.5mm;
gap := 0.5mm;
bb := yyy + a - aa;
penAXIS := 0.5bp;
penCIRC := 0.5bp;       % Circles.
penVEC := 0.4bp;        % Direction arrows.
penARROW := 0.5bp;      % Arrows.
penPT := 2.5bp;         % Centres of circles.

% The axes.
zz0 := (0,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (0,bb);
zz3 := zz0 + (-a,0);
zz4 := zz0 + (0,-yyy-rr-2mm);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
drawarrow zz4--zz2 withcolor0.6white;
label.lrt(btex $\psi_B^1(b)\in\reals$ etex, zz1);
label.lft(btex $\psi_B^2(b)\in\reals$ etex, zz2+(-2pt,0));

for i=-np upto np:
    pickup pencircle scaled penCIRC;
    zz5 := zz0+((i/np)*aa,-yyy);
    zz6 := zz0+((i/np)*aa,yyy);
    zz7 := zz0+((i/np)*aa,0);
    draw fullcircle scaled dd shifted zz5;
    draw fullcircle scaled dd shifted zz6;
    draw fullcircle scaled dd shifted zz7;

    pickup pencircle scaled penVEC;
    ang := (abs(i)/np)*90;
    drawarrow zz5--(zz5+(rr,0)rotated ang);
    drawarrow zz6--(zz6+(rr,0)rotated ang);
    drawarrow zz7--(zz7+(rr,0)rotated ang);

    pickup pencircle scaled penPT;
    draw zz5;
    draw zz6;
    draw zz7;
    endfor

% Put a label on one of the circles.
i := 2;
j := 0;
zz6 := zz0+((i/np)*aa,yyy);
zz7 := zz0+((j/np)*aa,yyy);
pickup pencircle scaled penARROW;
% drawarrow zz6--(zz6+(rr,0)) dashed evenly scaled 0.3 withcolor0.5white;
drawarrow zz6--(zz6+(rr,0)) withcolor 0.5white;
pat1 := subpath (0,1) of (fullcircle scaled (dd*1.3) shifted zz6);

pickup pencircle scaled penCIRC;
drawarrow pat1;
label.urt(btex $\alpha$ etex, zz6 + (rr*1.3,0)rotated45);

pickup pencircle scaled penPT;
draw zz6;   % Do the dot again.

% A curve gamma.
zz8 := zz7+(rr*1.2,0)rotated45;
zz9 := zz6+(-rr*1.2,0)rotated-45;
zz10 := 0.5[zz8,zz9]+(0,rr);
pat2 := zz8..zz10..zz9;
pickup pencircle scaled penCIRC;
drawarrow pat2 withcolor 0.5white;
label.top(btex $\gamma$ etex, zz10);

% Label.
label.bot(btex $\alpha=|\psi_B^1(\gamma(t))|-|\psi_B^1(\gamma(s))|$ etex,
 (0,-yyy-rr-6pt));

endfig;
end
