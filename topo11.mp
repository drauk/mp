% tex/conc/mp/topo11.mp   2014-12-7   Alan U. Kennington.
% $Id: tex/conc/mp/topo11.mp b853c7a1d2 2014-12-07 06:21:29Z Alan U. Kennington $
% DG level 1. Topology: Connectedness of sets. Per-point neighbourhoods.
%
% Macros in this file.
%   S_halfcircle

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric t[];
pair p[], pa, pb, pmin, pmax, q[], pt[], ptt[];
path pat[];
color col[];

m := 150;   % Number of points.
imin := floor(m/2) - 16;
imax := imin + 4;
a := 30;
b := 30;
c := 20;
d := 8;
% vmax := 65; % Maximum angle of velocity.
vmax := 85; % Maximum angle of velocity.
% vmult := 40; % Maximum relative difference in velocity between points.
vmult := 50; % Maximum relative difference in velocity between points.
% pdiff := 2.7pt;
pdiff := 3pt;
penPT := 3.1pt;
csize := 8.3pt;
cwidth := 0.5pt;
orsize := 0.5csize;
col1 := 0.88white;
ddd := 0.7cm;
ddx := 1.5pt;

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

% Calculate points to envelope some neighbourhoods of the points.
for i=1 upto imin-1:
    ang_lft := angle(p[i-1]-p[i]);
    ang_rt := angle(p[i+1]-p[i]);
    if (ang_lft < ang_rt):
        ang_lft := ang_lft + 360;
        fi
    ang_mid := 0.5 * (ang_lft + ang_rt);
    pt[i] := p[i] + (orsize,0) rotated ang_mid;
    ptt[i] := p[i] + (-orsize,0) rotated ang_mid;
    endfor
for i=imax+1 upto m-2:
    ang_lft := angle(p[i-1]-p[i]);
    ang_rt := angle(p[i+1]-p[i]);
    if (ang_lft < ang_rt):
        ang_lft := ang_lft + 360;
        fi
    ang_mid := 0.5 * (ang_lft + ang_rt);
    pt[i] := p[i] + (orsize,0) rotated ang_mid;
    ptt[i] := p[i] + (-orsize,0) rotated ang_mid;
    endfor

% Determine some tangential points.
pat3 := fullcircle scaled csize shifted p[0];
pat4 := fullcircle rotated 180 scaled csize shifted p[imin];
pat5 := fullcircle scaled csize shifted p[imax];
pat6 := fullcircle rotated 180 scaled csize shifted p[m-1];
% pat6 := fullcircle scaled csize shifted p[m-1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create a half-circle to the left of a line segment.
%%%%%%%%%%%%%%%%%%%%%%%%%
%     S_halfcircle      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_halfcircle(expr p, q) =
(halfcircle rotated angle(p-q)) scaled length(p-q) shifted 0.5[p,q];
enddef; % End of function S_halfcircle.

%==============================================================================
pat13 := S_halfcircle(pt[1], p[0]);
pat23 := S_halfcircle(p[0], ptt[1]);
pat14 := S_halfcircle(p[imin],pt[imin-1]);
pat24 := S_halfcircle(ptt[imin-1],p[imin]);

pat15 := S_halfcircle(pt[imax+1], p[imax]);
pat25 := S_halfcircle(p[imax], ptt[imax+1]);
pat16 := S_halfcircle(p[m-1],pt[m-2]);
pat26 := S_halfcircle(ptt[m-2],p[m-1]);

pickup pencircle scaled 1pt;
% draw pat14;
% draw pat24;
(t3, t13) = pat3 intersectiontimes pat13;
(t23, t18) = pat3 intersectiontimes pat23;
(t4, t14) = pat4 intersectiontimes pat14;
(t24, t19) = pat4 intersectiontimes pat24;

(t5, t15) = pat5 intersectiontimes pat15;
(t25, t20) = pat5 intersectiontimes pat25;
(t6, t16) = pat6 intersectiontimes pat16;
(t26, t21) = pat6 intersectiontimes pat26;

pickup pencircle scaled 3pt;
% draw point t3 of pat3;
% draw point t23 of pat3;

pt[0] := point t3 of pat3;
ptt[0] := point t23 of pat3;
pt[imin] := point t4 of pat4;
ptt[imin] := point t24 of pat4;

pt[imax] := point t5 of pat5;
ptt[imax] := point t25 of pat5;
pt[m-1] := point t6 of pat6;
ptt[m-1] := point t26 of pat6;

% Test the out-rigger points.
%pickup pencircle scaled 1pt;
%for i=1 upto imin-1:
%    draw pt[i];
%    draw ptt[i];
%    endfor
%for i=imax+1 upto m-2:
%    draw pt[i];
%    draw ptt[i];
%    endfor

pat1 :=
for i=1 upto imin-1:
    pt[i]--
    endfor
    pt[imin];
pat1 := pat1 & (subpath(t4,t24) of pat4);
pat1 := pat1 &
for i=imin downto 1:
    ptt[i]--
    endfor
    ptt[0];
pat1 := pat1 & (subpath(t23,t3) of pat3);
pat1 := pat1--cycle;

pat2 :=
for i=imax+1 upto m-2:
    pt[i]--
    endfor
    pt[m-1];
pat2 := pat2 & (subpath(t6,t26) of pat6);
pat2 := pat2 &
for i=m-1 downto imax+1:
    ptt[i]--
    endfor
    ptt[imax];
pat2 := pat2 & (subpath(t25,t5) of pat5);
pat2 := pat2--cycle;

%pat2 :=
%for i=imax+1 upto m-2:
%    pt[i]--
%    endfor
%for i=m-2 downto imax+1:
%    ptt[i]--
%    endfor
%    cycle;

pickup pencircle scaled 2cwidth;
% Dashed version looks too weird.
% draw pat1 dashed (evenly scaled 0.5);
% draw pat2 dashed (evenly scaled 0.5);
draw pat1;
draw pat2;

pickup pencircle scaled 0.1cwidth;
fill pat1 withcolor col1;
fill pat2 withcolor col1;

% Draw the circles.
% pickup pencircle scaled cwidth;
% for i=0 upto m-1:
%     if ((i <= imin) or (i >= imax)):
%         draw fullcircle scaled csize shifted p[i];
%         fi
%     endfor

% Draw the points.
pickup pencircle scaled penPT;
for i=0 upto m-1:
    if ((i <= imin) or (i >= imax)):
        draw p[i];
        fi
    endfor

% Some labels for the open sets.
q1 := ptt[38];
q2 := q1 + (-ddd,-ddd);
q3 := ptt[121];
q4 := q3 + (-ddd,-ddd);
q5 := 0.5[p[imin],p[imax]];
q6 := q5 + (-10pt,-1.68ddd);
pickup pencircle scaled 0.5;
S_arrowspaces(q2, q1, 0, ddx, 1, black);
S_arrowspaces(q4, q3, 0, ddx, 1, black);
S_arrowspaces(q6, q5, 0, 6pt, 1, black);
% label.bot(btex $\Omega_1$ etex, q2);
% label.bot(btex $\Omega_2$ etex, q4);
% label.bot(btex $\displaystyle\Omega_1 = \bigcup_{x\in S_1}N_x$ etex, q2);
% label.bot(btex $\displaystyle\Omega_2 = \bigcup_{x\in S_2}N_x$ etex, q4);
label.bot(btex $\Omega_1 = \bigcup\limits_{x\in S_1}\!N_x$ etex, q2);
label.bot(btex $\Omega_2 = \bigcup\limits_{y\in S_2}\!N_y$ etex, q4);
label.bot(btex $\Omega_1\cap\Omega_2=\emptyset$ etex, q6);

endfig;
end
