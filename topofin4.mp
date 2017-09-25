% tex/conc/mp/topofin4.mp   2015-8-9   Alan U. Kennington.
% $Id: tex/conc/mp/topofin4.mp 6460a23346 2015-08-09 11:14:20Z Alan U. Kennington $
% Counterexamples for weakly and strongly connected function conjectures.

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

a := 0.6cm;             % Distance between points 1, 2 and 3.
aa := 4.2cm;            % Distance between topologies.
bb := 2.6cm;            % Distance between topologies.
xsp := 2.2pt;           % Inter-box spacing.
dxx := (a - xsp)/2;
dyy := 10pt;
dd := dyy + xsp - 3pt;
sepA := 2.5bp;
dyyA := dyy+3xsp+sepA;
sepB := 3pt;
sepC := 12pt;

penBOX := 0.5pt;        % Box boundary thickness.
penARROW := 0.5pt;      % Arrow thickness.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w0 := (0,0);
% w1 := w0 + (aa+xsp,0);
w1 := w0 + (aa,0);
w3 := w0 + (0,-bb);
w4 := w3 + (aa,0);

w10 := w0 + (a,0);
w11 := w1 + (a,0);
w13 := w3 + (a,0);
w14 := w4 + (a,0);

w20 := w10 + (a,0);
w21 := w11 + (a,0);
w23 := w13 + (a,0);
w24 := w14 + (a,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex $1$ etex, w0);
label(btex $2$ etex, w10);
label(btex $3$ etex, w20);

label(btex $1$ etex, w1);
label(btex $2$ etex, w11);
label(btex $3$ etex, w21);

label(btex $1$ etex, w3);
label(btex $2$ etex, w13);
label(btex $3$ etex, w23);

label(btex $1$ etex, w4);
label(btex $2$ etex, w14);
label(btex $3$ etex, w24);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penBOX;
dx := dxx;
dy := dyy;
% g: 2, 12, 23, 123
draw w10+(-dx,dy)--w10+(dx,dy)--w10+(dx,-dy)--w10+(-dx,-dy)--cycle;
draw w0+(-dx,dy+xsp)--w10+(dx+xsp,dy+xsp)
   --w10+(dx+xsp,-dy-xsp)--w0+(-dx,-dy-xsp)--cycle;
draw w10+(-dx-xsp,dy+2xsp)--w20+(dx,dy+2xsp)
   --w20+(dx,-dy-2xsp)--w10+(-dx-xsp,-dy-2xsp)--cycle;
draw w0+(-dx-xsp,dy+3xsp)--w20+(dx+xsp,dy+3xsp)
   --w20+(dx+xsp,-dy-3xsp)--w0+(-dx-xsp,-dy-3xsp)--cycle;
label.lft(btex \strut3g etex, w0+(-dd-2xsp,0));

dx := dxx;
dy := dyy;
% f: 1, 2, 12, 123
draw w1+(-dx,dy)--w1+(dx,dy)--w1+(dx,-dy)--w1+(-dx,-dy)--cycle;
draw w11+(-dx,dy)--w11+(dx,dy)--w11+(dx,-dy)--w11+(-dx,-dy)--cycle;
draw w1+(-dx-xsp,dy+xsp)--w11+(dx+xsp,dy+xsp)
   --w11+(dx+xsp,-dy-xsp)--w1+(-dx-xsp,-dy-xsp)--cycle;
draw w1+(-dx-2xsp,dy+2xsp)--w21+(dx,dy+2xsp)
   --w21+(dx,-dy-2xsp)--w1+(-dx-2xsp,-dy-2xsp)--cycle;
label.rt(btex \strut3f etex, w21+(dd+2xsp,0));

dx := dxx;
dy := dyy;
% g: 2, 12, 23, 123
draw w13+(-dx,dy)--w13+(dx,dy)--w13+(dx,-dy)--w13+(-dx,-dy)--cycle;
draw w3+(-dx,dy+xsp)--w13+(dx+xsp,dy+xsp)
   --w13+(dx+xsp,-dy-xsp)--w3+(-dx,-dy-xsp)--cycle;
draw w13+(-dx-xsp,dy+2xsp)--w23+(dx,dy+2xsp)
   --w23+(dx,-dy-2xsp)--w13+(-dx-xsp,-dy-2xsp)--cycle;
draw w3+(-dx-xsp,dy+3xsp)--w23+(dx+xsp,dy+3xsp)
   --w23+(dx+xsp,-dy-3xsp)--w3+(-dx-xsp,-dy-3xsp)--cycle;
label.lft(btex \strut3g etex, w3+(-dd-2xsp,0));
label.bot(btex\strut not forward-connected etex,
 0.5[w3,w23]+(0,-dd-2xsp-sepB));
label.bot(btex\strut not weakly connected etex,
 0.5[w3,w23]+(0,-dd-2xsp-sepB-sepC));
label.bot(btex\strut strongly connected etex,
 0.5[w3,w23]+(0,-dd-2xsp-sepB-2sepC));

dx := dxx;
dy := dyy;
% g: 2, 12, 23, 123
draw w14+(-dx,dy)--w14+(dx,dy)--w14+(dx,-dy)--w14+(-dx,-dy)--cycle;
draw w4+(-dx,dy+xsp)--w14+(dx+xsp,dy+xsp)
   --w14+(dx+xsp,-dy-xsp)--w4+(-dx,-dy-xsp)--cycle;
draw w14+(-dx-xsp,dy+2xsp)--w24+(dx,dy+2xsp)
   --w24+(dx,-dy-2xsp)--w14+(-dx-xsp,-dy-2xsp)--cycle;
draw w4+(-dx-xsp,dy+3xsp)--w24+(dx+xsp,dy+3xsp)
   --w24+(dx+xsp,-dy-3xsp)--w4+(-dx-xsp,-dy-3xsp)--cycle;
label.rt(btex \strut3g etex, w24+(dd+2xsp,0));
label.bot(btex\strut forward-connected etex,
 0.5[w4,w24]+(0,-dd-2xsp-sepB));
label.bot(btex\strut weakly connected etex,
 0.5[w4,w24]+(0,-dd-2xsp-sepB-sepC));
label.bot(btex\strut not strongly connected etex,
 0.5[w4,w24]+(0,-dd-2xsp-sepB-2sepC));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows to indicate functions.
pickup pencircle scaled penARROW;
drawarrow (w3+(0,dyyA))--(w10+(0,-dyyA));
drawarrow (w13+(0,dyyA))--(w20+(0,-dyyA));
drawarrow (w23+(0,dyyA))--(w0+(0,-dyyA));

drawarrow (w4+(0,dyyA))--(w1+(0,-dyyA));
drawarrow (w14+(0,dyyA))--(w21+(0,-dyyA));
drawarrow (w24+(0,dyyA))--(w11+(0,-dyyA));

label.lft(btex $\phi_1$ etex, 0.5[w3,w0]+(-dd,0));
label.rt(btex $\phi_2$ etex, 0.5[w24,w21]+(dd-0.5xsp,0));

endfig;
end
