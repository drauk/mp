% tex/conc/mp/field5.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/field5.mp 0e3af78b4e 2014-04-04 11:24:15Z Alan U. Kennington $
% DG level 4. Global Riemannian metric.

verbatimtex
\input akmath
etex

beginfig(1);
numeric rx[], ry[], drawn[];
pair p[], q[];
path pat;

m := 412;   % Number of points.
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
penPT := 2.5bp;
penLN := 0.4bp;

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
        pickup pencircle scaled penLN;

        % Create random number in [0,T).
        rand_x := (rand_x * rand_a + rand_b) mod rand_T;
        e := 360 * (rand_x/rand_T); % Random orientation.

        drawarrow (p[i]+(-rl,0) rotated e)..(p[i]+(rj,0) rotated e); % X axis.
        drawarrow (p[i]+(0,-rl) rotated e)..(p[i]+(0,rj) rotated e); % Y axis.

        draw (p[i]+(-rl,rh) rotated e)..(p[i]+(rg,rh) rotated e); % Y = 1.
        draw (p[i]+(rh,-rl) rotated e)..(p[i]+(rh,rg) rotated e); % X = 1.

        % Ruler on X axis.
        pickup pencircle scaled penLN;
        q0 := p[i] + (0,-rm) rotated e;
        q1 := p[i] + (0,-rm-rn) rotated e;
        q2 := p[i] + (rh,-rm-rn) rotated e;
        q3 := p[i] + (rh,-rm) rotated e;
        draw q0--q1--q2--q3--cycle;

        for j=1 upto nn-1:
            draw (p[i]+(rh*(j/nn),-rm) rotated e)--
                 (p[i]+(rh*(j/nn),-rm-rn) rotated e);
            endfor

        % Ruler on Y axis.
        pickup pencircle scaled penLN;
        q0 := p[i] + (-rm,0) rotated e;
        q1 := p[i] + (-rm-rn,0) rotated e;
        q2 := p[i] + (-rm-rn,rh) rotated e;
        q3 := p[i] + (-rm,rh) rotated e;
        draw q0--q1--q2--q3--cycle;

        for j=1 upto nn-1:
            draw (p[i]+(-rm,rh*(j/nn)) rotated e)--
                 (p[i]+(-rm-rn,rh*(j/nn)) rotated e);
            endfor

        % Label indicating 90 degree angle.
%        label(btex $\scriptscriptstyle 90
%            \hbox to0pt{$\scriptscriptstyle{}^\circ$\hss}$ etex,
%            p[i] + (rh/2,rh/2) rotated e);
        label(btex $\scriptstyle90$ etex, p[i] + (rh/2,rh/2) rotated e);

        % Widget indicating 90 degree angle.
        pat := (fullcircle rotated e) scaled ro shifted p[i];
        draw subpath(0,2) of pat;

        % Indicate numbers of the little rulers.
        % Note: If nn is changed, but change these labels.
        label(btex $\scriptscriptstyle0$ etex, p[i] + (0,-rp) rotated e);
        label(btex $\scriptscriptstyle10$ etex, p[i] + (rh,-rp) rotated e);
        label(btex $\scriptscriptstyle0$ etex, p[i] + (-rp,0) rotated e);
        label(btex $\scriptscriptstyle10$ etex, p[i] + (-rp,rh) rotated e);
        fi
    endfor

endfig;
end
