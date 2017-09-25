% tex/conc/mp/topo10.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/topo10.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% DG level 1. Topology: Connectedness of sets. Per-point neighbourhoods.

input mapmax.mp
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
penLN := 0.5pt;
% csize := 9pt;
csize := 8.8pt; % Make this the same as for topo11.mp, more or less.
cwidth := 0.4pt;

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
    if (i <> m-1):
        if (dd > 0):
            ang := ang + vmult * ((vmax-ang)/vmax) * dd;
        else:
            ang := ang + vmult * ((vmax+ang)/vmax) * dd;
            fi
    else:
        % Extremely ad-hoc kludge.
        ang := -ang;
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

% Draw the circles.
pickup pencircle scaled cwidth;
for i=0 upto m-1:
    if ((i <= imin) or (i >= imax)):
        draw fullcircle scaled csize shifted p[i];
        fi
    endfor

% Add some labels.
q1 := p3 + (-2mm, -14mm);
q2 := p3 + (10mm, -14mm);
q3 := p121 + (-10mm, -10mm);
q4 := p121 + (-2mm, -10mm);
q5 := 0.5[p[imin],p[imax]];
q6 := q5 + (-5mm,-14mm);
dda := 8pt;
ddc := 0.5pt;
ddb := 0.5csize + ddc;

pickup pencircle scaled penLN;
S_arrowspaces(q1, p3, dda, 0, 0, black);
S_arrowspaces(q1, p12, dda, 0, 0, black);
S_arrowspaces(q1, p21, dda, 0, 0, black);

S_arrowspaces(q2, p3, dda, ddb, 1, black);
S_arrowspaces(q2, p12+(0,-ddb)rotated-10, dda, 0, 1, black);
S_arrowspaces(q2, p21, dda, ddb, 1, black);

S_arrowspaces(q3, p104, dda, 0, 0, black);
S_arrowspaces(q3, p121, dda, 0, 0, black);

S_arrowspaces(q4, p104, dda, ddb, 1, black);
S_arrowspaces(q4, p121, dda, ddb, 1, black);

S_arrowspaces(q6, q5, dda, ddb, 1, black);

label(btex $x$ etex, q1);
label(btex $N_x$ etex, q2);

label(btex $y$ etex, q3);
label(btex $N_y$ etex, q4);

label(btex $N_x\cap N_y=\emptyset$ etex, q6);

endfig;
end
