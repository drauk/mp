% tex/conc/mp/topofin6.mp   2015-8-8   Alan U. Kennington.
% $Id: tex/conc/mp/topofin6.mp 69b29aa50e 2015-08-08 03:07:22Z Alan U. Kennington $
% Two topologies on {1, 2, 3}. Adapted from topofin3.mp.

% input mapmax.mp
% verbatimtex \input akmath etex

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

a := 0.6cm;             % Distance between points 1, 2 and 3.
aa := 2.7cm;            % Distance between topologies.
bb := 1.6cm;            % Distance between topologies.
xsp := 2.2pt;           % Inter-box spacing.
xth := 0.5pt;           % Box boundary thickness.
dxx := (a - xsp)/2;
dyy := 10pt;
dd := dyy + xsp - 3pt;

w0 := (0,0);
w1 := w0 + (aa,0);
w2 := w1 + (aa,0);
w7 := w2 + (aa,0);
w3 := w0 + (0,-bb);
w4 := w3 + (aa,0);
w5 := w4 + (aa,0);
w6 := w5 + (aa,0);

w10 := w0 + (a,0);
w11 := w1 + (a,0);
w12 := w2 + (a,0);
w17 := w7 + (a,0);
w13 := w3 + (a,0);
w14 := w4 + (a,0);
w15 := w5 + (a,0);
w16 := w6 + (a,0);

w20 := w10 + (a,0);
w21 := w11 + (a,0);
w22 := w12 + (a,0);
w27 := w17 + (a,0);
w23 := w13 + (a,0);
w24 := w14 + (a,0);
w25 := w15 + (a,0);
w26 := w16 + (a,0);

label(btex $1$ etex, w4);
label(btex $2$ etex, w14);
label(btex $3$ etex, w24);

label(btex $1$ etex, w5);
label(btex $2$ etex, w15);
label(btex $3$ etex, w25);

pickup pencircle scaled xth;

dx := dxx;
dy := dyy;
% f: 1, 2, 12, 123
draw w4+(-dx,dy)--w4+(dx,dy)--w4+(dx,-dy)--w4+(-dx,-dy)--cycle;
draw w14+(-dx,dy)--w14+(dx,dy)--w14+(dx,-dy)--w14+(-dx,-dy)--cycle;
draw w4+(-dx-xsp,dy+xsp)--w14+(dx+xsp,dy+xsp)
   --w14+(dx+xsp,-dy-xsp)--w4+(-dx-xsp,-dy-xsp)--cycle;
draw w4+(-dx-2xsp,dy+2xsp)--w24+(dx,dy+2xsp)
   --w24+(dx,-dy-2xsp)--w4+(-dx-2xsp,-dy-2xsp)--cycle;
label.top(btex \strut3f etex, 0.5[w4,w24]+(0,dd+2xsp));

dx := dxx;
dy := dyy;
% g: 2, 12, 23, 123
draw w15+(-dx,dy)--w15+(dx,dy)--w15+(dx,-dy)--w15+(-dx,-dy)--cycle;
draw w5+(-dx,dy+xsp)--w15+(dx+xsp,dy+xsp)
   --w15+(dx+xsp,-dy-xsp)--w5+(-dx,-dy-xsp)--cycle;
draw w15+(-dx-xsp,dy+2xsp)--w25+(dx,dy+2xsp)
   --w25+(dx,-dy-2xsp)--w15+(-dx-xsp,-dy-2xsp)--cycle;
draw w5+(-dx-xsp,dy+3xsp)--w25+(dx+xsp,dy+3xsp)
   --w25+(dx+xsp,-dy-3xsp)--w5+(-dx-xsp,-dy-3xsp)--cycle;
label.top(btex \strut3g etex, 0.5[w5,w25]+(0,dd+2xsp));

endfig;
end
