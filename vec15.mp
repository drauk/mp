% tex/conc/mp/vec15.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec15.mp defbd13703 2012-05-07 12:05:29Z Alan U. Kennington $
% Transformation of second-order tangent vector under a diffeomorphism.
% Formerly map121.mp.

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
v10 := (7.2*unit,0);
ell := 1.4;
sc := 4.2unit;
penBDY := 0.5bp;
penVEC := 0.5bp;
penCURVE := 1.5bp;
penPT := 2.5bp;
penLN := 0.5bp;

p0 := (0,0)*unit;
p1 := p0 + (a,1.5)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,1.5)*unit*0.8;
p4 := p3 + (a,-1.5)*unit;
p5 := p4 + (a,-0.2)*unit;
pat1 := p0..p1..p2..p3..p4..p5;

p30 := p0 + v10 + (0,0)*unit;
p31 := p30 + (a,2.5)*unit;
p32 := p31 + (a,-1.5)*unit;
p33 := p32 + (a,1.2)*unit*0.8;
p34 := p33 + (a,-0.3)*unit;
p35 := p34 + (a,-1.2)*unit;
pat2 := p30..p31..p32..p33..p34..p35;

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw subpath(2,4) of pat1 withcolor0.8white;
draw subpath(2,4) of pat2 withcolor0.8white;

% Draw some ellipses around the curves.
pickup pencircle scaled penBDY;
p9 := 0.5[p1,p5] + (0.2unit,0.82unit);
p39 := p9 + v10;
draw fullcircle scaled sc xscaled ell shifted p9;
draw fullcircle scaled sc xscaled ell shifted p39;

% Draw some arrows.
ll := 1.85;         % Length factor for vector.
t0 := 2.4;          % Attachment points.
t1 := 3.28;

% Differential of curve.
p10 := point t0 of pat1;
p11 := point t1 of pat1;
v0 := ((direction t0 of pat1) * ll) rotated 20;
v1 := ((direction t1 of pat1) * ll) rotated 20;

p20 := point t0 of pat2;
p21 := point t1 of pat2;
v20 := ((direction t0 of pat2) * ll) rotated 20;
v21 := ((direction t1 of pat2) * ll) rotated 20;

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

% Horizontal component.
sp := 0.1*unit;
S_arrowspace(p10,p11,sp,1,black);
S_arrowspace(p20,p21,sp,1,black);

% Translated v0.
drawarrow p11--(p11+v0) withcolor0.4white dashed evenly;
drawarrow p21--(p21+v20) withcolor0.4white dashed evenly;

% Vertical component of second differential.
S_arrowspace(p11+v0, p11+v1, sp, 1, black);
S_arrowspace(p21+v20, p21+v21, sp, 1, black);

% Labels.
label.ulft(btex $p(t_1)$ etex, p10);
label.ulft(btex $v(t_1)$ etex, p10+0.78v0);
label.bot(btex $\strut w_H$ etex, 0.32[p10,p11]);
label.urt(btex $w_V$ etex, 0.40[p11+v0,p11+v1]);
label.bot(btex $p(t_2)$ etex, p11+(-2pt,-4pt));
label.rt(btex $v(t_2)$ etex, p11+v1);

label.ulft(btex $\tilde p(t_1)$ etex, p20);
label.ulft(btex $\tilde v(t_1)$ etex, p20+0.78v20);
label.bot(btex $\strut\tilde w_H$ etex, 0.32[p20,p21]);
label.urt(btex $\tilde w_V$ etex, 0.40[p21+v20,p21+v21]);
label.bot(btex $\tilde p(t_2)$ etex, p21+(0pt,-4pt));
label.rt(btex $\tilde v(t_2)$ etex, p21+v21);

% The diffeomorphism.
scc := 0.38;
% sccc := sqrt(0.25);
sccc := 0.3535;
p40 := p9 + (sc * ell, sc)*scc;
p41 := p39 + (-sc * ell, sc)*scc;
p42 := 0.5[p40,p41] + (0,0.10sc);
pickup pencircle scaled penLN;
drawarrow p40..p42..p41;
label.bot(btex $\phi$ etex, p42);

endfig;
end
