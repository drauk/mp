% tex/conc/mp/fibre15.mp   2012-5-24   Alan U. Kennington.
% $Id: tex/conc/mp/fibre15.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Fibre space: partition of total space into fibres.

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
asep := 2.5pt;      % Separation parameter for arrow pairs.

penLN := 0.5bp;
penPT := 2.5bp;

pickup pencircle scaled penLN;

v0 := (0,0);
v1 := v0 + (a,0);

% The base space.
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
    drawarrow (v4+(0,-r-q))--(v5+(0,q));
    S_arrowspaces(v4+(0,r/2),v6,r/2+q,r+q,1,black);
    endfor

% Label on fibre chart arrow.
v7 := 0.5[v2,v6];
label.ulft(btex $\phi_1\restrict{E_{b_1}}$ etex, v7+(0pt,0));
v8 := 0.5[0.5[v2,v3],v6];
label.rt(btex $\phi_2\restrict{E_{b_2}}$ etex, v8+(0,0));
v9 := 0.5[v3,v6];
label.urt(btex $\phi_3\restrict{E_{b_3}}$ etex, v9+(-5pt,0));

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
S_arrowspace(v4+(0,-asep),v14+(0,-asep),r+q,1,black);
label.top(btex $\ppara(\path_1)$ etex, 0.5[v4,v14]+(0,asep));
label.bot(btex $\ppara(\path_3)$ etex, 0.5[v4,v14]+(0,-asep));

S_arrowspace(v14+(0,asep),v24+(0,asep),r+q,1,black);
S_arrowspace(v14+(0,-asep),v24+(0,-asep),r+q,1,black);
label.top(btex $\ppara(\path_2)$ etex, 0.5[v14,v24]+(0,asep));
label.bot(btex $\ppara(\path_4)$ etex, 0.5[v14,v24]+(0,-asep));

% Curves in the base space.
drawarrow v5..(0.25[v5,v15]+(0,b/10))..(0.5[v5,v15]+(0,-b/20))
            ..(0.75[v5,v15]+(0,b/10))..v15+(-2pt,1pt);
label.top(btex $\path_1$ etex, 0.75[v5,v15]+(0,b/10));
drawarrow v5..(0.25[v5,v15]+(0,b/20))..(0.5[v5,v15]+(0,-b/5))
            ..(0.75[v5,v15]+(0,-b/20))..v15+(-2pt,-1pt);
label.bot(btex $\path_3$ etex, 0.5[v5,v15]+(0,-b/5));

drawarrow v15..(0.25[v15,v25]+(0,b/10))..(0.5[v15,v25]+(0,-b/20))
            ..(0.75[v15,v25]+(0,b/10))..v25+(-2pt,1pt);
label.top(btex $\path_2$ etex, 0.75[v15,v25]+(0,b/10));
drawarrow v15..(0.25[v15,v25]+(0,b/20))..(0.5[v15,v25]+(0,-b/5))
            ..(0.75[v15,v25]+(0,-b/20))..v25+(-2pt,-1pt);
label.bot(btex $\path_4$ etex, 0.5[v15,v25]+(0,-b/5));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Labels on the left.
label.lft(btex $F$ etex, v0+(-s,2b));
label.lft(btex $\phi$ etex, v0+(-s,1.5b));
label.lft(btex $E$ etex, v0+(-s,b));
label.lft(btex $\pi$ etex, v0+(-s,b/2));
label.lft(btex $B$ etex, v0+(-s,0));

% Labels on the right.
label.rt(btex \strut \fibre/ space etex, v1+(s,2b));
label.rt(btex \strut \fibre/ chart etex, v1+(s,1.5b));
label.rt(btex \strut total space etex, v1+(s,b));
label.rt(btex \strut projection map etex, v1+(s,b/2));
label.rt(btex \strut base space etex, v1+(s,0));

setbounds currentpicture to pat1;

endfig;
end
