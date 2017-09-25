% tex/conc/mp/vec14.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec14.mp defbd13703 2012-05-07 12:05:29Z Alan U. Kennington $
% Velocity vector of a velocity vector.
% Formerly map120.mp.

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
penVEC := 0.5bp;
penCURVE := 1.5bp;

p0 := (0,0)*unit;
p1 := p0 + (a,1.5)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,1.5)*unit*0.8;
p4 := p3 + (a,-1.5)*unit;
p5 := p4 + (a,-0.2)*unit;
pat1 := p0..p1..p2..p3..p4..p5;

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw subpath(1,4) of pat1 withcolor0.8white;

% Draw some arrows.
ll := 1.85;         % Length factor for vector.
t0 := 2.4;          % Attachment points.
t1 := 3.28;

% Differential of curve.
p10 := point t0 of pat1;
p11 := point t1 of pat1;
v0 := ((direction t0 of pat1) * ll) rotated 20;
v1 := ((direction t1 of pat1) * ll) rotated 20;

% First-order differentials.
pickup pencircle scaled penVEC;
drawarrow p10--(p10+v0);
drawarrow p11--(p11+v1);

% Horizontal component.
sp := 0.1*unit;
S_arrowspace(p10,p11,sp,1,black);

% Translated v0.
drawarrow p11--(p11+v0) withcolor0.4white dashed evenly;

% Vertical component of second differential.
S_arrowspace(p11+v0, p11+v1, sp, 1, black);

pickup pencircle scaled penPT;
draw p10;
draw p11;

% Labels.
label.ulft(btex $p(t_1)$ etex, p10);
label.ulft(btex $v(t_1)$ etex, p10+0.78v0);
label.bot(btex $\strut w_H$ etex, 0.32[p10,p11]);
label.urt(btex $w_V$ etex, 0.50[p11+v0,p11+v1]);
label.bot(btex $p(t_2)$ etex, p11+(-2pt,-4pt));
label.rt(btex $v(t_2)$ etex, p11+v1);

endfig;
end
