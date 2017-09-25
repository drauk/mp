% tex/conc/mp/field2.mp   2007-1-7   Alan Kennington.
% $Id: tex/conc/mp/field2.mp 0e3af78b4e 2014-04-04 11:24:15Z Alan U. Kennington $
% DG level 2. Charts: differential structure.

verbatimtex \input akmath etex

beginfig(1);
numeric rx[], ry[], drawn[];
pair p[];

m := 360;   % Number of points.
a := 300;
b := 150;
dmin := 28pt;
rg := 0.4dmin;
rh := 0.7rg;
rj := 1.2rg;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    rx[i] := a * (rand_x/rand_T);
    endfor

for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    ry[i] := b * (rand_x/rand_T);
    endfor

pickup pencircle scaled 3pt;
for i=0 upto m-1:
    p[i] := (rx[i], ry[i]);
    drawn[i] := 0;

    % Weed out points which are too close.
    tooclose := 0;
    for j=0 upto i-1:
        d := abs(p[i]-p[j]);
        if ((d < dmin) and (drawn[j] > 0)):
            tooclose := 1;
            fi;
        exitif ((d < dmin) and (drawn[j] > 0));
        endfor
    if (tooclose = 0):
        pickup pencircle scaled 3pt;
        draw p[i];
        drawn[i] := 1;

        % Draw local chart.
        pickup pencircle scaled 0.4pt;

        % Create random number in [0,T).
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        e := 360 * (rand_x/rand_T); % Random orientation.

        drawarrow (p[i]+(-rg,0) rotated e)..(p[i]+(rj,0) rotated e); % X axis.
        drawarrow (p[i]+(0,-rg) rotated e)..(p[i]+(0,rj) rotated e); % Y axis.

        draw (p[i]+(-rg,rh) rotated e)..(p[i]+(rg,rh) rotated e); % Y = 1.
        draw (p[i]+(-rg,-rh) rotated e)..(p[i]+(rg,-rh) rotated e); % Y = -1.

        draw (p[i]+(rh,-rg) rotated e)..(p[i]+(rh,rg) rotated e); % X = 1.
        draw (p[i]+(-rh,-rg) rotated e)..(p[i]+(-rh,rg) rotated e); % X = -1.

        fi
    endfor

endfig;
end
