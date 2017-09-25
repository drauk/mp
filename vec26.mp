% tex/conc/mp/vec26.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/vec26.mp 394b0ab550 2012-05-08 01:23:36Z Alan U. Kennington $
% Components of second-level tangent vector in parametrised line form.

input mapmax.mp

beginfig(1);
pair p[], v[], w[];
color col[];
string ss;

unit := 1.5cm;
sepA := 1.8pt;
sepB := 12pt;
sepC := 2.8pt;
sepD := 3pt;

radA := 12pt;
scA := 0.5;
penDOT := 2.5bp;
penLINE := 0.5bp;
penARROW := 0.5bp;
col1 := 0.4white;
col2 := 0.4white;
nlines := 3;

p0 := (0,0);
w1 := (1.8,-0.3)*unit;
w2 := (0.5,-0.4)*unit;
v0 := (0.5,1)*unit;
v1 := v0 + w2;

p12 := p0 - w1;
p22 := p0;
p32 := p0 + w1;

p11 := p12 - v0 + w2;
p21 := p22 - v0;
p31 := p32 - v0 - w2;

p13 := p12 + v0 - w2;
p23 := p22 + v0;
p33 := p32 + v0 + w2;

p41 := 0.6[p11,p12]+(-10pt,0);
p42 := 0.5[p21,p22]+(-2pt,0);

% p51 := p31+(0,-25pt);
% p52 := 0.5[p31,p32]+(2pt,0);

% p51 := 0.5[p31,p32]+(70pt,-6pt);
% p52 := 0.5[p31,p32]+(2pt,0);

p51 := 0.5[p32,p33]+(34pt,-5pt);
p52 := 0.54[p32,p33]+(2pt,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% First-order differentials.

% Translated v0.
pickup pencircle scaled penLINE;
drawarrow (p32-v0)--(p32+v0) withcolor col1 dashed evenly;

% Horizontal component.
pickup pencircle scaled penLINE;
S_arrowspacesstyle(p11, p31, sepA, sepA, 1)
 (dashed evenly scaled scA withcolor col2);
S_arrowspacesstyle(p12, p32, sepA, sepA, 1)
 (dashed evenly scaled scA withcolor col2);
S_arrowspacesstyle(p13, p33, sepA, sepC, 1)
 (dashed evenly scaled scA withcolor col2);

pickup pencircle scaled penARROW;
for i=0 upto 2nlines:
    drawarrow (i/nlines/2)[p11,p31]--(i/nlines/2)[p13,p33];
    endfor

% Vertical component of second differential.
pickup pencircle scaled penLINE;
S_arrowspacesstyle(p32+v0, p32+v1, sepA, sepA, 1)(dashed evenly scaled scA);

% Draw the dots.
pickup pencircle scaled penDOT;
draw p22;
draw p32;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels.
label.ulft(btex \strut$\psi(p)$ etex, p22+(3pt,2pt));
label.lft(btex \strut$v$ etex, p22+0.65v0);
label.top(btex $\hat w$ etex, 0.55[p22,p32]);
label.urt(btex $\check w$ etex, 0.45[p32+v0,p32+v1]);

label.bot(btex $\psi(p)-v$ etex, p21+(10pt,0));
label.top(btex $\psi(p)+v$ etex, p23+(15pt,0));

label.bot(btex $\psi(p)-\hat w-v+\check w$ etex, p11+(-20pt,0pt));
label.lft(btex $\psi(p)-\hat w$ etex, p12+(0pt,0pt));
label.top(btex $\psi(p)-\hat w+v-\check w$ etex, p13+(-20pt,0));

label.rt(btex $\psi(p)+\hat w+v+\check w$ etex, p33+(0pt,0));
label.lrt(btex $\psi(p)+\hat w$ etex, p32+(0pt,0));
label.bot(btex \rlap{$\psi(p)+\hat w-v-\check w$} etex, p31+(-5pt,0));

pickup pencircle scaled penLINE;
% drawarrow p41{dir0}..(0.5[p41,p42]+(0,sepD))..p42;
drawarrow p41{dir0}..p42;
label.lft(btex \strut$L_{\psi^{(1)}(z),w}(0)$ etex, p41+(0pt,0pt));
label.lft(btex \strut$=L_{\psi(p),v}$ etex, p41+(0pt,-sepB));

% drawarrow p51..(0.5[p51,p52]+(sepD,0))..p52;
% label.bot(btex \strut$L_{\psi^{(1)}(z),w}(1)$ etex, p51+(0pt,0pt));
% label.bot(btex \strut$=L_{\psi(p)+\hat w,v+\check w}$ etex, p51+(0pt,-sepB));

% drawarrow p51..(0.5[p51,p52]+(0,0))..p52;
% label.rt(btex \strut$L_{\psi^{(1)}(z),w}(1)$ etex, p51+(0pt,0pt));
% label.rt(btex \strut$=L_{\psi(p)+\hat w,v+\check w}$ etex, p51+(0pt,-sepB));

% drawarrow p51{dir180}..(0.5[p51,p52]+(0,-sepD))..p52;
drawarrow p51{dir180}..p52;
label.rt(btex \strut$L_{\psi^{(1)}(z),w}(1)$ etex, p51+(0pt,0pt));
label.rt(btex \strut$=L_{\psi(p)+\hat w,v+\check w}$ etex, p51+(0pt,-sepB));

endfig;
end
