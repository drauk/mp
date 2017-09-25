% tex/conc/mp/fibmap11.mp   2016-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap11.mp 3f829ff4e7 2016-12-22 17:47:07Z Alan U. Kennington $
% Fibre bundle map - from one fibre bundle to another.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];

d := 1.1cm;
r := d/2;
q := r*1.2;
a := 3.8cm;
b := 2.3cm;
e := 0.25cm;           % Circle on arrow.
c := 2.3cm;
penLN := 0.5bp;
penPT := 2.5bp;
penRAY := 0.6bp;

% Centres of circles.
w0 := (0,0);           % Set E1.
w1 := w0+(0,-b);       % Set B1.
w2 := w0+(0,b);        % Set F1.

w3 := (a,0);           % Set E1.
w4 := w3+(0,-b);       % Set B1.
w5 := w3+(0,b);        % Set F2.

% The circles.
pickup pencircle scaled penLN;
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
% draw fullcircle scaled d shifted w3;
% draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

S_subset(w0,d,3.3,-0.6,0.95,55);
S_subset(w1,d,3.1,-0.6,0.95,90);
S_subset(w3,d,3.3,-0.6,0.95,125);
S_subset(w4,d,3.1,-0.6,0.95,90);

% Labels for the circles.
label.lft(btex $\Domain(\phi_1)\subseteq E_1$ etex, w0+(-q,0));
label.lft(btex $U_1=\pi_1(\Domain(\phi_1))$ etex, w1+(-q,0));
label.bot(btex $B_1$ etex, w1+(0,-q));
label.lft(btex $F$ etex, w2+(-q,0));

label.rt(btex $\Domain(\phi_2)\subseteq E_2$ etex, w3+(q,0));
label.rt(btex $\pi_2(\Domain(\phi_2))=U_2$ etex, w4+(q,0));
label.bot(btex $B_2$ etex, w4+(0,-q));
label.rt(btex $F$ etex, w5+(q,0));

% Point b in B.
pickup pencircle scaled penPT;
v10 := w1+(r/4,0);
draw v10;
label.lft(btex $b$ etex, v10);

% Point tilde f(b) in B.
v20 := w4+(-r/2,0);
draw v20;
label.rt(btex $\tilde f(b)$ etex, v20);

% The set pi_1^{-1}({b}).
pickup pencircle scaled penLN;
v11 := w0+(r/4,r/6);
f := r/2;
fill fullcircle scaled (f*2) shifted v11 withcolor 0.93white;
draw fullcircle scaled (f*2) shifted v11;
v12 := v11+(0,-f);
v13 := v11+(f+r/6,0)rotated180;

% A label for pi_1^{-1}({b}).
x0 := w0+(r*2.1,0)rotated-140;
y0 := v13;
v0 := 0.5[x0,y0]+(0,r/4)rotated135;
drawarrow x0{dir45}..{right}y0 withcolor0.6white;
label.llft(btex $\pi_1^{-1}(\{b\})$ etex, x0);

% The set pi_2^{-1}({b}).
v21 := w3+(-r/4,r/6);
f := r/2;
fill fullcircle scaled (f*2) shifted v21 withcolor 0.93white;
draw fullcircle scaled (f*2) shifted v21;
v22 := v21+(0,-f);
v23 := v21+(f+r/6,0)rotated0;

% A label for pi_2^{-1}({tilde f(b)}).
x0 := w3+(r*2.1,0)rotated-40;
y0 := v23;
v0 := 0.5[x0,y0]+(0,r/4)rotated135;
drawarrow x0{dir135}..{left}y0 withcolor0.6white;
label.lrt(btex $\pi_2^{-1}(\{\tilde f(b)\})$ etex, x0);

% Arrow pi_1
x0 := v10+(0,r/4);
y0 := v12+(0,-r/4);
v0 := 0.5[x0,y0];
drawarrow y0--x0;
label.lft(btex $\pi_1$ etex, v0);

% Arrow pi_2
x0 := v20+(0,r/4);
y0 := v22+(0,-r/4);
v0 := 0.5[x0,y0];
drawarrow y0--x0;
label.rt(btex $\pi_2$ etex, v0);

% Arrow F_1 to F_2.
x0 := w2+(q,0);
y0 := w5+(-q,0);
v0 := 0.5[x0,y0];
drawarrow x0--y0;
label.top(btex $\rho_{\phi_2,\phi_1}(b)\in G$ etex, v0);

% Arrow E_1 to E_2.
x0 := w0+(q,0);
y0 := w3+(-q,0);
v0 := 0.5[x0,y0];
drawarrow x0--y0;
label.top(btex $f$ etex, v0);

% Arrow B_1 to B_2.
x0 := w1+(q,0);
y0 := w4+(-q,0);
v0 := 0.5[x0,y0];
drawarrow x0--y0;
label.top(btex $\tilde f$ etex, v0);

% Draw the rays from pi_i^{-1}({b}) to F.
pickup pencircle scaled penRAY;
S_rays(v11,f*2,w2,d,6,1,0.6white);
S_rays(v21,f*2,w5,d,6,1,0.6white);

% Label the "rays" from pi^{-1}({b}) to F.
% S_raylabels(v11,f*2,w2,d,btex $\beta_{b,\phi_1}$ etex,"");
% S_raylabels(v21,f*2,w5,d,"",btex $\beta_{b,\phi_2}$ etex);

S_raypoints(x)(v11,f*2,w2,d);
label.lft(btex $\beta_{b,\phi_1}$ etex, 0.5[x0,x1]);
% label.rt(btex $\beta_{\phi_1,b}$ etex, 0.5[x2,x3]);
label.rt(btex $\phi_1$ etex, 0.5[x2,x3]);

S_raypoints(x)(v21,f*2,w5,d);
label.rt(btex $\beta_{\tilde f(b),\phi_2}$ etex, 0.5[x2,x3]);
% label.lft(btex $\beta_{\phi_2,b}$ etex, 0.5[x0,x1]);
label.lft(btex $\phi_2$ etex, 0.5[x0,x1]);

endfig;
end
