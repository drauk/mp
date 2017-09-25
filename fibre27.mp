% tex/conc/mp/fibre27.mp   2014-7-9   Alan U. Kennington.
% $Id: tex/conc/mp/fibre27.mp 901bd3f9db 2014-07-09 04:26:19Z Alan U. Kennington $
% Parallel transport by an affine connection.

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
ddR := 1.75dd;
yyB := yy - hh - dd;
ddY := 0.2unit;
Xvec := 2;
dC := 7bp;
thetaZ := 70;
ratZ := 0.7;

penCURVE := 1.5bp;
penLN := 0.5bp;
penPT := 2.5bp;
penREALS := 0.5bp;
penVEC := 0.5bp;

p0 := (xx + bdy, yy-hh/2-ddY);
p1 := p0 + (a,0.7)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,0.5)*unit*0.8;
p4 := p3 + (a,-0.2)*unit;
pat1 := p0..p1..p2..p3..p4;

p20 := (xx + bdy, yyB-hh/2-ddY);
p21 := p20 + (a,0.5)*unit;
p22 := p21 + (a,-0.5)*unit;
p23 := p22 + (a,0.8)*unit*0.8;
p24 := p23 + (a,-0.8)*unit;
pat2 := p20..p21..p22..p23..p24;

p40 := (xx+ww/2, yyB-hh);           % Centre bottom of lower box.
p41 := p40 + (0pt,-ddR);            % Origin of real numbers.
p42 := (xx+ww,yy-hh/2);             % Right centre of upper box.
p43 := (xx+ww,yyB-hh/2);            % Right centre of lower box.
p44 := (xpart(p43), ypart(p41));    % Label for real number "layer".
p45 := (xx+ww/2,yy-hh);             % The "equation of motion".

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_rect_round(xx, yy, ww, hh, rr, penLN, black);
label.rt(btex $T(M)$ etex, p42);

B_draw_rect_round(xx, yyB, ww, hh, rr, penLN, black);
label.rt(btex $M$ etex, p43);

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw subpath(0,4) of pat1 withcolor 0.8white;
draw subpath(0,4) of pat2 withcolor 0.8white;

% Points on curve/path.
t0 := 0.45;         % Attachment points.
t1 := 2.63;
t2 := 3.75;
t3 := 0.10;

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
p34 := (xpart(p13),ypart(p33)); % Kludge to make the pi arrow exactly vertical.
v[30] := direction t0 of pat2;
v[31] := direction t1 of pat2;

pickup pencircle scaled penPT;
draw p10;
draw p11;
label.bot(btex \strut$z_1\rlap{${}\in T_{p_1}(M)$}$ etex, p10);
label.bot(btex \strut$z_2\rlap{${}=\ppara^\gamma(t_1,t_2)(z_1)$}$ etex, p11);
draw p30;
draw p31;
label.bot(btex \strut$p_1\rlap{${}=\gamma(t_1)$}$ etex, p30);
label.bot(btex \strut$p_2\rlap{${}=\gamma(t_2)$}$ etex, p31);

% Tips of arrows on curves.
p70 := p10+v10 scaled Xvec;
p71 := p11+v11 scaled Xvec;
p72 := p30+v30 scaled Xvec;
p73 := p31+v31 scaled Xvec;
p74 := p30+v30 rotated thetaZ scaled (Xvec*ratZ);
p75 := p31+v31 rotated thetaZ scaled (Xvec*ratZ);

pickup pencircle scaled penVEC;
drawarrow p10--p70;
drawarrow p11--p71;
drawarrow p30--p72;
drawarrow p31--p73;
drawarrow p30--p74;
drawarrow p31--p75;
label.ulft(btex $\konv_{V_1}(z_1)$ etex, 0.7[p10,p70]);
label.ulft(btex $\konv_{V_2}(z_2)$ etex, 0.7[p11,p71]+(0,2pt));
label.top(btex $V_1\rlap{${}=\gamma'(t_1)$}$ etex, 0.9[p30,p72]+(0,2pt));
label.top(btex $V_2\rlap{${}=\gamma'(t_2)$}$ etex, 0.9[p31,p73]+(0,2pt));

% label.urt(btex $\hat\gamma\rlap{${}=\ppara(\gamma)$}$ etex, p12);
label.urt(btex $\gamma(I)$ etex, p32);

label.lft(btex $z_1$ etex, p74);
label.lft(btex $z_2$ etex, p75);

S_arrowspace(p13, p34, dC, 1, black);
label.lft(btex $\pi$ etex, 0.25[p13,p34]);

label.top(btex $\partial_t(\ppara^\gamma(t_1,t)(z_1))\restrict{t=t_2}
=\konv_{\gamma'(t_2)}(\ppara^\gamma(t_1,t_2)(z_1))$ etex, p45);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Real-number parameter space.
ax := 1.6cm;
ay := 0.1cm;

p50 := (xpart(p30),ypart(p41));
p51 := (xpart(p31),ypart(p41));
p52 := 0.5[p50,p51];
p53 := (xpart(p20),ypart(p41));
p54 := (xpart(p24),ypart(p41));

p60 := 0.1[p50,p30];
p61 := 0.1[p51,p31];
p62 := 0.7[p50,p30];
p63 := 0.7[p51,p31];

pickup pencircle scaled penREALS;
drawarrow p53--p54;
label.bot(btex \strut$t_1$ etex, p50);
label.bot(btex \strut$t_2$ etex, p51);
label.bot(btex \strut$I$ etex, p52);

pickup pencircle scaled penPT;
draw p50;
draw p51;

pickup pencircle scaled penLN;
drawarrow p60--p62;
drawarrow p61--p63;
label.lft(btex $\gamma$ etex, 0.5[p60,p62]);
label.rt(btex $\gamma$ etex, 0.5[p61,p63]);

label.rt(btex $\reals$ etex, p44);

endfig;
end
