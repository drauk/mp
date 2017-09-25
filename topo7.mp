% tex/conc/mp/topo7.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/topo7.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% DG level 1. Topology: Connectedness of sets.
% Formerly map105.mp.

verbatimtex
\input akmath
etex

beginfig(1);
numeric rx[], ry[];
pair p[], pa, pb, pmin, pmax, q[];

m := 150;   % Number of points.
imin := floor(m/2) - 16;
imax := imin + 4;
a := 30;
b := 30;
c := 20;
d := 8;
vmax := 85; % Maximum angle of velocity.
vmult := 50; % Maximum relative difference in velocity between points.
pdiff := 3pt;
penPT := 3.1pt;
penCURVE := 0.4pt;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

p[0] := (0,0);
ang := 0;
for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Number between -1 and +1.
    dd := -1 + 2 * (rand_x/rand_T);

    % New angle of worm. (Uses graviational force towards the centre.)
    if (dd > 0):
        ang := ang + vmult * ((vmax-ang)/vmax) * dd;
    else:
        ang := ang + vmult * ((vmax+ang)/vmax) * dd;
        fi
    % Next point.
    if (i > 0):
        p[i] := p[i-1] + (pdiff,0) rotated ang;
        fi
    endfor

% Draw the points.
pickup pencircle scaled penPT;
for i=0 upto m-1:
    if ((i <= imin) or (i >= imax)):
        draw p[i];
        fi
    endfor

% Draw a neighbourhood around each half of the "curve".
pa := p[0];
pmin := p[imin];
pmax := p[imax];
pb := p[m-1];
q[0] := 0.33[pmin,pmax];
q[1] := 0.67[pmin,pmax];

pickup pencircle scaled penCURVE;
draw (pa+(-d,0))..(pa+(-d+c,0.5a))..(q[0]+(-c,0.6a))..(q[0]+(0,0))
    ..(q[0]+(-c,-0.7a))..(pa+(-d+c,-0.7a))..cycle;
draw (pb+(d,0))..(pb+(d-c,0.95b))..(q[1]+(c,0.6b))..(q[1]+(0,0))
    ..(q[1]+(c,-1.05b))..(pb+(d-c,-0.45b))..cycle;

% Add some labels.
label(btex $\Omega_1$ etex, 0.8[pa,pmin]+(0,0.45a+15pt));
label(btex $\Omega_2$ etex, 0.8[pmax,pb]+(0,0.80b+20pt));

endfig;
end
