% tex/conc/mp/vec23.mp   2012-1-22   Alan U. Kennington.
% $Id: tex/conc/mp/vec23.mp 80cf3495a1 2012-01-22 06:29:40Z Alan U. Kennington $
% Affine space transitivity.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[];

unit := 25;     % Scale factor.
aa := 2unit + 4.2cm;
sp := 4pt;      % Arrow spacing.
penA := 0.5bp;
penB := 2.0bp;
dd := 18pt;
thetaA := 135;
thetaB := 25;

p0 := (0,0);
p1 := p0 + ((-2,0)rotated thetaA)*unit;
p2 := p0 + ((1,-1.5)rotated thetaA)*unit;
p3 := p0 + ((2,1.5)rotated thetaA)*unit;
p4 := (2/3)[p1,0.5[p2,p3]];     % Centroid.

p10 := p0 + (aa,0);
p11 := p10 + ((-2,0)rotated thetaB)*unit;
p12 := p10 + ((1,-1.5)rotated thetaB)*unit;
p13 := p10 + ((2,1.5)rotated thetaB)*unit;
p14 := (2/3)[p11,0.5[p12,p13]]; % Centroid.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspace(p1,p2,sp,1,black);
S_arrowspace(p2,p3,sp,1,black);
S_arrowspace(p1,p3,sp,1,black);

pickup pencircle scaled penB;
draw p1;
draw p2;
draw p3;

label.lrt(btex \strut$u$ etex, p1);
label.urt(btex \strut$v$ etex, p2);
label.ulft(btex \strut$w$ etex, p3);

S_tiltlabel_top(btex $v-u$ etex, 0.5[p1,p2], angle(p1-p2));
S_tiltlabel_top(btex $w-v$ etex, 0.5[p2,p3], angle(p2-p3));
S_tiltlabel_bot(btex $w-u$ etex, 0.5[p1,p3], angle(p1-p3));

label.bot(btex \strut$(u-w)-(u-v)-(v-w)=0$ etex,
 (\xpart(p4),\ypart(p0))+(0,-55));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspace(p11,p12,sp,1,black);
S_arrowspace(p12,p13,sp,1,black);
S_arrowspace(p11,p13,sp,1,black);

pickup pencircle scaled penB;
draw p11;
draw p12;
draw p13;

label.llft(btex \strut$\phi(u)$ etex, p11);
label.lrt(btex \strut$\phi(v)$ etex, p12);
label.urt(btex \strut$\phi(w)$ etex, p13);

S_tiltlabel_bot(btex $\phi(v)-\phi(u)$ etex, 0.5[p11,p12], angle(p12-p11));
S_tiltlabel_top(btex $\phi(w)-\phi(v)$ etex, 0.5[p12,p13], angle(p12-p13));
S_tiltlabel_top(btex $\phi(w)-\phi(u)$ etex, 0.5[p11,p13], angle(p13-p11));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(p0,p10,1.95unit,1.9unit,1,black);
label.top(btex \strut$\phi$ etex, 0.47[p0,p10]);

endfig;
end
