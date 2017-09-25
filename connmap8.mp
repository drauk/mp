% tex/conc/mp/connmap8.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/connmap8.mp 1bcf704d45 2015-05-09 09:51:47Z Alan U. Kennington $
% Porting parallelism between associated fibre bundles.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair v[], w[];

d := 0.9cm;
r := d/2;
q := r + 1.5pt;
qq := r + 3.5pt;
a := 3.75cm;
b := 1.78cm;
dcirc := 4pt;       % Circles on arrows.
yyy := 1.5r;        % Distance of labels below diagram.
v10 := (1.9a,0);    % Separation of the two diagrams.
penGAMMA := 1.2bp;
penPT := 2.5bp;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% Points inside circles.
v0 := w0+(r/2,0);
v1 := w1+(-r/2,0);

% Labels for the circles.
label.lft(btex $B$ etex, w0-(q,0));
label.rt(btex $B$ etex, w1+(q,0));
label.lft(btex $E_{\gamma(s)}$ etex, w2-(q,0));
label.rt(btex $E_{\gamma(t)}$ etex, w3+(q,0));
label.lft(btex $F$ etex, w4-(q,0));
label.rt(btex $F$ etex, w5+(q,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
% S_arrowspacesstyle(w4,w5,qq,qq,1)(dashed evenly scaled 0.7);
S_arrowspace(w4,w5,qq,1,black);
label.top(btex \strut$L_g$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,qq,1,black);
label.bot(btex \strut
$\displaystyle\ppara_{s,t}^\gamma=L_{g,\phi_1,\phi_2}^{\gamma(s),\gamma(t)}$
etex, 0.5[w2,w3]);

pickup pencircle scaled penGAMMA;
draw (v0..(0.25[v0,v1]+(0,0.1b))..(0.5[v0,v1]+(0,-0.1b))
      ..(0.75[v0,v1]+(0,0.15b))..v1) withcolor 0.65white;
% S_arrowspace(w0,w1,qq,1,black);
label.top(btex \strut$\gamma$ etex, 0.5[w0,w1]);

% Points inside circles.
v0 := w0+(r/2,0);
v1 := w1+(-r/2,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Points inside circles.
pickup pencircle scaled penPT;
draw v0;
label.lft(btex $\scriptstyle \gamma(s)$ etex, v0);

draw v1;
label.rt(btex $\scriptstyle \gamma(t)$ etex, v1);

% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2, w0, qq, 1, black);
label.lft(btex \strut$\pi$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, qq, 1, black);
label.rt(btex \strut$\pi$ etex, 0.5[w1,w3]);

S_arrowspace(w4, w2, qq, 2, black);
label.lft(btex \strut$\beta_{\gamma(s),\phi_1}$ etex, 0.5[w4,w2]);
label.rt(btex \strut$\phi_1$ etex, 0.5[w4,w2]);

S_arrowspace(w5, w3, qq, 2, black);
label.rt(btex \strut$\beta_{\gamma(t),\phi_2}$ etex, 0.5[w5,w3]);
label.lft(btex \strut$\phi_2$ etex, 0.5[w5,w3]);

% Label below diagram.
label.bot(btex $\displaystyle\ppara_{s,t}^\gamma
 =L_{g,\phi_1,\phi_2}^{\gamma(s),\gamma(t)}
 =\beta_{\gamma(t),\phi_2}^{-1}\circ L_g\circ\beta_{\gamma(s),\phi_1}$ etex,
 0.5[w0,w1]+(0,-yyy));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Right-hand diagram.
% Centres of circles.
w0 := v10;
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% Points inside circles.
v0 := w0+(r/2,0);
v1 := w1+(-r/2,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.lft(btex $B$ etex, w0-(q,0));
label.rt(btex $B$ etex, w1+(q,0));
label.lft(btex $\tilde E_{\gamma(s)}$ etex, w2-(q,0));
label.rt(btex $\tilde E_{\gamma(t)}$ etex, w3+(q,0));
label.lft(btex $\tilde F$ etex, w4-(q,0));
label.rt(btex $\tilde F$ etex, w5+(q,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
% S_arrowspacesstyle(w4,w5,qq,qq,1)(dashed evenly scaled 0.7);
S_arrowspace(w4,w5,qq,1,black);
label.top(btex \strut$L_{\tilde g};\;\tilde g=g$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,qq,1,black);
label.bot(btex \strut$\displaystyle\tilde\ppara_{s,t}^\gamma
 =L_{\tilde g,\tilde\phi_1,\tilde\phi_2}^{\gamma(s),\gamma(t)}$
etex, 0.5[w2,w3]);

pickup pencircle scaled penGAMMA;
draw (v0..(0.25[v0,v1]+(0,0.1b))..(0.5[v0,v1]+(0,-0.1b))
      ..(0.75[v0,v1]+(0,0.15b))..v1) withcolor 0.65white;
% S_arrowspace(w0,w1,qq,1,black);
label.top(btex \strut$\gamma$ etex, 0.5[w0,w1]);

% Points inside circles.
pickup pencircle scaled penPT;
draw v0;
label.lft(btex $\scriptstyle \gamma(s)$ etex, v0);

draw v1;
label.rt(btex $\scriptstyle \gamma(t)$ etex, v1);

% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2, w0, qq, 1, black);
label.lft(btex \strut$\tilde\pi$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, qq, 1, black);
label.rt(btex \strut$\tilde\pi$ etex, 0.5[w1,w3]);

S_arrowspace(w4, w2, qq, 2, black);
label.lft(btex \strut$\tilde\beta_{\gamma(s),\tilde\phi_1}$ etex, 0.5[w4,w2]);
label.rt(btex \strut$\scriptstyle\tilde\phi_1=h(\phi_1)$ etex, 0.5[w4,w2]);

S_arrowspace(w5, w3, qq, 2, black);
label.rt(btex \strut$\tilde\beta_{\gamma(t),\tilde\phi_2}$ etex, 0.5[w5,w3]);
label.lft(btex \strut$\scriptstyle\tilde\phi_2=h(\phi_2)$ etex, 0.5[w5,w3]);

% Label below diagram.
label.bot(btex $\displaystyle\tilde\ppara_{s,t}^\gamma
 =L_{\tilde g,\tilde\phi_1,\tilde\phi_2}^{\gamma(s),\gamma(t)}
 =\tilde\beta_{\gamma(t),\tilde\phi_2}^{-1}\circ L_{\tilde g}
 \circ\tilde\beta_{\gamma(s),\tilde\phi_1}$ etex,
 0.5[w0,w1]+(0,-yyy));

endfig;
end
