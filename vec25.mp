% tex/conc/mp/vec25.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/vec25.mp 46e95a651f 2012-04-30 01:10:49Z Alan U. Kennington $
% Components of second-level tangent vector in point/velocity form.

input mapmax.mp
verbatimtex
% \input akmath
etex

beginfig(1);
pair p[], v[];
color col[];
string ss;

unit := 1.5cm;
sepA := 2.5pt;
sepB := 12pt;
radA := 12pt;
scA := 0.5;
penDOT := 2.5bp;
penLINE := 0.5bp;
col1 := 0.4white;

p0 := (0,0);

% Differential of curve.
p10 := p0;
p11 := p0 + (1.8,-0.3)*unit;
v0 := (0.5,1)*unit;
v1 := (1,0.6)*unit;;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% First-order differentials.
pickup pencircle scaled penLINE;

% Translated v0.
drawarrow p11--(p11+v0) withcolor col1 dashed evenly;

% v0 and v1.
drawarrow p10--(p10+v0);
drawarrow p11--(p11+v1);

% Horizontal component.
S_arrowspacesstyle(p10, p11, sepA, sepA, 1)(dashed evenly scaled scA);

% Vertical component of second differential.
S_arrowspacesstyle(p11+v0, p11+v1, sepA, sepA, 1)(dashed evenly scaled scA);

% Draw the dots.
pickup pencircle scaled penDOT;
draw p10;
draw p11;

% Labels.
label.llft(btex \strut$\psi(p)$ etex, p10);
label.lft(btex \strut$v$ etex, p10+0.7v0);
label.bot(btex \strut$\hat w$ etex, 0.5[p10,p11]);
label.urt(btex $\check w$ etex, 0.45[p11+v0,p11+v1]);

% Some numeric labels in circles.
p21 := p10+(-10pt,8pt);
p22 := p10 + 0.7v0 + (-17pt,6pt);
p23 := 0.5[p10,p11] + (-4pt,-24pt);
p24 := 0.5[p11+v0,p11+v1] + (14pt,18pt);

pickup pencircle scaled penLINE;
for i=21 upto 24:
    draw fullcircle scaled radA shifted p[i];
    ss := decimal(i-20);
    label(ss infont "cmr10", p[i]);
    endfor

% Add some words for the circled number tags.
label.lft(btex \strut base point etex, p21+(-0.5radA,0));
label.lft(btex \strut base velocity etex, p22+(-0.5radA,0));
label.rt(btex \strut ``horizontal'' component etex, p23+(0.5radA,0));
label.rt(btex \strut of second-level vector etex, p23+(0.5radA,-sepB));
label.rt(btex \strut ``vertical'' component etex, p24+(6pt,0));
label.rt(btex \strut of second-level vector etex, p24+(0.5radA,-sepB));

endfig;
end
