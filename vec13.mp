% tex/conc/mp/vec13.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec13.mp e4db343941 2012-05-07 10:52:27Z Alan U. Kennington $
% Transformation of tangent vector to curve under diffeomorphism.
% Formerly map115.mp.

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
v10 := (6*unit,0);
ell := 1.4;
sc := 3.5unit;
penCURVE := 1.5bp;
penBDY := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;
penLN := 0.5bp;

p0 := (0,0)*unit;
p1 := p0 + (a,0.5)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,2)*unit*0.8;
p4 := p3 + (a,-1)*unit;
p5 := p4 + (a,0.2)*unit;
pat1 := p0..p1..p2..p3..p4..p5;

p30 := p0 + v10 + (0,1.5)*unit;
p31 := p30 + (a,-0.5)*unit;
p32 := p31 + (a,0.3)*unit;
p33 := p32 + (a,-1.5)*unit*0.8;
p34 := p33 + (a,1.2)*unit;
p35 := p34 + (a,-0.8)*unit;
pat2 := p30..p31..p32..p33..p34..p35;

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw (subpath (2,length(pat1)-1) of pat1) withcolor 0.8 white;
draw (subpath (2,length(pat1)-1) of pat2) withcolor 0.8 white;

% Draw the ellipses.
pickup pencircle scaled penBDY;
p9 := 0.5[p1,p5] + (0,0.32unit);
p19 := p9 + v10;
draw fullcircle scaled sc xscaled ell shifted p9;
draw fullcircle scaled sc xscaled ell shifted p19;

% Draw some arrows.
ll := 1.85;         % Length factor for vector.
t0 := 2.6;          % Attachment points.
t1 := 3.28;

% Differential of curve.
p10 := point t0 of pat1;
p11 := point t1 of pat1;
p20 := point t0 of pat2;
p21 := point t1 of pat2;
v0 := (direction t0 of pat1) * ll;
v1 := (direction t1 of pat1) * ll;
v20 := (direction t0 of pat2) * ll;
v21 := (direction t1 of pat2) * ll;

pickup pencircle scaled penPT;
draw p10;
draw p11;
draw p20;
draw p21;

% First-order differentials.
pickup pencircle scaled penVEC;
drawarrow p10--(p10+v0);
drawarrow p11--(p11+v1);
drawarrow p20--(p20+v20);
drawarrow p21--(p21+v21);

% Labels for points and vectors.
label.ulft(btex $\gamma$ etex, point 2.3 of pat1);
label.ulft(btex $v^i$ etex, p10+0.58v0);
label.urt(btex $w^i$ etex, p11+0.38v1);
label.lrt(btex $p=\gamma(t)$ etex, p10);
label.llft(btex $q$ etex, p11);

label.urt(btex $\tilde\gamma=\phi\circ\gamma$ etex, p32);
label.llft(btex $\tilde v^i$ etex, p20+0.58v20);
label.lrt(btex $\tilde w^i$ etex, p21+0.38v21);
label.urt(btex $\tilde p=\phi(p)$ etex, p20);
label.lrt(btex $\tilde q$ etex, p21);

% The diffeomorphism.
scc := 0.38;
% sccc := sqrt(0.25);
sccc := 0.3535;
p40 := p9 + (sc * ell, sc)*scc;
p41 := p19 + (-sc * ell, sc)*scc;
p42 := 0.5[p40,p41] + (0,0.10sc);
pickup pencircle scaled penLN;
drawarrow p40..p42..p41;
label.bot(btex $\phi$ etex, p42);

p44 := p9 + (-sc * ell, -sc)*sccc;
p45 := p19 + (sc * ell, -sc)*sccc;
p46 := 0.5[p44,p45] + (0,3pt);
p47 := p46 + (0,-14pt);
label.llft(btex $\reals^n$ etex, p44);
label.lrt(btex $\reals^n$ etex, p45);
label.bot(btex $v^i=\partial_t\gamma^i(t)$ etex, p46);
label.bot(btex
 $\tilde v^i = \partial_t\tilde\gamma^i(t) = \phi^i{}_{,k}(p)v^k$ etex, p47);

endfig;
end
