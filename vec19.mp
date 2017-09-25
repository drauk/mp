% tex/conc/mp/vec19.mp   2011-2-16   Alan U. Kennington.
% $Id: tex/conc/mp/vec19.mp 79a0e6ea61 2011-02-16 07:25:08Z Alan U. Kennington $
% Level curves of dual space basis vector for varying primal basis.

% input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair v[], w[];
color col[];

a := 6.4cm;
b := 2.1cm;
unit := 0.82cm;
scp := 2.8pt;       % Points.
scv := 0.8pt;       % Vectors.
scd := 0.6pt;       % Contour lines.
scg := 0.6pt;       % Grey vectors.
col1 := 0.4 white;
col2 := black;
col3 := 0.5 white;
len := 1.8;
v1 := (unit,0) rotated -10;
spx := 14pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
v50 := (0,0);
v52 := v50 + v1;

w50 := (unit,0) rotated 70;
w51 := w50 rotated -90;
w52 := (xpart(w51),-0.18unit) scaled 0.9;

pickup pencircle scaled scd;
for i=-2 step 1 until 3:
    w[60+i] := v50 + i*v1 + w50*(len+i*0.07);
    w[80+i] := v50 + i*v1 - w50*(len-i*0.07);
    draw w[60+i]--w[80+i] withcolor col3;
    endfor
v51 := v50 + w50 * len * 0.6;
label.top(btex $H_{-2}$ etex, w[58]);
label.top(btex $H_{-1}$ etex, w[59]);
label.top(btex $H_0$ etex, w[60]);
label.top(btex $H_1$ etex, w[61]);
label.top(btex $H_2$ etex, w[62]);
label.top(btex $H_3$ etex, w[63]);

label.bot(btex $\scriptstyle t=-2$ etex, w[78]+(-2pt,0));
label.bot(btex $\scriptstyle t=-1$ etex, w[79]);
label.bot(btex $\scriptstyle t=0$ etex, w[80]);
label.bot(btex $\scriptstyle t=1$ etex, w[81]);
label.bot(btex $\scriptstyle t=2$ etex, w[82]);
label.bot(btex $\scriptstyle t=3$ etex, w[83]);

pickup pencircle scaled scv;
drawarrow v50--v52 withcolor col2;
label.rt(btex $e_1$ etex, v52);

pickup pencircle scaled scv;
drawarrow v50--v51 withcolor col2;
label.rt(btex $e_2$ etex, v51);

pickup pencircle scaled scp;
draw v50;
label.lft(btex 0 etex, v50+(-2pt,-2pt));

v42 := (xpart(v50 - w50*len),0) + (0,-b);
label.bot(btex \strut $H_t=\bigl\{v\in V;\;h_1(v)=t\bigr\}$ etex, v42);
label.bot(btex \strut $v=v_1e_1+v_2e_2$ etex, v42+(0,-spx));
label.bot(btex \strut $h_1(v)=v_1$ etex, v42+(0,-2spx));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
v10 := (a,0);
v12 := v10 + v1;
w10 := (unit,0) rotated 125;

pickup pencircle scaled scd;
for i=-2 step 1 until 3:
    w[20+i] := v10 + i*v1 + w10*(len+i*0.12);
    w[40+i] := v10 + i*v1 - w10*(len-i*0.12);
    draw w[20+i]--w[40+i] withcolor col3;
    endfor
v11 := v10 + w10 * len * 0.6;
label.top(btex $H'_{-2}$ etex, w[18]);
label.top(btex $H'_{-1}$ etex, w[19]);
label.top(btex $H'_0$ etex, w[20]);
label.top(btex $H'_1$ etex, w[21]);
label.top(btex $H'_2$ etex, w[22]);
label.top(btex $H'_3$ etex, w[23]);

label.bot(btex $\scriptstyle t=-2$ etex, w[38]+(-4pt,0));
label.bot(btex $\scriptstyle t=-1$ etex, w[39]);
label.bot(btex $\scriptstyle t=0$ etex, w[40]);
label.bot(btex $\scriptstyle t=1$ etex, w[41]);
label.bot(btex $\scriptstyle t=2$ etex, w[42]);
label.bot(btex $\scriptstyle t=3$ etex, w[43]);

pickup pencircle scaled scv;
drawarrow v10--v12 withcolor col2;
label.rt(btex $e_1$ etex, v12);

pickup pencircle scaled scv;
drawarrow v10--v11 withcolor col2;
label.urt(btex $e'_2$ etex, v11+(-1pt,-1pt));

pickup pencircle scaled scp;
draw v10;
label.lft(btex 0 etex, v10+(-2pt,-2pt));

v2 := (xpart(v10 - w10*len),0) + (0,-b);
label.bot(btex \strut $H'_t=\bigl\{v\in V;\;h_1'(v)=t\bigr\}$ etex, v2);
label.bot(btex \strut $v=v_1e_1+v'_2e'_2$ etex, v2+(0,-spx));
label.bot(btex \strut $h'_1(v)=v_1$ etex, v2+(0,-2spx));

endfig;
end
