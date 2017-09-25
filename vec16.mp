% tex/conc/mp/vec16.mp   2010-8-24   Alan U. Kennington.
% $Id: tex/conc/mp/vec16.mp ceaa9dcb68 2010-08-23 15:10:01Z Alan U. Kennington $
% Equivalent tensor products of vectors.

% input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair v[], w[];
color col[];

a := 3.6cm;
unit := 1cm;
scp := 2.8pt;       % Points.
scv := 0.8pt;       % Vectors.
scd := 0.4pt;       % Dashed lines.
scg := 0.6pt;       % Grey vectors.
col1 := 0.7 white;
w10 := (10pt,-0.3cm);

v1 := (unit,0)rotated 20;
v2 := (0,unit)rotated 10;

v10 := (0,0);
v13 := v10 + (a,0);
v3 := (0,-16pt);

w1 := v1;
w2 := v2;
pickup pencircle scaled scv;
drawarrow v10--(v10+w1);
drawarrow v10--(v10+w2);
pickup pencircle scaled scp;
draw v10;
pickup pencircle scaled scd;
% draw (v10+w1)--(v10+w1+w2) dashed evenly;
% draw (v10+w2)--(v10+w1+w2) dashed evenly;
label.bot(btex $\strut f(v_1, v_2)$ etex, v10+w10);
label.bot(btex $\strut (v_1, v_2)$ etex, v10+w10+v3);
label.bot(btex $\strut=$ etex, 0.5[v10,v13]+w10+(0,0));
label.bot(btex $\strut\equiv$ etex, 0.5[v10,v13]+w10+(0,0)+v3);
label.rt(btex $v_2$ etex, v10+w1);
label.top(btex $v_1$ etex, v10+w2);
% label.top(btex $v_1+v_2$ etex, v10+w1+w2);

w1 := 2v1;
w2 := 0.5v2;
pickup pencircle scaled scv;
drawarrow v13--(v13+w1);
drawarrow v13--(v13+w2);
pickup pencircle scaled scp;
draw v13;
pickup pencircle scaled scd;
% draw (v13+w1)--(v13+w1+w2) dashed evenly;
% draw (v13+w2)--(v13+w1+w2) dashed evenly;
label.bot(btex $\strut f(0.5\,v_1,2\,v_2)$ etex, v13+w10+(10pt,0));
label.bot(btex $\strut (0.5\,v_1,2\,v_2)$ etex, v13+w10+(10pt,0)+v3);
label.rt(btex $2\,v_2$ etex, v13+w1);
label.top(btex $\llap{$0.5$}\,v_1$ etex, v13+w2);
% label.top(btex $2v_1+0.5v_2$ etex, v13+w1+w2);

endfig;
end
