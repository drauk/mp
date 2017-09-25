% tex/conc/mp/real1.mp   2015-3-12   Alan U. Kennington.
% $Id: tex/conc/mp/real1.mp bee357eb79 2015-03-12 04:33:08Z Alan U. Kennington $
% Proof of the Heine-Borel theorem.

verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
color col[];

a := 10cm;
xa := 0.1a;
xb := 0.85a;
dx := xb-xa;

nc := 10;
rc := 1.5*dx/nc;    % Apparently this is a diameter.
col1 := 0.7white;
m := 7;
penC := 0.6bp;
penR := 0.5bp;
penLN := 0.5bp;
penPT := 2.5bp;

w0 := (0,0);    % Left of real line.
w1 := (a,0);    % Right of real line.
w2 := (xa,0);   % Point a.
w3 := (xb,0);   % Point b.
w4 := ((m-0.1)/nc)[w2,w3]; % Point c.
w5 := w4+(-0.27rc,0); % Point d.
w6 := w4+(0.14rc,0); % Point e.
w7 := 0[w2,w3]+(0,-0.5rc); % Label C_1.
w8 := ((m-1)/nc)[w2,w3]+(0,-0.5rc); % Label C_1.

pickup pencircle scaled penR;
drawarrow w0--w1;
label.rt(btex $\reals$ etex, w1);

pickup pencircle scaled penC;
for i=0 upto nc:
    draw fullcircle scaled rc shifted (i/nc)[w2,w3] withcolor col1;
    endfor

% The points a and b.
pickup pencircle scaled penPT;
draw w2;
draw w3;
draw w4;
draw w5;
draw w6;

label.ulft(btex $a$ etex, w2);
label.urt(btex $b$ etex, w3);
label.bot(btex $c$ etex, w4);
label.top(btex $d$ etex, w5);
label.top(btex $e$ etex, w6);
label.lrt(btex $C$ etex, w3+(0.35rc,-0.35rc));
label.llft(btex $C$ etex, w2+(-0.35rc,-0.35rc));
label.bot(btex \strut$C_1$ etex, w7);
label.bot(btex \strut$C_1$ etex, w8);
label.bot(btex \strut$C_2\rlap{${}=C_1\cup\{G_c\}$}$ etex,
    (m/nc)[w2,w3]+(0,-0.5rc));
label.top(btex $G\rlap{${}_c$}$ etex, (m/nc)[w2,w3]+(0,0.5rc));
pickup pencircle scaled penLN;
drawdblarrow (w7+(7pt,-8pt))--(w8+(-8pt,-8pt));

endfig;
end
