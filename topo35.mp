% tex/conc/mp/topo35.mp   2013-12-22   Alan U. Kennington.
% $Id: tex/conc/mp/topo35.mp 918e29c847 2013-12-23 01:51:33Z Alan U. Kennington $
% Domain of a topological manifold chart for a torus.

input mapmax

verbatimtex
\input akmath
\input dgspell
etex

beginfig(1);
numeric b[];
pair zz[], p[];
color colA;

penLN := 0.5bp;
penPT := 2.0bp;
penDOT := 0.7bp;
ds := 0.6;
colA := 0.9 white;
sp := 5pt;
spp := 12pt;
dd := 15bp;

unit := 1.2cm;
aa := 4unit;
bb := 3unit;

zz10 := (0,0);
zz11 := (aa,0);
zz12 := (aa,bb);
zz13 := (0,bb);

zz20 := 0.5[zz10,zz13];
zz21 := 0.5[zz11,zz12];
zz22 := 0.5[zz20,zz21];

b[1] := 1.5unit;
b[2] := 1unit;
p[1] := (0.5unit, 0.65unit);
p[2] := p[1] + (aa/2,bb/2);

p[10] := p[1] + (-b[1],-b[2]);
p[11] := p[1] + (b[1],-b[2]);
p[12] := p[1] + (b[1],b[2]);
p[13] := p[1] + (-b[1],b[2]);

p[20] := (xpart(p[12]),0);
p[21] := (0,ypart(p[12]));

p[22] := (xpart(p[13])+aa,0);
p[23] := (aa,ypart(p[13]));

p[24] := (xpart(p[10])+aa,bb);
p[25] := (aa,ypart(p[10])+bb);

p[26] := (xpart(p[11]),bb);
p[27] := (0,ypart(p[11])+bb);

zz30 := (xpart(p[11])+aa+dd, ypart(zz21) - b[2]);
zz31 := zz30 + (2b[1],0);
zz32 := zz30 + (2b[1],2b[2]);
zz33 := zz30 + (0,2b[2]);

zz40 := 0.5[zz30,zz32];
zz41 := 0.5[p[2],zz40] + (0,7pt);

pickup pencircle scaled penLN;
fill p[20]--p[12]--p[21]--zz10--cycle withcolor colA;
fill p[23]--(p[13]+(aa,0))--p[22]--zz11--cycle withcolor colA;
fill p[24]--(p[10]+(aa,bb))--p[25]--zz12--cycle withcolor colA;
fill p[27]--(p[11]+(0,bb))--p[26]--zz13--cycle withcolor colA;

pickup pencircle scaled penLN;
draw zz13--zz10--zz11;
draw zz11--zz12--zz13 dashed evenly;

pickup pencircle scaled penLN;
draw p[20]--p[12]--p[21] dashed evenly;
pickup pencircle scaled penDOT;
draw p[21]--p[13]--p[10]--p[11]--p[20] dashed withdots scaled ds;

pickup pencircle scaled penLN;
draw p[23]--(p[13]+(aa,0))--p[22] dashed evenly;
pickup pencircle scaled penDOT;
draw p[22]--(p[10]+(aa,0))--(p[11]+(aa,0))--(p[12]+(aa,0))--p[23]
 dashed withdots scaled ds;

pickup pencircle scaled penLN;
draw p[24]--(p[10]+(aa,bb))--p[25] dashed evenly;
pickup pencircle scaled penDOT;
draw p[25]--(p[11]+(aa,bb))--(p[12]+(aa,bb))--(p[13]+(aa,bb))--p[24]
 dashed withdots scaled ds;

pickup pencircle scaled penLN;
draw p[27]--(p[11]+(0,bb))--p[26] dashed evenly;
pickup pencircle scaled penDOT;
draw p[26]--(p[12]+(0,bb))--(p[13]+(0,bb))--(p[10]+(0,bb))--p[27]
 dashed withdots scaled ds;

pickup pencircle scaled penPT;
draw p[1];

% Labels.
label.urt(btex $x$ etex, p[1]);

% Must make this label correspond to p[1].
label.bot(
btex homeomorphism $\psi_{x,b}$ with domain $\Omega_{x,b}$ \centr/ed on $x$
etex,
 0.5[p[10],p[11]+(aa,0)]+(0,-4pt));

label(btex $\Omega_{x,b}$ etex, p[2]);
pickup pencircle scaled penLN;
S_arrowspaces(p[2],0.9[p[13],p[12]],spp,sp,1,black);
S_arrowspaces(p[2],0.1[p[13],p[12]]+(aa,0),spp,sp,1,black);
S_arrowspaces(p[2],0.1[p[10],p[11]]+(aa,bb),spp,sp,1,black);
S_arrowspaces(p[2],0.9[p[10],p[11]]+(0,bb),spp,sp,1,black);

% The target set.
pickup pencircle scaled penLN;
fill zz30--zz31--zz32--zz33--cycle withcolor colA;

zz50 := zz30 + (zz10 - p10);
zz51 := (xpart(zz50),ypart(zz30));
zz52 := (xpart(zz31),ypart(zz50));
zz53 := (xpart(zz50),ypart(zz32));
zz54 := (xpart(zz30),ypart(zz50));
pickup pencircle scaled penDOT;
draw zz51--zz53 dashed withdots scaled ds;
draw zz52--zz54 dashed withdots scaled ds;

pickup pencircle scaled penLN;
draw zz33--zz30--zz31;
draw zz31--zz32--zz33 dashed evenly;
pickup pencircle scaled penPT;
draw zz40;
label.bot(btex $\psi_{x,b}(x)$ etex, zz40+(4pt,0));
label(btex $G_{x,b}$ etex, 0.5[zz40,0.75[zz33,zz32]]);

pickup pencircle scaled penLN;
drawarrow (subpath(0.15,1.75) of (p[2]..zz41..zz40));
label.top(btex $\psi_{x,b}$ etex, zz41);

label(btex $M$ etex, (xpart(p[1]),ypart(p[2])));

endfig;
end
