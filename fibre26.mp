% tex/conc/mp/fibre26.mp   2014-4-2   Alan U. Kennington.
% $Id: tex/conc/mp/fibre26.mp 0ad8b9501b 2014-04-02 07:37:10Z Alan U. Kennington $
% Parallelism lift function.

input boxmax
input mapmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
numeric t[];
pair p[], v[];
path pat[];

unit := 1cm;
a := 2;
bdy := 0.6cm;

xx := 0;
yy := 0;
ww := 9cm;
hh := 3cm;
rr := 0.3cm;
dd := 0.4cm;
yyB := yy - hh - dd;
ddY := 0.2unit;
Xvec := 2;
dC := 7bp;

penCURVE := 1.5bp;
penLN := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;

p0 := (xx + bdy, yy-hh/2-ddY);
p1 := p0 + (a,0.5)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,0.8)*unit*0.8;
p4 := p3 + (a,-0.8)*unit;
pat1 := p0..p1..p2..p3..p4;

p20 := (xx + bdy, yyB-hh/2-ddY);
p21 := p20 + (a,0.5)*unit;
p22 := p21 + (a,-0.5)*unit;
p23 := p22 + (a,0.8)*unit*0.8;
p24 := p23 + (a,-0.8)*unit;
pat2 := p20..p21..p22..p23..p24;

B_draw_rect_round(xx, yy, ww, hh, rr, penLN, black);
label.rt(btex $E$ etex, (xx+ww,yy-hh/2));

B_draw_rect_round(xx, yyB, ww, hh, rr, penLN, black);
label.rt(btex $B$ etex, (xx+ww,yyB-hh/2));

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw subpath(0,4) of pat1 withcolor 0.8white;
draw subpath(0,4) of pat2 withcolor 0.8white;

% Points on curve/path.
t0 := 0.45;         % Attachment points.
t1 := 2.63;
t2 := 3.50;
t3 := 0.20;

p10 := point t0 of pat1;
p11 := point t1 of pat1;
p12 := point t2 of pat1;
p13 := point t3 of pat1;
v[10] := direction t0 of pat1;
v[11] := direction t1 of pat1;

p30 := point t0 of pat2;
p31 := point t1 of pat2;
p32 := point t2 of pat2;
p33 := point t3 of pat2;
v[30] := direction t0 of pat2;
v[31] := direction t1 of pat2;

pickup pencircle scaled penPT;
draw p10;
draw p11;
label.bot(btex \strut$z_1\rlap{${}=\hat\gamma(t_1)$}$ etex, p10);
label.bot(btex \strut$z_2\rlap{${}=\hat\gamma(t_2)$}$ etex, p11);
draw p30;
draw p31;
label.bot(btex \strut$p_1\rlap{${}=\gamma(t_1)$}$ etex, p30);
label.bot(btex \strut$p_2\rlap{${}=\gamma(t_2)$}$ etex, p31);

pickup pencircle scaled penVEC;
drawarrow p10--(p10+v10 scaled Xvec);
drawarrow p11--(p11+v11 scaled Xvec);
drawarrow p30--(p30+v30 scaled Xvec);
drawarrow p31--(p31+v31 scaled Xvec);
label.top(btex $\hat V_1$ etex, p10+v10 scaled Xvec/2);
label.ulft(btex $\hat V_2$ etex, p11+v11 scaled Xvec/2);
label.top(btex $V_1$ etex, p30+v30 scaled Xvec/2);
label.ulft(btex $V_2$ etex, p31+v31 scaled Xvec/2);

label.urt(btex $\hat\gamma\rlap{${}=\ppara(\gamma)$}$ etex, p12);
label.urt(btex $\gamma$ etex, p32);

S_arrowspace(p33, p13, dC, 1, black);
label.rt(btex $\ppara$ etex, 0.75[p33,p13]);

endfig;
end
