% tex/conc/mp/topofin2.mp   2012-6-19   Alan U. Kennington.
% $Id: tex/conc/mp/topofin2.mp 69b29aa50e 2015-08-08 03:07:22Z Alan U. Kennington $
% All topologies on {1, 2}.

% input mapmax.mp
% verbatimtex \input akmath etex

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

a := 0.7cm;             % Distance between points 1 and 2.
aa := 2.2cm;            % Distance between topologies.
xsp := 2.2pt;           % Inter-box spacing.
xth := 0.5pt;           % Box boundary thickness.
dxx := 8pt;
dyy := 10pt;
dd := dyy + xsp - 3pt;

w0 := (0,0);
w1 := w0 + (aa,0);
w2 := w1 + (aa,0);
w3 := w2 + (aa,0);

w10 := w0 + (a,0);
w11 := w1 + (a,0);
w12 := w2 + (a,0);
w13 := w3 + (a,0);

label(btex $1$ etex, w0);
label(btex $2$ etex, w10);
label(btex $1$ etex, w1);
label(btex $2$ etex, w11);
label(btex $1$ etex, w2);
label(btex $2$ etex, w12);
label(btex $1$ etex, w3);
label(btex $2$ etex, w13);

pickup pencircle scaled xth;
dx := dxx;
dy := dyy;
draw w0+(-dx,dy)--w10+(dx,dy)--w10+(dx,-dy)--w0+(-dx,-dy)--cycle;
label.top(btex \strut2a etex, 0.5[w0,w10]+(0,dd));

dx := dxx;
dy := dyy;
draw w1+(-dx,dy)--w1+(dx,dy)--w1+(dx,-dy)--w1+(-dx,-dy)--cycle;
draw w1+(-dx-xsp,dy+xsp)--w11+(dx,dy+xsp)
   --w11+(dx,-dy-xsp)--w1+(-dx-xsp,-dy-xsp)--cycle;
label.top(btex \strut2b etex, 0.5[w1,w11]+(0,dd));

dx := dxx;
dy := dyy;
draw w12+(-dx,dy)--w12+(dx,dy)--w12+(dx,-dy)--w12+(-dx,-dy)--cycle;
draw w2+(-dx,dy+xsp)--w12+(dx+xsp,dy+xsp)
   --w12+(dx+xsp,-dy-xsp)--w2+(-dx,-dy-xsp)--cycle;
label.top(btex \strut2c etex, 0.5[w2,w12]+(0,dd));

dx := dxx;
dy := dyy;
draw w3+(-dx,dy)--w3+(dx,dy)--w3+(dx,-dy)--w3+(-dx,-dy)--cycle;
draw w13+(-dx,dy)--w13+(dx,dy)--w13+(dx,-dy)--w13+(-dx,-dy)--cycle;
draw w3+(-dx-xsp,dy+xsp)--w13+(dx+xsp,dy+xsp)
   --w13+(dx+xsp,-dy-xsp)--w3+(-dx-xsp,-dy-xsp)--cycle;
label.top(btex \strut2d etex, 0.5[w3,w13]+(0,dd));

endfig;
end
