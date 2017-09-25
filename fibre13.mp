% tex/conc/mp/fibre13.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/fibre13.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Fibre space: partition of total space into fibres.
% Formerly map52.mp.

input mapmax
verbatimtex
\input akmath
\input dgspell
etex

beginfig(1);
pair v[];
path pat;

a := 9cm;
b := 1.75cm;
n := 9;             % Number of circles.
d := b/2.8;
r := d/2;
q := 2mm;
qq := 0;
s := 1.5mm;
e := d*1.0;
v0 := (0,0);
v1 := v0 + (a,0);

penLN := 0.5bp;
penPT := 2.5bp;

pickup pencircle scaled penLN;

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
v7 := 0.6[v3,v6];
label.urt(btex $\phi\restrict{E_b}=\phi\restrict{\pi^{-1}(\{b\})}$ etex,
 v7+(-5pt,0));

% Labels on the left.
label.lft(btex $F$ etex, v0+(-s,2b));
label.lft(btex $\phi$ etex, v0+(-s,1.5b));
label.lft(btex $E$ etex, v0+(-s,b));
label.lft(btex $\pi$ etex, v0+(-s,b/2));
label.lft(btex $B$ etex, v0+(-s,0));

% defaultfont := "Times-Roman";
% defaultfont := "rptmr";
label.rt(btex \strut \fibre/ space etex, v1+(s,2b));
label.rt(btex \strut \fibre/ chart etex, v1+(s,1.5b));
label.rt(btex \strut total space etex, v1+(s,b));
% label.rt(btex partitioned into \fibre/s etex, v1+(s,b-6pt));
label.rt(btex \strut projection map etex, v1+(s,b/2));
label.rt(btex \strut base space etex, v1+(s,0));

pickup pencircle scaled penPT;
i := 1;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b_1$ etex, v5+(0,-qq));
label(btex $\scriptstyle E_{b_1}$ etex, v4);

i := 3;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
defaultfont := "cmr10";
label.bot(btex \strut$b_2$ etex, v5+(0,-qq));
label(btex $\scriptstyle E_{b_2}$ etex, v4);

i := n-1;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
defaultfont := "cmr10";
label.bot(btex \strut$b$ etex, v5+(0,-qq));
label(btex $\scriptstyle E_b$ etex, v4);

endfig;
end
