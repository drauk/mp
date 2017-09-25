% tex/conc/mp/topofin3.mp   2012-6-21   Alan U. Kennington.
% $Id: tex/conc/mp/topofin3.mp 69b29aa50e 2015-08-08 03:07:22Z Alan U. Kennington $
% All "unique" topologies on {1, 2, 3}.

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
% w3 := w0 + (-0.5aa,-bb);
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

label(btex $1$ etex, w0);
label(btex $2$ etex, w10);
label(btex $3$ etex, w20);

label(btex $1$ etex, w1);
label(btex $2$ etex, w11);
label(btex $3$ etex, w21);

label(btex $1$ etex, w2);
label(btex $2$ etex, w12);
label(btex $3$ etex, w22);

label(btex $1$ etex, w7);
label(btex $2$ etex, w17);
label(btex $3$ etex, w27);

label(btex $1$ etex, w3);
label(btex $2$ etex, w13);
label(btex $3$ etex, w23);

label(btex $1$ etex, w4);
label(btex $2$ etex, w14);
label(btex $3$ etex, w24);

label(btex $1$ etex, w5);
label(btex $2$ etex, w15);
label(btex $3$ etex, w25);

label(btex $1$ etex, w6);
label(btex $2$ etex, w16);
label(btex $3$ etex, w26);

pickup pencircle scaled xth;
dx := dxx;
dy := dyy;
% a: 123
draw w0+(-dx,dy)--w20+(dx,dy)--w20+(dx,-dy)--w0+(-dx,-dy)--cycle;
label.top(btex \strut3a etex, 0.5[w0,w20]+(0,dd));

dx := dxx;
dy := dyy;
% b: 1, 123
draw w1+(-dx,dy)--w1+(dx,dy)--w1+(dx,-dy)--w1+(-dx,-dy)--cycle;
draw w1+(-dx-xsp,dy+xsp)--w21+(dx,dy+xsp)
   --w21+(dx,-dy-xsp)--w1+(-dx-xsp,-dy-xsp)--cycle;
label.top(btex \strut3b etex, 0.5[w1,w21]+(0,dd));

dx := dxx;
dy := dyy;
% c: 12, 123
draw w2+(-dx,dy)--w12+(dx,dy)--w12+(dx,-dy)--w2+(-dx,-dy)--cycle;
draw w2+(-dx-xsp,dy+xsp)--w22+(dx,dy+xsp)
   --w22+(dx,-dy-xsp)--w2+(-dx-xsp,-dy-xsp)--cycle;
label.top(btex \strut3c etex, 0.5[w2,w22]+(0,dd));

dx := dxx;
dy := dyy;
% d: 12, 3, 123
draw w7+(-dx,dy)--w17+(dx,dy)--w17+(dx,-dy)--w7+(-dx,-dy)--cycle;
draw w27+(-dx,dy)--w27+(dx,dy)--w27+(dx,-dy)--w27+(-dx,-dy)--cycle;
draw w7+(-dx-xsp,dy+xsp)--w27+(dx+xsp,dy+xsp)
   --w27+(dx+xsp,-dy-xsp)--w7+(-dx-xsp,-dy-xsp)--cycle;
label.top(btex \strut3d etex, 0.5[w7,w27]+(0,dd));

dx := dxx;
dy := dyy;
% e: 1, 12, 123.
draw w3+(-dx,dy)--w3+(dx,dy)--w3+(dx,-dy)--w3+(-dx,-dy)--cycle;
draw w3+(-dx-xsp,dy+xsp)--w13+(dx,dy+xsp)
   --w13+(dx,-dy-xsp)--w3+(-dx-xsp,-dy-xsp)--cycle;
draw w3+(-dx-2xsp,dy+2xsp)--w23+(dx,dy+2xsp)
   --w23+(dx,-dy-2xsp)--w3+(-dx-2xsp,-dy-2xsp)--cycle;
label.top(btex \strut3e etex, 0.5[w3,w23]+(0,dd+2xsp));

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

dx := dxx;
dy := dyy;
% h: 1, 2, 12, 23, 123
draw w6+(-dx,dy)--w6+(dx,dy)--w6+(dx,-dy)--w6+(-dx,-dy)--cycle;
draw w16+(-dx,dy)--w16+(dx,dy)--w16+(dx,-dy)--w16+(-dx,-dy)--cycle;
draw w6+(-dx-xsp,dy+xsp)--w16+(dx+xsp,dy+xsp)
   --w16+(dx+xsp,-dy-xsp)--w6+(-dx-xsp,-dy-xsp)--cycle;
draw w16+(-dx-0.5xsp,dy+2xsp)--w26+(dx,dy+2xsp)
   --w26+(dx,-dy-2xsp)--w16+(-dx-0.5xsp,-dy-2xsp)--cycle;
draw w6+(-dx-2xsp,dy+3xsp)--w26+(dx+xsp,dy+3xsp)
   --w26+(dx+xsp,-dy-3xsp)--w6+(-dx-2xsp,-dy-3xsp)--cycle;
label.top(btex \strut3h etex, 0.5[w6,w26]+(0,dd+2xsp));

endfig;
end
