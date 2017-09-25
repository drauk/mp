% tex/conc/mp/topo29.mp   2014-10-31   Alan U. Kennington.
% $Id: tex/conc/mp/topo29.mp 79c220c43a 2014-10-31 12:34:35Z Alan U. Kennington $
% T_5 topological space.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[];
path pat[];
color col;

a := 0cm;
dd := 2.3cm;
rr := dd/2;
xsA := 1.2;
rrd := 2.1rr*xsA;
rry := rr + 14pt;
rryy := rr;
zz0 := (0,0);
zz1 := zz0+(a,0);
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
nn := 13;
col := 0.9white;
rrr := 0.1rr;
penLN := 0.5bp;
penOM := 0.35bp;
penPT := 2.5bp;
scA := 0.4;

% Pseudo-random number generation. (Very poor!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Generate pseudo-random shapes.
pickup pencircle scaled penPT;
for i=0 upto nn-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    p[i] := (rr*(rand_x/rand_T),0) rotated (360*(i/nn)-130);
%    draw p[i] + zz1;
%    label.rt(decimal i, p[i] + zz1);
    endfor
pat0 :=
for i=0 upto nn-1:
    p[i]..
    endfor
    cycle;

for i=0 upto nn-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    p[i] := (rrr+rr*(rand_x/rand_T),0) rotated (360*(i/nn)-80);
    % Make the set fit into the neighbourhood.
    if i=nn-1:
        p[i] := p[i] + (6pt,6pt);
        fi
%    draw p[i] + zz11;
%    label.lft(decimal i, p[i] + zz11);
    endfor
pat1 :=
for i=0 upto nn-1:
    p[i]..
    endfor
    cycle;

tA := directiontime (0,1) of (subpath (4,5) of pat0);
tB := directiontime (0,-1) of (subpath (8,10) of pat1);

zz20 := zz1 + (point (4+tA) of pat0);
zz21 := zz11 + (point (8+tB) of pat1);

pickup pencircle scaled penPT;
% pickup pencircle scaled 10pt;
% draw zz20;
% draw zz21;
% label.rt(btex $a$ etex, zz20);
% label.lft(btex $b$ etex, zz21);
zz11 := zz11 + (zz20 - zz21) + (penLN,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Two circles.
pickup pencircle scaled penLN;

fill (pat0 shifted zz1) withcolor col;
fill (pat1 shifted zz11) withcolor col;
draw pat0 shifted zz1;
draw pat1 shifted zz11;
zz30 := zz20 + (-dd*xsA/2 + penLN/2,0);
zz31 := zz20 + (dd*xsA/2 + penLN/2,0);
pickup pencircle scaled penOM;
draw (fullcircle scaled dd) xscaled xsA shifted zz30 dashed evenly scaled scA;
draw (fullcircle scaled dd) xscaled xsA shifted zz31 dashed evenly scaled scA;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of balls.
pickup pencircle scaled penPT;
label.rt(btex $S_1$ etex, zz1+(-2pt,0pt));

% External points.
label.bot(btex $S_2$ etex, zz11+(2pt,-2pt));

% Labels under the balls.
label.bot(btex $\strut S_1\subseteq\Omega_1$ etex, zz30+(0,-rr));
label.bot(btex $\strut S_2\subseteq\Omega_2$ etex, zz31+(0,-rr));

label.bot(btex $\Omega_1\bcap\Omega_2=\emptyset$ etex, 0.5[zz30,zz31]+(0,-rry));

% Labels at the sides.
label.lft(btex $\Omega_1$ etex, zz30+(-rr*xsA,0));
label.rt(btex $\Omega_2$ etex, zz31+(rr*xsA,0));

endfig;
end
