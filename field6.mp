% tex/conc/mp/field6.mp   2012-1-8   Alan U. Kennington.
% $Id: tex/conc/mp/field6.mp 0e3af78b4e 2014-04-04 11:24:15Z Alan U. Kennington $
% DG level 2. Charts: differential structure, with affine transformations.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric rx[], ry[], drawn[];
pair p[];

m := 370;   % Number of points.
a := 300;
b := 150;
dmin := 28pt;
rg := 0.4dmin;
rh := 0.7rg;
rj := 1.2rg;
ax := 50;     % Maximum random change to Y axis angle.
ay := 0.40;   % Maximum random change to Y axis length.
penPT := 2.5bp;
penLN := 0.5bp;
penCHART := 0.4bp;

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

pickup pencircle scaled penPT;
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
        pickup pencircle scaled penPT;
        draw p[i];
        drawn[i] := 1;

        % Draw local chart.
        pickup pencircle scaled penCHART;

        % Create random number in [0,T).
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        e := 360 * (rand_x/rand_T); % Random orientation.

        % Randomise the Y axis vector.
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        f := e + (-1 + 2 (rand_x/rand_T)) * ax;
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        g := 1 - (rand_x/rand_T) * ay;  % Random shortening factor.

        S_axes_draw(p[i], rg, rh, rj, e, f, g);
        fi
    endfor

endfig;
end
