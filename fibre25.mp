% tex/conc/mp/fibre25.mp   2016-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/fibre25.mp 6c690a4903 2016-12-23 04:26:07Z Alan U. Kennington $
% Fibre bundle parallel transport through the charts.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
\input dgspell
etex

beginfig(1);
pair v[];
path pat[];

b := 1.375cm;
a := 3.5b;
n := 2;             % Number of circles.
d := 0.625cm;       % Fibre sets/spaces.
r := d/2;
q := 5pt;
qq := 0;
s := 1.5mm;
e := d*1.0;
asep := 2pt;        % Separation parameter for arrow pairs.
sepB := 3pt;

penLN := 0.5bp;
penPT := 2.5bp;

cr := 4.5pt;
theta := 1;
dc := 11pt;
dd := 1.485dc;

pat1 := subpath (theta, 8-theta) of fullcircle scaled dc;
pat2 := fullcircle scaled cr;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
v0 := (0,0);
v1 := v0 + (a,0);

% The base space.
pickup pencircle scaled penLN;
draw v0--v1;

% The fibre space F.
v6 := 0.5[v0,v1]+(0,2b);
draw fullcircle scaled d shifted v6;
label(btex $\scriptstyle F$ etex, v6);

v20 := v6 + (0.5dc-r,0);
drawarrow pat1 rotated 0 shifted (v20+(-dc,0));
draw pat2 shifted (v20+(-dd,0));
label.lft(btex $\sigma$ etex, v20+(-1.55dc,0));

% The circles for the total space.
v2 := v0 + (e, b);
v3 := v1 + (-e, b);
for i=0 upto n-1:
    v4 := (i/(n-1))[v2, v3];
    v5 := v4 + (0,-b);
    draw fullcircle scaled d shifted v4;
    drawarrow (v4+(0,-r-q))--(v5+(0,q));
    S_arrowspaces(v4,v6,r+q,r+q,1,black);
    endfor

% Labels on fibre chart arrows.
v7 := 0.5[v2,v6];
label.ulft(btex $\phi_1\restrict{E_{b_1}}$ etex, v7+(1pt,-sepB));
v8 := 0.5[v3,v6];
label.urt(btex $\phi_2\restrict{E_{b_2}}$ etex, v8+(-5pt,-sepB));

pickup pencircle scaled penPT;
i := 0;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b_1$ etex, v5+(0,-qq));
label(btex $\scriptstyle E_{b_1}$ etex, v4);

i := 1;
v14 := (i/(n-1))[v2, v3];
v15 := v14 + (0,-b);
draw v15;
label.bot(btex \strut$b_2$ etex, v15+(0,-qq));
label(btex $\scriptstyle E_{b_2}$ etex, v14);

% Arrows for the parallelism.
pickup pencircle scaled penLN;
S_arrowspace(v4+(0,asep),v14+(0,asep),r+q,1,black);
S_arrowspace(v4+(0,-asep),v14+(0,-asep),r+q,2,black);
label.top(btex $\konv_{b_2,b_1}$ etex, 0.5[v4,v14]+(0,asep));
label.bot(btex $\konv_{b_1,b_2}$ etex, 0.5[v4,v14]+(0,-asep));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat3 := bbox currentpicture;
bboxmargin := bbx;

% Labels on the left.
label.lft(btex $F$ etex, v0+(-s,2b));
label.lft(btex $\phi$ etex, v0+(-s,1.5b));
label.lft(btex $E$ etex, v0+(-s,b));
label.lft(btex $\pi$ etex, v0+(-s,b/2));
label.lft(btex $B$ etex, v0+(-s,0));

label.rt(btex \strut \fibre/ space etex, v1+(s,2b));
label.rt(btex \strut \fibre/ chart etex, v1+(s,1.5b));
label.rt(btex \strut total space etex, v1+(s,b));
label.rt(btex \strut projection map etex, v1+(s,b/2));
label.rt(btex \strut base space etex, v1+(s,0));

setbounds currentpicture to pat3;

endfig;
end
