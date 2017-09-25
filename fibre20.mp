% tex/conc/mp/fibre20.mp   2016-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/fibre20.mp 3f829ff4e7 2016-12-22 17:47:07Z Alan U. Kennington $
% Fibre set isomorphisms through the charts.
% Formerly map83.mp.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
\input dgspell
etex

beginfig(1);
pair v[];
path pat[];

a := 7cm;
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
for i=0 upto n-1:
    v4 := (i/(n-1))[v2, v3];
    v5 := v4 + (0,-b);
    draw fullcircle scaled d shifted v4;
    drawarrow (v4+(0,-r-q))--(v5+(0,q)) withcolor 0.5white;
    S_arrowspaces(v4+(0,r/2),v6,r/2+q,r+q,1,black);
    endfor

% Label on fibre chart arrow.
v7 := 0.5[v2,v6];
label.ulft(btex $\beta_{b_1,\phi_1}$ etex, v7+(0pt,0));
v8 := 0.5[0.5[v2,v3],v6];
label.rt(btex $\beta_{b_2,\phi_2}$ etex, v8+(0,0));
v9 := 0.5[v3,v6];
label.urt(btex $\beta_{b_3,\phi_3}$ etex, v9+(-5pt,0));

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
defaultfont := "cmr10";
label.bot(btex \strut$b_2$ etex, v15+(0,-qq));
label(btex $\scriptstyle E_{b_2}$ etex, v14);

i := 2;
v24 := (i/(n-1))[v2, v3];
v25 := v24 + (0,-b);
draw v25;
defaultfont := "cmr10";
label.bot(btex \strut$b_3$ etex, v25+(0,-qq));
label(btex $\scriptstyle E_{b_3}$ etex, v24);

% Arrows for the parallelism.
pickup pencircle scaled penLN;
S_arrowspace(v4+(0,asep),v14+(0,asep),r+q,1,black);
S_arrowspace(v4+(0,-asep),v14+(0,-asep),r+q,2,black);
label.top(btex $L^{b_2,b_1}_{g,\phi_2,\phi_1}$ etex, 0.5[v4,v14]+(0,asep));
label.bot(btex $L^{b_1,b_2}_{g,\phi_1,\phi_2}$ etex, 0.55[v4,v14]+(0,-asep));

S_arrowspace(v14+(0,asep),v24+(0,asep),r+q,1,black);
S_arrowspace(v14+(0,-asep),v24+(0,-asep),r+q,2,black);
label.top(btex $L^{b_3,b_2}_{g,\phi_3,\phi_2}$ etex, 0.5[v14,v24]+(0,asep));
label.bot(btex $L^{b_2,b_3}_{g,\phi_2,\phi_3}$ etex, 0.45[v14,v24]+(0,-asep));

aa := -45;
dd := 7.5pt;
v30 := v14 + (0,-0.65b);
drawarrow (v4+(r+q,asep)rotated aa)..(v30+(0,asep))
        ..(v24+(r+q,-asep)rotated (180-aa));
drawarrow reverse ((v4+(r+q,-asep)rotated aa)..(v30+(0,-asep))
        ..(v24+(r+q,asep)rotated (180-aa)));
label.top(btex $L^{b_3,b_1}_{g,\phi_3,\phi_1}$ etex, v30+(0,asep));
label.lrt(btex $L^{b_1,b_3}_{g,\phi_1,\phi_3}$ etex, v30+(dd+12pt,-asep+3.0pt));

% Put the L_g loop on top.
pat2 := ((-0.5,1)..(0,2)..(0.5,1)) scaled 1.2r shifted v6;
drawarrow pat2;
label.rt(btex $L_g$ etex, v6+(0.65r,1.3r)*1.2);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Labels on the left.
label.lft(btex $F$ etex, v0+(-s,2b));
label.lft(btex $\phi\rlap{${}_k$}$ etex, v0+(-s,1.5b));
label.lft(btex $E$ etex, v0+(-s,b));
label.lft(btex $\pi$ etex, v0+(-s,b/2));
label.lft(btex $B$ etex, v0+(-s,0));

% Labels on the right.
% defaultfont := "Times-Roman";
% defaultfont := "rptmr";
label.rt(btex \strut \fibre/ space etex, v1+(s,2b));
label.rt(btex \strut \fibre/ charts etex, v1+(s,1.5b));
label.rt(btex \strut total space etex, v1+(s,b));
% label.rt(btex partitioned into \fibre/s etex, v1+(s,b-6pt));
label.rt(btex \strut projection map etex, v1+(s,b/2));
label.rt(btex \strut base space etex, v1+(s,0));

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
