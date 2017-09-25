% tex/conc/mp/field3.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/field3.mp 0e3af78b4e 2014-04-04 11:24:15Z Alan U. Kennington $
% DG level 4. Parallel transport.

verbatimtex
\input akmath
etex

beginfig(1);
pair o[], p[], q[];

m := 11;    % Number of points.
vmax := 50; % Maximum angle of velocity.
vmult := 25; % Maximum relative difference in velocity between points.
pdiff := 30pt;
rg := 0.4pdiff;
rh := 0.7rg;
rj := 1.2rg;
dvmax := 0.18pdiff * (m-1);      % lower swoop.
dvmaxx := 0.10pdiff * (m-1);     % upper swoop.

penPT := 2.5bp;
penPATH := 1.5bp;
penCHART := 0.4bp;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Generate a sequence of points.
o[0] := (0,0);
p[0] := (0,0);
q[0] := (0,0);
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
        o[i] := o[i-1] + (pdiff,0) rotated ang;
        dv := 4 * (i/(m-1)) * ((m - 1 - i)/(m-1));
        p[i] := o[i] + (0,dv*dvmaxx);
        q[i] := o[i] + (0,-dv*dvmax);
        fi
    endfor

% Draw the path.
pickup pencircle scaled penPATH;
draw
for i=0 upto m-2:
    p[i]..
    endfor
    p[m-1] withcolor 0.78white;
draw
for i=0 upto m-2:
    q[i]..
    endfor
    q[m-1] withcolor 0.78white;

% Draw the points.
e := 0;
f := 0;
g := 0;
h := 0;
hh := 0;
for i=0 upto m-1:
    pickup pencircle scaled penPT;
    draw p[i];
    draw q[i];

    % Draw local chart.
    pickup pencircle scaled penCHART;

    % Create random number in [0,T).
    if (i > 0):
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        ori := 15 * (-1 + 2 * (rand_x/rand_T)); % Random orientation.
        e := e + ori;
        f := e + 30 * (i/(m-1));
        g := rg * (i/(m-1)) * 0.4;
        h := g * (rh/rg);
        hh := g * (rj/rg);
        fi

    % Upper swoop.
    drawarrow (p[i]+(-rg,0) rotated e)..(p[i]+(rj,0) rotated e); % X axis.
    drawarrow (p[i]+(0,-rg) rotated e)..(p[i]+(0,rj) rotated e); % Y axis.

    draw (p[i]+(-rg,rh) rotated e)..(p[i]+(rg,rh) rotated e); % Y = 1.
    draw (p[i]+(-rg,-rh) rotated e)..(p[i]+(rg,-rh) rotated e); % Y = -1.

    draw (p[i]+(rh,-rg) rotated e)..(p[i]+(rh,rg) rotated e); % X = 1.
    draw (p[i]+(-rh,-rg) rotated e)..(p[i]+(-rh,rg) rotated e); % X = -1.

    % Lower swoop.
    if (i > 0):
        drawarrow (q[i]+(-rg,-g) rotated f)..(q[i]+(rj,hh) rotated f); % X axis.
        drawarrow (q[i]+(0,-rg) rotated f)..(q[i]+(0,rj) rotated f); % Y axis.

        draw (q[i]+(-rg,rh-g) rotated f)..(q[i]+(rg,rh+g) rotated f); % Y = 1.
        draw (q[i]+(-rg,-rh-g) rotated f)..(q[i]+(rg,-rh+g) rotated f); % Y= -1.

        draw (q[i]+(rh,-rg+h) rotated f)..(q[i]+(rh,rg+h) rotated f); % X = 1.
        draw (q[i]+(-rh,-rg-h) rotated f)..(q[i]+(-rh,rg-h) rotated f); % X= -1.
        fi
    endfor

% Some labels.
label.ulft(btex $A$ etex, p[0] + (-rg,rg));
label.urt(btex $B$ etex, p[m-1] + (rg,rg));

endfig;
end
