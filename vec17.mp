% tex/conc/mp/vec17.mp   2012-1-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec17.mp c3d10f2836 2012-01-07 07:40:54Z Alan U. Kennington $
% Visualisation of rank-1 tensors.

% input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair v[], w[];
color col[];

a := 6.7cm;
b := 2.3cm;
unit := 0.9cm;
scp := 2.8pt;       % Points.
scv := 0.8pt;       % Vectors.
scd := 0.4pt;       % Dashed lines.
scg := 0.6pt;       % Grey vectors.
col1 := 0.4 white;
col2 := black;
len := 1.8;
v1 := (2.15unit,0) rotated -10;
spx := 15pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w10 := (unit,0) rotated 125; % Tangent to plane.
w11 := w10 rotated -90; % Normal to plane.
w12 := (xpart(w11),0.22unit);

v10 := (0,0);

pickup pencircle scaled scd;
for i=-2 step 1 until 3:
    w[20+i] := v10 + i*w12 + w10*len;
    w[40+i] := v10 + i*w12 - w10*len;
    draw w[20+i]--w[40+i];
    endfor
label.top(btex $H_{-2}$ etex, w[18]);
label.top(btex $H_{-1}$ etex, w[19]);
label.top(btex $H_0$ etex, w[20]);
label.top(btex $H_1$ etex, w[21]);
label.top(btex $H_2$ etex, w[22]);
label.top(btex $H_3$ etex, w[23]);

label.bot(btex $\scriptstyle t=-2$ etex, w[38]);
label.bot(btex $\scriptstyle t=-1$ etex, w[39]);
label.bot(btex $\scriptstyle t=0$ etex, w[40]);
label.bot(btex $\scriptstyle t=1$ etex, w[41]);
label.bot(btex $\scriptstyle t=2$ etex, w[42]);
label.bot(btex $\scriptstyle t=3$ etex, w[43]);

pickup pencircle scaled scv;
for j=-1 step 1 until 5:
    w[30+j] := v10 + v1 + (j*0.52) * w10;
    drawarrow v10--w[30+j] withcolor col1;
    endfor
drawarrow v10--w30 withcolor col2;
label.lft(btex 0 etex, v10+(-2pt,-2pt));
label.rt(btex $v$ etex, w[30]+(1pt,1pt));
label.rt(btex $w$ etex, w[34]+(0,2pt));

pickup pencircle scaled scp;
draw v10;

v2 := (xpart(v10 - w10*len),0) + (0,-b);
label.bot(btex $H_t=\bigl\{u;\;f(u)=t\bigr\}$ etex, v2);
label.bot(btex $f(w)=f(v)$ etex, v2+(0,-spx));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w50 := (unit,0) rotated 80; % Tangent to plane.
w51 := w50 rotated -90; % Normal to plane.
w52 := (xpart(w51),-0.18unit) scaled 0.9;

v50 := (a,0);

pickup pencircle scaled scd;
for i=-2 step 1 until 3:
    w[60+i] := v50 + i*w52 + w50*len;
    w[80+i] := v50 + i*w52 - w50*len;
    draw w[60+i]--w[80+i];
    endfor
label.top(btex $H'_{-2}$ etex, w[58]);
label.top(btex $H'_{-1}$ etex, w[59]);
label.top(btex $H'_0$ etex, w[60]);
label.top(btex $H'_1$ etex, w[61]);
label.top(btex $H'_2$ etex, w[62]);
label.top(btex $H'_3$ etex, w[63]);

label.bot(btex $\scriptstyle t=-2$ etex, w[78]);
label.bot(btex $\scriptstyle t=-1$ etex, w[79]);
label.bot(btex $\scriptstyle t=0$ etex, w[80]);
label.bot(btex $\scriptstyle t=1$ etex, w[81]);
label.bot(btex $\scriptstyle t=2$ etex, w[82]);
label.bot(btex $\scriptstyle t=3$ etex, w[83]);

pickup pencircle scaled scv;
for j=-3 step 1 until 3:
    w[70+j] := v50 + v1 + (j*0.48) * w50;
    drawarrow v50--w[70+j] withcolor col1;
    endfor
drawarrow v50--w70 withcolor col2;
label.lft(btex 0 etex, v50+(-2pt,-2pt));
label.rt(btex $v$ etex, w[70]);
label.rt(btex $w'$ etex, w[72]);

pickup pencircle scaled scp;
draw v50;

pickup pencircle scaled scv;
drawarrow (v10--w34) shifted (v50-v10) withcolor col1 dashed evenly;
label.top(btex $w$ etex, w[34]+v50-v10+(0,0));

drawarrow (v50--w72) shifted (v10-v50) withcolor col1 dashed evenly;
label.ulft(btex $w'$ etex, w[72]+v10-v50+(0,0));

v42 := (xpart(v50 - w50*len),0) + (0,-b);
label.bot(btex $H'_t=\bigl\{u;\;f'(u)=t\bigr\}$ etex, v42);
label.bot(btex $f'(w')=f'(v)$ etex, v42+(0,-spx));

endfig;
end
