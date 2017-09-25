% tex/conc/mp/field4.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/field4.mp 0e3af78b4e 2014-04-04 11:24:15Z Alan U. Kennington $
% DG level 4. Global Riemannian metric. Construction of geodesics.

verbatimtex
\input akmath
etex

beginfig(1);
numeric ang[], drawn[];
pair p[], q[];
path pat;

m := 12;   % Number of points.
a := 300;
b := 150;
dmin := 42pt;
rg := 0.4dmin;
rh := 0.84rg;
rj := 1.2rg;
rl := 0.2rg;
rm := 0.3rg;
rn := 0.2rg;
ro := 0.6rg;            % Diameter of 90 degree angle arc.
rp := rm + rn + 4.5pt;  % Offset of labels on the rulers.
nn := 10;
penCURVE := 1.25bp;
penPT := 2.5bp;
penCHART := 0.4bp;

vmax := 120;        % Maximum angle of velocity.
vmult := 25;        % Maximum relative difference in velocity between points.
pdiff := 0.7dmin;   % Distance between centres of axes.

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

p[0] := (0,0);
ang[-1] := 5;
for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Number between -1 and +1.
    dd := -1 + 2 * (rand_x/rand_T);

    % New angle of geodesic. (Uses gravitational force towards the centre.)
    if (dd > 0):
        ang[i] := ang[i-1] + vmult * ((vmax-ang[i-1])/vmax) * dd;
    else:
        ang[i] := ang[i-1] + vmult * ((vmax+ang[i-1])/vmax) * dd;
        fi

    % Next point.
    if i > 0:
        p[i] := p[i-1] + (pdiff,0) rotated ang[i-1];
        fi
    endfor

% Draw the curve under the points.
pickup pencircle scaled penCURVE;
draw
for i=0 upto m-2:
    p[i]{dir ang[i]}..{dir ang[i+1]}
    endfor
    p[m-1] withcolor 0.78white;

drawY := 0; % Do not set this to non-zero.
pickup pencircle scaled penPT;
for i=0 upto m-1:
    pickup pencircle scaled penPT;
    draw p[i];

    % Draw local chart.
    pickup pencircle scaled penCHART;
    e := ang[i]; % Random orientation.

    drawarrow (p[i]+(-rl,0) rotated e)..(p[i]+(rj,0) rotated e); % X axis.
    drawarrow (p[i]+(0,-rl) rotated e)..(p[i]+(0,rj) rotated e); % Y axis.

    draw (p[i]+(-rl,rh) rotated e)..(p[i]+(rg,rh) rotated e); % Y = 1.
    draw (p[i]+(rh,-rl) rotated e)..(p[i]+(rh,rg) rotated e); % X = 1.

    % Ruler on X axis.
    pickup pencircle scaled penCHART;
    q0 := p[i] + (0,-rm) rotated e;
    q1 := p[i] + (0,-rm-rn) rotated e;
    q2 := p[i] + (rh,-rm-rn) rotated e;
    q3 := p[i] + (rh,-rm) rotated e;
    draw q0--q1--q2--q3--cycle;

    for j=1 upto nn-1:
        draw (p[i]+(rh*(j/nn),-rm) rotated e)--
             (p[i]+(rh*(j/nn),-rm-rn) rotated e);
        endfor

    % Indicate numbers on the little rulers.
    % Note: If nn is changed, must change these labels.
    label(btex $\scriptscriptstyle0$ etex, p[i] + (0,-rp) rotated e);
    label(btex $\scriptscriptstyle10$ etex, p[i] + (rh,-rp) rotated e);

    % Ruler on Y axis.
    if drawY > 0:
        pickup pencircle scaled penCHART;
        q0 := p[i] + (-rm,0) rotated e;
        q1 := p[i] + (-rm-rn,0) rotated e;
        q2 := p[i] + (-rm-rn,rh) rotated e;
        q3 := p[i] + (-rm,rh) rotated e;
        draw q0--q1--q2--q3--cycle;

        for j=1 upto nn-1:
            draw (p[i]+(-rm,rh*(j/nn)) rotated e)--
                 (p[i]+(-rm-rn,rh*(j/nn)) rotated e);
            endfor
        label(btex $\scriptscriptstyle0$ etex, p[i] + (-rp,0) rotated e);
        label(btex $\scriptscriptstyle10$ etex, p[i] + (-rp,rh) rotated e);
        fi

    % Label indicating 90 degree angle.
    label(btex $\scriptstyle90$ etex, p[i] + (rh/2,rh/2) rotated e);

    % Widget indicating 90 degree angle.
    pat := (fullcircle rotated e) scaled ro shifted p[i];
    draw subpath(0,2) of pat;
    endfor

% Labels for end-points of the geodesic.
label.bot(btex $A$ etex, p[0]+(0,-0.5dmin) rotated ang[0]);
label.bot(btex $B$ etex, p[m-1]+(0,-0.5dmin) rotated ang[m-1]);

endfig;
end
