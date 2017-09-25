% tex/conc/mp/vec10.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/vec10.mp 394b0ab550 2012-05-08 01:23:36Z Alan U. Kennington $
% Second differential of a path.
% Formerly map69.mp.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric t[];
pair p[], v[];
path pat[];
string ss;

unit := 1cm;
a := 2;
penPT := 2.5bp;
penARROW := 0.5bp;
penCURVE := 1.5bp;

p0 := (0,0)*unit;
p1 := p0 + (a,0.5)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,2)*unit*0.8;
p4 := p3 + (a,-1)*unit;
p5 := p4 + (a,0.2)*unit;
pat1 := p0..p1..p2..p3..p4..p5;

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw pat1 withcolor0.8white;

% Draw some arrows.
ll := 1.85;         % Length factor for vector.
t0 := 2.6;          % Attachment points.
t1 := 3.28;

% Differential of curve.
p10 := point t0 of pat1;
p11 := point t1 of pat1;
v0 := (direction t0 of pat1) * ll;
v1 := (direction t1 of pat1) * ll;

pickup pencircle scaled penPT;
draw p10;
draw p11;

% First-order differentials.
pickup pencircle scaled penARROW;
drawarrow p10--(p10+v0);
drawarrow p11--(p11+v1);

% Horizontal component.
sp := 0.13*unit;
S_arrowspace(p10,p11,sp,1,black);

% Translated v0.
drawarrow p11--(p11+v0) withcolor0.4white dashed evenly;

% Vertical component of second differential.
S_arrowspace(p11+v0,p11+v1,sp,1,black);

% Labels.
label.ulft(btex $\gamma(t)$ etex, p10);
label.ulft(btex $v^k$ etex, p10+0.58v0);
label.lrt(btex $w^j$ etex, 0.42[p10,p11]);
label.rt(btex $w^{n+j}$ etex, 0.45[p11+v0,p11+v1]);

% Some numeric labels in circles.
p21 := p10 + (-1.0,0.4)*unit;
p22 := p10 + 0.6v0 + (-0.6,0.6)*unit;
p23 := 0.5[p10,p11] + (0.3,-0.8)*unit;
p24 := 0.5[p11+v0,p11+v1] + (0.6,0.68)*unit;

rr := 12pt;
for i=21 upto 24:
    draw fullcircle scaled rr shifted p[i];
    ss := decimal(i-20);
    label(ss, p[i]);
    endfor

% Add some words for tags 3 and 4.
label.bot(btex horizontal etex, p23+(0,-6pt));
label.rt(btex \strut vertical etex, p24+(6pt,0));

endfig;
end
