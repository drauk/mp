% tex/conc/mp/topofin5.mp   2014-12-28   Alan U. Kennington.
% $Id: tex/conc/mp/topofin5.mp 69b29aa50e 2015-08-08 03:07:22Z Alan U. Kennington $
% Weakly connected function with non-T_1 target space which is not continuous.

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
% w3 := w0 + (0,-bb);
w3 := w0 + (xsp,-bb);

w10 := w0 + (a,0);
w13 := w3 + (a,0);

w20 := w10 + (a,0);
w23 := w13 + (a,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex $1$ etex, w0);
label(btex $2$ etex, w10);
label(btex $3$ etex, w20);

label(btex $1$ etex, w3);
label(btex $2$ etex, w13);
label(btex $3$ etex, w23);

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
label.rt(btex \strut3g etex, w20+(dd+2xsp,0));

dx := dxx;
dy := dyy;
% f: 1, 2, 12, 123
draw w3+(-dx,dy)--w3+(dx,dy)--w3+(dx,-dy)--w3+(-dx,-dy)--cycle;
draw w13+(-dx,dy)--w13+(dx,dy)--w13+(dx,-dy)--w13+(-dx,-dy)--cycle;
draw w3+(-dx-xsp,dy+xsp)--w13+(dx+xsp,dy+xsp)
   --w13+(dx+xsp,-dy-xsp)--w3+(-dx-xsp,-dy-xsp)--cycle;
draw w3+(-dx-2xsp,dy+2xsp)--w23+(dx,dy+2xsp)
   --w23+(dx,-dy-2xsp)--w3+(-dx-2xsp,-dy-2xsp)--cycle;
label.rt(btex \strut3f etex, w23+(dd+2xsp,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows to indicate functions.
pickup pencircle scaled penARROW;
drawarrow (w3+(-xsp,dyyA))--(w0+(0,-dyyA));
drawarrow (w13+(-xsp,dyyA))--(w20+(0,-dyyA));
drawarrow (w23+(-xsp,dyyA))--(w10+(0,-dyyA));

label.lft(btex $\phi$ etex, 0.5[w3,w0]+(-dd,0));

endfig;
end
