% tex/conc/mp/vec1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec1.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% Equivalent tensor products of vectors.

verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];
color col[];

a := 3.6cm;
unit := 1cm;
penPT := 2.5pt;     % Points.
penVEC := 0.5pt;    % Vectors.
penDASH := 0.4pt;   % Dashed lines.
penGREY := 0.6pt;   % Grey vectors.
col1 := 0.7 white;
w10 := (10pt,-0.7cm);

v1 := (unit,0)rotated 20;
v2 := (0,unit)rotated 10;

v10 := (0,0);
v11 := v10 + (a,0);
v12 := v11 + (a,0);
v13 := v12 + (a,0);

w1 := v1;
w2 := v2;
pickup pencircle scaled penVEC;
drawarrow v10--(v10+w1);
drawarrow v10--(v10+w2);
pickup pencircle scaled penPT;
draw v10;
pickup pencircle scaled penDASH;
draw (v10+w1)--(v10+w1+w2) dashed evenly;
draw (v10+w2)--(v10+w1+w2) dashed evenly;
label.bot(btex $\strut v_1\land v_2$ etex, v10+w10);
label.bot(btex $\strut=$ etex, 0.5[v10,v11]+w10+(-8pt,0));
label.rt(btex $v_1$ etex, v10+w1);
label.top(btex $v_2$ etex, v10+w2);
label.top(btex $v_1+v_2$ etex, v10+w1+w2);

w1 := v1;
w2 := v1 + v2;
pickup pencircle scaled penGREY;
drawarrow v11--(v11+v2) withcolor col1;
pickup pencircle scaled penVEC;
drawarrow v11--(v11+w1);
drawarrow v11--(v11+w2);
pickup pencircle scaled penPT;
draw v11;
pickup pencircle scaled penDASH;
draw (v11+w1)--(v11+w1+w2) dashed evenly;
draw (v11+w2)--(v11+w1+w2) dashed evenly;
label.bot(btex $\strut v_1\land(v_1 + v_2)$ etex, v11+w10);
label.bot(btex $\strut=$ etex, 0.5[v11,v12]+w10+(-6.5pt,0));
label.rt(btex $v_1$ etex, v11+w1);
label.top(btex $v_1+v_2$ etex, v11+w2);
label.top(btex $2v_1\rlap{${}+v_2$}$ etex, v11+w1+w2);
label.top(btex $v_2$ etex, v11+v2);

w1 := 0.5(v1-v2);
w2 := v1 + v2;
pickup pencircle scaled penGREY;
drawarrow v12--(v12+v1) withcolor col1;
pickup pencircle scaled penVEC;
drawarrow v12--(v12+w1);
drawarrow v12--(v12+w2);
pickup pencircle scaled penPT;
draw v12;
pickup pencircle scaled penDASH;
draw (v12+w1)--(v12+w1+w2) dashed evenly;
draw (v12+w2)--(v12+w1+w2) dashed evenly;
label.bot(btex $\strut 0.5(v_1-v_2)\land(v_1+v_2)$ etex, v12+w10+(10pt,0));
label.bot(btex $\strut=$ etex, 0.5[v12,v13]+w10+(23.5pt,0));
label.rt(btex $0.5(v_1-v_2)$ etex, v12+w1);
label.top(btex $\llap{$v_1+{}$}v_2$ etex, v12+w2);
label.top(btex $1.5\rlap{$v_1+0.5v_2$}$ etex, v12+w1+w2);
label.rt(btex $v_1$ etex, v12+v1);

w1 := 2v1;
w2 := 0.5v2;
pickup pencircle scaled penVEC;
drawarrow v13--(v13+w1);
drawarrow v13--(v13+w2);
pickup pencircle scaled penPT;
draw v13;
pickup pencircle scaled penDASH;
draw (v13+w1)--(v13+w1+w2) dashed evenly;
draw (v13+w2)--(v13+w1+w2) dashed evenly;
label.bot(btex $\strut(2v_1)\land(0.5v_2)$ etex, v13+w10+(20pt,0));
label.rt(btex $2v_1$ etex, v13+w1);
label.top(btex $\llap{$0.5$}v_2$ etex, v13+w2);
label.top(btex $2v_1+0.5v_2$ etex, v13+w1+w2);

endfig;
end
