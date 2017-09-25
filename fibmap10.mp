% tex/conc/mp/fibmap10.mp   2016-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap10.mp 3f829ff4e7 2016-12-22 17:47:07Z Alan U. Kennington $
% Maps for the definition of a fibre bundle.

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
b := 2.0cm;
e := 0.25cm;           % Circle on arrow.
c := 2.3cm;
penLN := 0.5bp;
penPT := 2.5bp;
penRAY := 0.6bp;

% Centres of circles.
w0 := (0,0);           % Set E.
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,-c/2);     % Set F1.
w3 := w0+(a,c/2);      % Set F2.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $E$ etex, w0-(q,0));
label.lft(btex $B$ etex, w1-(q,0));
label.rt(btex $F$ etex, w2+(q,0));
label.rt(btex $F$ etex, w3+(q,0));

% Point b in B.
v10 := w1+(r/4,0);
pickup pencircle scaled penPT;
draw v10;
label.lft(btex $b$ etex, v10);

% The set pi^{-1}({b}).
v11 := w0+(r/4,r/6);
f := r/2;
pickup pencircle scaled penLN;
fill fullcircle scaled (f*2) shifted v11 withcolor 0.93white;
draw fullcircle scaled (f*2) shifted v11;
v12 := v11+(0,-f);
v13 := v11+(f+r/6,0)rotated150;

% A label for pi^{-1}({b}).
x0 := w0+(r*2.1,0)rotated115;
y0 := v13;
v0 := 0.5[x0,y0]+(0,r/4)rotated135;
drawarrow x0..v0..y0 withcolor0.6white;
label.top(btex $\pi^{-1}(\{b\})$ etex, x0);

% Coordinates for ends of arrows.
x0 := v10+(0,r/4);
y0 := v12+(0,-r/4);
v0 := 0.5[x0,y0];

x1 := w3+(0,-q*1.1);
y1 := w2+(0,q*1.1);
v1 := 0.5[x1,y1];

% The arrows.
drawarrow x0--y0;
drawarrow y1--x1;

% Labels on the arrows.
label.lft(btex \strut$\pi^{-1}$ etex, v0);
label.rt(
% btex $\beta_{b,\phi_2}\circ\beta^{-1}_{b,\phi_1}=L_g,\,\forsome g\in G$ etex,
 btex $g_{\phi_2,\phi_1}(b)$ etex,
 v1);

% Draw the rays from pi^{-1}({b}) to F.
pickup pencircle scaled penRAY;
S_rays(v11,f*2,w3,d,6,1,0.6white);
S_rays(v11,f*2,w2,d,6,1,0.6white);

% Label the "rays" from pi^{-1}({b}) to F.
S_raylabels(v11,f*2,w3,d,
% btex $\beta_{b,\phi_2}=\phi_2\restrict{\pi^{-1}(\{b\})}$ etex,"");
 btex $\phi_2\restrict{\pi^{-1}(\{b\})}$ etex,"");
S_raylabels(v11,f*2,w2,d,"",
% btex $\beta_{b,\phi_1}=\phi_1\restrict{\pi^{-1}(\{b\})}$ etex);
 btex $\phi_1\restrict{\pi^{-1}(\{b\})}$ etex);

endfig;
end
