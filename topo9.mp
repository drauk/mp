% tex/conc/mp/topo9.mp   2007-5-3   Alan Kennington.
% $Id: tex/conc/mp/topo9.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% DG level 1: Define continuity as the preservation of connectedness.
% Formerly map111.mp.

verbatimtex \input akmath etex

beginfig(1);
numeric rx[], ry[];
pair p[], pp[], pa, pb, pmin, pmax, q[];
path pat[];

m := 50;   % Number of points.
imid := floor(m/2);
a := 12;
b := 12;
c := 20;
d := 8;
vmax := 45;     % Maximum angle of velocity.
vmult := 30;    % Maximum relative difference in velocity between points.
pdiff := 3pt;
psize := 3.1pt;
disconn := 10pt;
aa := pdiff * m * 1.4;
bb := aa * 0.35;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

p[0] := (0,0);      % Broken sequence.
pp[0] := (0,0);     % Unbroken sequence.
ang := 0;
for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Number between -1 and +1.
    dd := -1 + 2 * (rand_x/rand_T);

    % New angle of worm. (Uses gravitational force towards the centre.)
    if (dd > 0):
        ang := ang + vmult * ((vmax-ang)/vmax) * dd;
    else:
        ang := ang + vmult * ((vmax+ang)/vmax) * dd;
        fi
    % Next point.
    if i = imid:
        p[i] := p[i-1] + (disconn,0);
        pp[i] := pp[i-1] + (pdiff,0);
    elseif i > 0:
        p[i] := p[i-1] + (pdiff,0) rotated ang;
        pp[i] := pp[i-1] + (pdiff,0) rotated ang;
        fi
    endfor

% Draw the points.
pickup pencircle scaled psize;
for i=0 upto m-1:
    draw p[i];
    draw p[i] + (0,-bb);
    draw p[i] + (aa,0);
    draw pp[i] + (aa,-bb);
    endfor

% Draw a neighbourhood around each half of the "curve".
pa := p[0];
pmin := p[imid-1];
pmax := p[imid];
pb := p[m-1];
q[0] := 0.33[pmin,pmax];
q[1] := 0.67[pmin,pmax];

pickup pencircle scaled 0.4pt;
ee := 4pt;
pat0 := (pa+(-d,0))..(pa+(-d+c,a))..(q[0]+(-c,a))..(q[0]+(0,0))
    ..(q[0]+(-c,-a))..(pa+(-d+c,-a))..cycle;
pat1 := (pb+(d,0))..(pb+(d-c,b))..(q[1]+(c,b))..(q[1]+(0,0))
    ..(q[1]+(c,-b))..(pb+(d-c,-b*0.7))..cycle;
pat2 := (pa+(-d,0))..(pa+(-d+c,a))..(q[0]+(-c,a))..(q[0]+(0,0))
    ..(q[0]+(-c,-a))..(pa+(-d+c,-a-ee))..cycle;
pat3 := (pb+(d,0))..(pb+(d-c,b))..(q[1]+(c,b))..(q[1]+(0,0))
    ..(q[1]+(c,-b))..(pb+(d-c,-b*0.7-ee))..cycle;

draw pat0 dashed evenly scaled 0.5;
draw pat1 dashed evenly scaled 0.5;

draw pat2 shifted (0,-bb) dashed evenly scaled 0.5;
draw pat3 shifted (0,-bb) dashed evenly scaled 0.5;

draw pat0 shifted (aa,0) dashed evenly scaled 0.5;
draw pat1 shifted (aa,0) dashed evenly scaled 0.5;

draw pat2 shifted (aa,-bb) dashed evenly scaled 0.5;
draw pat3 shifted (aa-disconn+pdiff,-bb) dashed evenly scaled 0.5;

% Add some labels.
label.top(btex $\Omega_1$ etex, 0.5[pa,pmin]+(0,a));
label.top(btex $\Omega_2$ etex, 0.5[pmax,pb]+(0,a));

label.top(btex $\Omega_1$ etex, 0.5[pa,pmin]+(aa,a));
label.top(btex $\Omega_2$ etex, 0.5[pmax,pb]+(aa,a));

% Function arrows.
pickup pencircle scaled 0.7pt;
ddd := 3.4pt;
q10 := 0.5[pa,pmin]+(0,-bb+a+ddd);
q11 := 0.5[pa,pmin]+(0,-b-ddd);
q12 := 0.5[pmax,pb]+(0,-bb+a+ddd);
q13 := 0.5[pmax,pb]+(0,-b-ddd);
q20 := q10+(aa,0);
q21 := q11+(aa,0);
q22 := q12+(aa-(disconn-pdiff)/2,0);
q23 := q13+(aa-(disconn-pdiff)/2,0);

drawarrow reverse (q10--q11);
drawarrow reverse (q12--q13);
drawarrow reverse (q20--q21);
drawarrow reverse (q22--q23);
label.lft(btex $f^{-1}$ etex, 0.5[q10,q11]);
label.rt(btex $f^{-1}$ etex, 0.5[q12,q13]);
label.lft(btex $f^{-1}$ etex, 0.5[q20,q21]);
label.rt(btex $f^{-1}$ etex, 0.5[q22,q23]);

% Labels on set components.
label(btex $B_1$ etex, 0.5[pa,pmin]+(0pt,-4pt));
label(btex $B_2$ etex, 0.5[pmax,pb]+(-2.0pt,-3.8pt));
label(btex $f^{-1}(B_1)$ etex, 0.5[pa,pmin]+(1pt,-bb-6pt));
label(btex $f^{-1}(B_2)$ etex, 0.5[pmax,pb]+(-2.5pt,-bb-5.8pt));

label(btex $B_1$ etex, 0.5[pa,pmin]+(aa+0pt,-4pt));
label(btex $B_2$ etex, 0.5[pmax,pb]+(aa-2.0pt,-3.8pt));
label(btex $f^{-1}(B_1)$ etex, 0.5[pa,pmin]+(aa+1pt,-bb-6pt));
label(btex $f^{-1}(B_2)$ etex,
 0.5[pmax,pb]+(aa-2.5pt-(disconn-pdiff),-bb-5.8pt));

% Comments at the bottom.
label.bot(btex $B=B_1\bcup B_2$ is disconnected etex,
 0.5[pmin,pmax]+(0,-bb-b));
label.bot(btex $f^{-1}(B)=f^{-1}(B_1)\bcup f^{-1}(B_2)$ is disconnected etex,
 0.5[pmin,pmax]+(0,-bb-b-12pt));
label.bot(btex $f$ is continuous etex, 0.5[pmin,pmax]+(0,-bb-b-24pt));

label.bot(btex $B=B_1\bcup B_2$ is disconnected etex,
 0.5[pmin,pmax]+(aa,-bb-b));
label.bot(btex $f^{-1}(B)=f^{-1}(B_1)\bcup f^{-1}(B_2)$ is connected etex,
 0.5[pmin,pmax]+(aa,-bb-b-12pt));
label.bot(btex $f$ is discontinuous etex, 0.5[pmin,pmax]+(aa,-bb-b-24pt));

endfig;
end
