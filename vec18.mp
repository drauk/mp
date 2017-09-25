% tex/conc/mp/vec18.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec18.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% Equivalent tensor products of vectors.

verbatimtex
\input akmath
etex

beginfig(1);
numeric s[];
pair v[], w[];
color col[];

a := 3.4cm;
unit := 0.7cm;
penPT := 2.5pt;     % Points.
penVEC := 0.5pt;    % Vectors.
penDASH := 0.4pt;   % Dashed lines.
% penGREY := 0.6pt;   % Grey vectors.
penCURVE := 0.7pt;  % Curve.
col1 := 0.7 white;
col2 := 0.4 white;
w10 := (10pt,-3pt);

v1 := (unit,0)rotated 30;
v2 := (0,unit)rotated 20;

s[7] := 0.4;
s[8] := 0.5;
s[9] := 0.7;
s[10] := 1.0;
s[11] := 1/s[9];
s[12] := 1/s[8];
s[13] := 1/s[7];
sa := 7;
sb := 13;

v10 := (0,0);
v11 := v10 + (a,0);
v12 := v11 + (a,0);
v13 := v12 + (a,0);
v3 := (0,-16pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
draw
for i=sa upto sb-1:
    (v10 + s[i] * v1 + (1/s[i]) * v2)..
    endfor
(v10 + s[sb] * v1 + (1/s[sb]) * v2) withcolor col2;
draw
for i=sa upto sb-1:
    (v10 - s[i] * v1 - (1/s[i]) * v2)..
    endfor
(v10 - s[sb] * v1 - (1/s[sb]) * v2) withcolor col2;
label.top(btex $H_t$ etex, v10 + s[sb] * v1 + (1/s[sb]) * v2);
label.bot(btex $H_t$ etex, v10 - s[sb] * v1 - (1/s[sb]) * v2);

w1 := 0.5v1;
w2 := 2v2;
pickup pencircle scaled penVEC;
drawarrow v10--(v10+w1);
drawarrow v10--(v10+w2);
pickup pencircle scaled penPT;
draw v10;
pickup pencircle scaled penDASH;
draw (v10+w1)--(v10+w1+w2) dashed evenly;
draw (v10+w2)--(v10+w1+w2) dashed evenly;
label.bot(btex $\strut f(2\,v_1, 0.5\,v_2)$ etex, v10+w10);
% label.bot(btex $\strut (v_1, v_2)$ etex, v10+w10+v3);
label.bot(btex $\strut=$ etex, 0.5[v10,v11]+w10+(0,0));
% label.bot(btex $\strut\equiv$ etex, 0.5[v10,v13]+w10+(0,0)+v3);
label.rt(btex $0.5\,v_2$ etex, v10+w1);
label.top(btex $2\,v_1$ etex, v10+w2+(-3pt,0));
% label.top(btex $v_1+v_2$ etex, v10+w1+w2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
draw
for i=sa upto sb-1:
    (v11 + s[i] * v1 + (1/s[i]) * v2)..
    endfor
(v11 + s[sb] * v1 + (1/s[sb]) * v2) withcolor col2;
draw
for i=sa upto sb-1:
    (v11 - s[i] * v1 - (1/s[i]) * v2)..
    endfor
(v11 - s[sb] * v1 - (1/s[sb]) * v2) withcolor col2;
label.top(btex $H_t$ etex, v11 + s[sb] * v1 + (1/s[sb]) * v2);
label.bot(btex $H_t$ etex, v11 - s[sb] * v1 - (1/s[sb]) * v2);

w1 := v1;
w2 := v2;
pickup pencircle scaled penVEC;
drawarrow v11--(v11+w1);
drawarrow v11--(v11+w2);
pickup pencircle scaled penPT;
draw v11;
pickup pencircle scaled penDASH;
draw (v11+w1)--(v11+w1+w2) dashed evenly;
draw (v11+w2)--(v11+w1+w2) dashed evenly;
label.bot(btex $\strut f(v_1, v_2)$ etex, v11+w10);
% label.bot(btex $\strut (v_1, v_2)$ etex, v11+w10+v3);
label.bot(btex $\strut=$ etex, 0.5[v11,v12]+w10+(0,0));
% label.bot(btex $\strut\equiv$ etex, 0.5[v11,v13]+w10+(0,0)+v3);
label.rt(btex $v_2$ etex, v11+w1);
label.top(btex $v_1$ etex, v11+w2+(-2pt,0));
% label.top(btex $v_1+v_2$ etex, v11+w1+w2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
draw
for i=sa upto sb-1:
    (v12 + s[i] * v1 + (1/s[i]) * v2)..
    endfor
(v12 + s[sb] * v1 + (1/s[sb]) * v2) withcolor col2;
draw
for i=sa upto sb-1:
    (v12 - s[i] * v1 - (1/s[i]) * v2)..
    endfor
(v12 - s[sb] * v1 - (1/s[sb]) * v2) withcolor col2;
label.top(btex $H_t$ etex, v12 + s[sb] * v1 + (1/s[sb]) * v2);
label.bot(btex $H_t$ etex, v12 - s[sb] * v1 - (1/s[sb]) * v2);

w1 := 2v1;
w2 := 0.5v2;
pickup pencircle scaled penVEC;
drawarrow v12--(v12+w1);
drawarrow v12--(v12+w2);
pickup pencircle scaled penPT;
draw v12;
pickup pencircle scaled penDASH;
draw (v12+w1)--(v12+w1+w2) dashed evenly;
draw (v12+w2)--(v12+w1+w2) dashed evenly;
label.bot(btex $\strut f(0.5\,v_1,2\,v_2)$ etex, v12+w10+(10pt,0));
% label.bot(btex $\strut (0.5\,v_1,2\,v_2)$ etex, v12+w10+(10pt,0)+v3);
label.rt(btex $2\,v_2$ etex, v12+w1);
label.top(btex $\llap{$0.5$}\,v_1$ etex, v12+w2+(-1pt,0));
% label.top(btex $2v_1+0.5v_2$ etex, v12+w1+w2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
draw
for i=sa upto sb-1:
    (v13 + s[i] * v1 + (1/s[i]) * v2)..
    endfor
(v13 + s[sb] * v1 + (1/s[sb]) * v2) withcolor col2;
draw
for i=sa upto sb-1:
    (v13 - s[i] * v1 - (1/s[i]) * v2)..
    endfor
(v13 - s[sb] * v1 - (1/s[sb]) * v2) withcolor col2;
label.top(btex $H_t$ etex, v13 + s[sb] * v1 + (1/s[sb]) * v2);
label.bot(btex $H_t$ etex, v13 - s[sb] * v1 - (1/s[sb]) * v2);

w1 := -v1;
w2 := -v2;
pickup pencircle scaled penVEC;
drawarrow v13--(v13+w1);
drawarrow v13--(v13+w2);
pickup pencircle scaled penPT;
draw v13;
pickup pencircle scaled penDASH;
draw (v13+w1)--(v13+w1+w2) dashed evenly;
draw (v13+w2)--(v13+w1+w2) dashed evenly;
label.top(btex $\strut= f(-v_1,-v_2)$ etex, v13-w10+(10pt,-3pt));
% label.bot(btex $\strut (0.5\,v_1,2\,v_2)$ etex, v13+w10+(10pt,0)+v3);
label.ulft(btex $-v_2$ etex, v13+w1+(0,-2pt));
label.lrt(btex $-v_1$ etex, v13+w2+(-1pt,2pt));
% label.top(btex $2v_1+0.5v_2$ etex, v13+w1+w2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex
 $H_t = \{\lambda_1v_1+\lambda_2v_2;\;f(\lambda_1v_1,\lambda_2v_2)=t\}$ etex,
 0.5[v11,v12]+(0,-3.3unit));

endfig;
end
