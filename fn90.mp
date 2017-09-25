% tex/conc/mp/fn90.mp   2016-4-20   Alan U. Kennington.
% $Id: tex/conc/mp/fn90.mp e2db4672c7 2016-04-20 13:23:46Z Alan U. Kennington $
% Double shadow-set lemma for proving Lebesgue differentiation theorem.

input mapmax
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair zz[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
unit := 3cm;            % Unit length on axes.
a := 2.4unit;
b := 1.9unit;
xt := 5pt;              % Extension of X axis to the right.
yI := 3pt;              % Interval shadings just above the X axis.
sepA := 13pt;           % Separation between lines of text in label.
sepB := 4pt;
sepC := 3pt;

gradJa := 10;           % First jump in graph.
gradJb := 15;           % Second jump in graph.
gradJc := 10;           % Third jump in graph.

gradMa := 10;           % Gradient of first mini-jump.
gradMb := 12;           % Gradient of second mini-jump.

gradT := 0.7;           % Gradient of the "torchlight" shadow.
gradS := 1.75;          % Gradient of the "sunlight" shadow.

penAXIS := 0.5bp;
penCURVE := 0.5bp;
penDASH := 0.6bp;
penNOTCH := 0.5bp;
penPT := 2.5bp;
penLN := 0.5bp;

col1 := 0.0white;
col2 := 0.6white;
col3 := 0.45white;      % Torchlight/sunlight Arrows.
col4 := 0.90white;      % Torchlight shadows.
col5 := 0.80white;      % Sunlight shadows.
col6 := col5;           % Sunlight shadows projected to X-axis.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis dimensions.
zz10 := (0,0);
zz11 := (a+xt,0);
zz12 := (0,b);
zz13 := (-10pt,0);
zz14 := (0,-10pt);
zz15 := (a - 5pt, 0.5b);    % Labels on the right.

% Graph vertices for the major steps.
zz20 := (0.1unit, 0.1unit);
zz21 := zz20 + (0.7unit, 0unit);
zz22 := zz21 + (1/gradJa, 1) * 0.7unit;
zz23 := zz22 + (0.7unit, 0unit);
zz24 := zz23 + (1/gradJb, 1) * 0.8unit;
zz25 := (a - 0.18unit, ypart(zz24));
zz26 := zz25 + (1/gradJc, 1) * 0.2unit;

% Graph vertices for the minor steps.
zz30 := (0.7[xpart(zz20),xpart(zz21)],0.25[ypart(zz21),xpart(zz22)]);
zz31 := (xpart(zz30) - (1/gradMa)*(ypart(zz30)-ypart(zz20)), ypart(zz20));
zz32 := (xpart(zz22) - (1/gradJa)*(ypart(zz22)-ypart(zz30)), ypart(zz30));

zz35 := (0.7[xpart(zz22),xpart(zz23)],0.25[ypart(zz23),xpart(zz24)]);
zz36 := (xpart(zz35) - (1/gradMb)*(ypart(zz35)-ypart(zz22)), ypart(zz22));
zz37 := (xpart(zz24) - (1/gradJb)*(ypart(zz24)-ypart(zz35)), ypart(zz35));

% Vertices for torchlight shadows.
zz40 := zz20;
zz41 := (zz20--(zz20+(a,a*gradT))) intersectionpoint (zz21--zz22);
zz42 := zz22;
zz43 := (zz22--(zz22+(a,a*gradT))) intersectionpoint (zz23--zz24);
zz44 := zz24;
zz45 := (zz24--(zz24+(a,a*gradT))) intersectionpoint (zz26--(zz26+(0,b)));

% Vertices for sunlight shadows.
zz50 := zz30;
zz51 := (zz30--(zz30-(a,a*gradS))) intersectionpoint (zz20--zz31);
zz52 := zz41;
zz53 := (zz41--(zz41-(a,a*gradS))) intersectionpoint (zz30--zz32);
zz54 := zz35;
zz55 := (zz35--(zz35-(a,a*gradS))) intersectionpoint (zz22--zz36);
zz56 := zz43;
zz57 := (zz43--(zz43-(a,a*gradS))) intersectionpoint (zz35--zz37);
zz58 := zz26;
zz59 := (zz26--(zz26-(a,a*gradS))) intersectionpoint (zz24--zz25);

%------------------------------------------------------------------------------
% Shading for the torchlight shadows.
pat10 := zz20--zz31--zz30--zz32--zz41--cycle;
pickup pencircle scaled penCURVE;
fill pat10 withcolor col4;

pat11 := zz22--zz36--zz35--zz37--zz43--cycle;
pickup pencircle scaled penCURVE;
fill pat11 withcolor col4;

pat12 := zz24--zz25--zz26--zz45--cycle;
pickup pencircle scaled penCURVE;
fill pat12 withcolor col4;

% Shading for the sunlight shadows.
pat20 := zz51--zz31--zz30--cycle;
pickup pencircle scaled penCURVE;
fill pat20 withcolor col5;

pat21 := zz53--zz32--zz41--cycle;
pickup pencircle scaled penCURVE;
fill pat21 withcolor col5;

pat22 := zz55--zz36--zz35--cycle;
pickup pencircle scaled penCURVE;
fill pat22 withcolor col5;

pat23 := zz57--zz37--zz43--cycle;
pickup pencircle scaled penCURVE;
fill pat23 withcolor col5;

pat24 := zz59--zz25--zz26--cycle;
pickup pencircle scaled penCURVE;
fill pat24 withcolor col5;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Interval shading between ordinate lines for shadow boundary points.
pickup pencircle scaled penCURVE;
fill (xpart(zz51),0)--(xpart(zz51),yI)--(xpart(zz50),yI)--(xpart(zz50),0)--cycle
 withcolor col6;
fill (xpart(zz53),0)--(xpart(zz53),yI)--(xpart(zz52),yI)--(xpart(zz52),0)--cycle
 withcolor col6;
fill (xpart(zz55),0)--(xpart(zz55),yI)--(xpart(zz54),yI)--(xpart(zz54),0)--cycle
 withcolor col6;
fill (xpart(zz57),0)--(xpart(zz57),yI)--(xpart(zz56),yI)--(xpart(zz56),0)--cycle
 withcolor col6;
fill (xpart(zz59),0)--(xpart(zz59),yI)--(xpart(zz58),yI)--(xpart(zz58),0)--cycle
 withcolor col6;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ordinate lines for shadow boundary points.
pickup pencircle scaled penCURVE;
draw (xpart(zz51),0)--zz51 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz50),0)--zz50 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $\scriptstyle a_1^1$ etex, (xpart(zz51),0));
label.bot(btex\strut $\scriptstyle b_1^1$ etex, (xpart(zz50),0));

draw (xpart(zz53),0)--zz53 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz52),0)--zz52 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $\scriptstyle a_1^2$ etex, (xpart(zz53),0)+(3pt,0));
label.bot(btex\strut $\scriptstyle b_1^2$ etex, (xpart(zz52),0));

draw (xpart(zz55),0)--zz55 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz54),0)--zz54 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $\scriptstyle a_2^1$ etex, (xpart(zz55),0));
label.bot(btex\strut $\scriptstyle b_2^1$ etex, (xpart(zz54),0));

draw (xpart(zz57),0)--zz57 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz56),0)--zz56 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $\scriptstyle a_2^2$ etex, (xpart(zz57),0)+(3pt,0));
label.bot(btex\strut $\scriptstyle b_2^2$ etex, (xpart(zz56),0));

draw (xpart(zz59),0)--zz59 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz58),0)--zz58 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $\scriptstyle a_3^1$ etex, (xpart(zz59),0));
label.bot(btex\strut $\scriptstyle b_3^1$\rlap{$\scriptstyle{}=b$} etex,
 (xpart(zz58),0));

% The interval [a,b].
draw (xpart(zz20),0)--zz20 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $\scriptstyle a$ etex, (xpart(zz20),0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The graph of the function "f".
% pat2 := zz20--zz21--zz22--zz23--zz24--zz25;
pat2 := zz20--zz31--zz30--zz32--zz22--zz36--zz35--zz37--zz24--zz25--zz26;
pickup pencircle scaled penCURVE;
draw pat2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Sunlight lines.
pickup pencircle scaled penLN;
drawarrow ((-0.0)[zz50,zz51])--zz51 withcolor col3;
drawarrow ((-0.0)[zz52,zz53])--zz53 withcolor col3;
drawarrow ((-0.0)[zz54,zz55])--zz55 withcolor col3;
drawarrow ((-0.0)[zz56,zz57])--zz57 withcolor col3;
drawarrow ((-0.0)[zz58,zz59])--zz59 withcolor col3;

% Torchlight end-points.
pickup pencircle scaled penPT;
draw zz41;
draw zz43;
draw zz26; % This is intentional.

% Torchlight lines.
pickup pencircle scaled penLN;
drawarrow ((-0.1)[zz40,zz41])--zz41 withcolor col3;
drawarrow ((-0.5)[zz42,zz43])--zz43 withcolor col3;
drawarrow ((-0.5)[zz44,zz45])--zz45 withcolor col3;

% Torchlight start-points.
pickup pencircle scaled penPT;
draw zz40;
draw zz42;
draw zz44;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz13--zz11 withcolor col1;
drawarrow zz14--zz12 withcolor col1;
label.lrt(btex\strut $x$ etex, zz11);
label.ulft(btex $f(x)$ etex, zz12);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for arrows.
label.ulft(btex $c_1$ etex, 0.2[zz40,zz41]);
label.ulft(btex $c_1$ etex, 0.2[zz42,zz43]);
label.ulft(btex $c_1$ etex, 0.2[zz44,zz45]);

label.lft(btex $\scriptstyle c_2$ etex, 0.6[zz51,zz50]);
label.lft(btex $\scriptstyle c_2$ etex, 0.3[zz53,zz52]);
label.lft(btex $\scriptstyle c_2$ etex, 0.6[zz55,zz54]);
label.lft(btex $\scriptstyle c_2$ etex, 0.3[zz57,zz56]);
label.lft(btex $\scriptstyle c_2$ etex, 0.6[zz59,zz58]);

label.rt(btex $f(b)$ etex, zz26);

%------------------------------------------------------------------------------
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex\strut $\Dll f(x)<c_1$ etex, zz15+(0,sepA));
label.rt(btex\strut and etex, zz15);
label.rt(btex\strut $c_2<\Dur f(x)$ etex, zz15+(0,-sepA+1pt));

pickup pencircle scaled penLN;
S_arrowspaces(zz15, zz31, sepB, sepC, 1, black);
S_arrowspaces(zz15, zz32, sepB, sepC, 1, black);
S_arrowspaces(zz15, zz36, sepB, sepC, 1, black);
S_arrowspaces(zz15, zz37, sepB, sepC, 1, black);
S_arrowspaces(zz15, zz25, sepB, sepC, 1, black);

setbounds currentpicture to pat1;

endfig;
end
