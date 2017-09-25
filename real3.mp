% tex/conc/mp/real3.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/real3.mp c1042c4ff2 2012-05-07 09:22:41Z Alan U. Kennington $
% Ambiguity of determination of curve by set and end-points.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

% Spacing between diagram components.
ww := 6cm;
hh := 2.35cm;

% The parameter intervals.
aa := 1.8cm;
bb := 1mm;
unitt := 0.6aa;

w0 := (0,0);
w1 := w0 + (0,-hh);
w2 := w0 + (ww,-hh);
w3 := w0 + (0,0);
w4 := w0 + (ww,0);

% The point space.
unit := 2cm;
a := 1.2unit;
b := 1.25cm;
bd := 3mm;
spp := 0.5mm;
sp := 2spp;
col1 := 0.6white;
col2 := 0.6white;
htt := 2.2mm;
htb := 2.2mm;

penLOOPL := 1.1pt;      % Arrow thickness, left curve.
penLOOP := 1.0pt;       % Arrow thickness, right curve.
penARROW := 0.5bp;
penAXIS := 0.5bp;
penREAL := 0.6bp;       % Real number sets.
penX := 1.2bp;          % Displacement arrows in real number sets.

zz0 := w3;
zz1 := zz0 + (a,0);
zz2 := zz0 + (0,b);
zz3 := zz0 + (-a,0);
zz4 := zz0 + (0,-bd);

zz10 := w4;
zz11 := zz10 + (a,0);
zz12 := zz10 + (0,b);
zz13 := zz10 + (-a,0);
zz14 := zz10 + (0,-bd);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The parameter intervals.
pickup pencircle scaled penREAL;
S_realscol(w1, aa, bb, pencircle scaled penREAL, col2, col2);
S_realscol(w2, aa, bb, pencircle scaled penREAL, col2, col2);

pickup pencircle scaled penX;
drawarrow w1--w1+(unitt,0);
drawarrow w2--w2+(unitt,0);
label.top(btex \strut$t=\pi$ etex, w1+(unitt,0));
label.top(btex \strut$t=\pi$ etex, w2+(unitt,0));

%------------------------------------------------------------------------------
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;

% Draw the path traversals.
pat1 := w3+(unit,0)--w3+(-unit,0);

pickup pencircle scaled penLOOPL;
drawarrow pat1;
label.top(btex \strut$t=0$ etex, w3+(unit,0));
label.top(btex \strut$t=\pi$ etex, w3+(-unit,0));
label.bot(btex \strut$1$ etex, w3+(unit,0));
label.bot(btex \strut$\llap{$-{}$}1$ etex, w3+(-unit,0));

pickup pencircle scaled penARROW;
w11 := w1+(0,htb+bb);
w13 := w3+(0,-htt-bd);
drawarrow w11--w13;
label.lft(btex $\gamma_1$ etex, 0.5[w11,w13]);
label.rt(btex $t\mapsto(\cos t,0)$ etex, 0.5[w11,w13]);

%------------------------------------------------------------------------------
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz13--zz11 withcolor col1;
drawarrow zz14--zz12 withcolor col1;

% Draw the path traversals.
pat2 := w4+(unit,sp)--w4+(-unit,sp);
pat2 := pat2 & (subpath(0,4) of
 ((fullcircle rotated90) scaled sp shifted (w4+(-unit,spp))));
pat2 := pat2 & (w4+(-unit,0)--w4+(unit,0));
pat2 := pat2 & (subpath(0,4) of
 ((reverse fullcircle rotated90) scaled sp shifted (w4+(unit,-spp))));
pat2 := pat2 & (w4+(unit,-sp)--w4+(-unit,-sp));

pickup pencircle scaled penLOOP;
drawarrow pat2;
label.top(btex \strut$t=0$ etex, w4+(unit,sp));
label.top(btex \strut$t=\pi/3$ etex, w4+(-unit,sp));
label.bot(btex \strut$t=2\pi/3$ etex, w4+(unit,-sp));
label.bot(btex \strut$t=\pi$ etex, w4+(-unit,-sp));

pickup pencircle scaled penARROW;
w12 := w2+(0,htb+bb);
w14 := w4+(0,-htt-bd);
drawarrow w12--w14;
label.lft(btex $\gamma_2$ etex, 0.5[w12,w14]);
label.rt(btex $t\mapsto(\cos 3t,0)$ etex, 0.5[w12,w14]);

endfig;
end
