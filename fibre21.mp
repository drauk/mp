% tex/conc/mp/fibre21.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/fibre21.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Fibre set automorphisms through the charts.
% Formerly map91.mp.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
\input dgspell
etex

beginfig(1);
pair v[];
path pat[];

a := 4.5cm;
b := 1.75cm;
n := 3;             % Number of circles.
d := b/2.8;
r := d/2;
q := 2mm;
qq := 0;
s := 1.5mm;
e := d*1.0;
asep := 2pt;        % Separation parameter for arrow pairs.
penLN := 0.5bp;
penPT := 2.5bp;

v0 := (0,0);
v1 := v0 + (a,0);

% The base space.
pickup pencircle scaled penLN;
draw v0--v1;

% The fibre space F.
v6 := 0.5[v0,v1]+(0,2b);
draw fullcircle scaled d shifted v6;
label(btex $\scriptstyle F$ etex, v6);

% The circles for the total space.
v2 := v0 + (e, b);
v3 := v1 + (-e, b);
i := 1;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw fullcircle scaled d shifted v4;
drawarrow (v4+(0,-r-q))--(v5+(0,q));
S_arrowspaces(v4+(asep,r/2),v6+(asep,0),r/2+q,r+q,1,black);
S_arrowspaces(v4+(-asep,r/2),v6+(-asep,0),r/2+q,r+q,1,black);

% Label on fibre chart arrows.
v8 := 0.5[0.5[v2,v3],v6];
label.lft(btex $\beta_{b,\phi_1}$ etex, v8+(-asep,0));
label.rt(btex $\beta_{b,\phi_2}$ etex, v8+(asep,0));

pickup pencircle scaled penPT;
i := 1;
v14 := (i/(n-1))[v2, v3];
v15 := v14 + (0,-b);
draw v15;
defaultfont := "cmr10";
label.bot(btex \strut$b$ etex, v15+(0,-qq));
label(btex $\scriptstyle E_b$ etex, v14);

% Put the L_g loop on top.
pickup pencircle scaled penLN;
pat3 := (-0.5,1)..(0,2)..(0.5,1);
pat2 := pat3 rotated 90 scaled 1.2r shifted v6;
drawarrow pat2;
label.lft(btex $L_{g_1}$ etex, v6+(-2r-3pt,0));

pat2 := pat3 rotated -90 scaled 1.2r shifted v6;
drawarrow pat2;
label.rt(btex $L_{g_2}$ etex, v6+(2r+3pt,0));

pat2 := pat3 rotated 90 scaled 1.2r shifted v4;
drawarrow pat2;
label.lft(btex $L^b_{g_1,\phi_1}$ etex, v4+(-2r-3pt,0));

pat2 := pat3 rotated -90 scaled 1.2r shifted v4;
drawarrow pat2;
label.rt(btex $L^b_{g_2,\phi_2}$ etex, v4+(2r+3pt,0));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Labels on the left.
label.lft(btex $F$ etex, v0+(-s,2b));
label.lft(btex $\phi\rlap{${}_k$}$ etex, v0+(-s,1.5b));
label.lft(btex $E$ etex, v0+(-s,b));
label.lft(btex $\pi$ etex, v0+(-s,b/2));
label.lft(btex $B$ etex, v0+(-s,0));

label.rt(btex \strut \fibre/ space etex, v1+(s,2b));
label.rt(btex \strut \fibre/ charts etex, v1+(s,1.5b));
label.rt(btex \strut total space etex, v1+(s,b));
label.rt(btex \strut projection map etex, v1+(s,b/2));
label.rt(btex \strut base space etex, v1+(s,0));

setbounds currentpicture to pat1;

endfig;
end
