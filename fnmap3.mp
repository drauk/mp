% tex/conc/mp/fnmap3.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fnmap3.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Multilinear map for 3 source spaces.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];

dd := 2.0cm;
ddd := 2.7cm;
rr := dd/2;
rrr := ddd/2;
xs := 1.2;                  % Eccentricity factor.
xxs := 1.5;                 % Eccentricity factor.
rrc := 2.8rr;
rrd := 2.8rr*xs;
sp := 2.4pt;
spp := 3.5pt;
sppp := 2.8pt;
thc := 0.5pt;
thd := 2.5pt;
thk := 0.5pt;
skk := 1.0;

% Set V_1.
zz1 := (0,0);
zz2 := zz1+(-0.2rr, 0.3rr);
zz3 := zz1+(0.4rr, -0.25rr);

% Set V_2.
zz11 := zz1 + (rrd,0);
zz12 := zz11+(-0.2rr, -0.3rr);
zz13 := zz11+(0.4rr, 0.25rr);

% Set V_3.
zz21 := zz1 + (2rrd,0);
zz22 := zz21+(-0.3rr, -0.15rr);
zz23 := zz21+(0.4rr, 0.05rr);

% Set U.
zz31 := zz1 + (rrd,rrc);
zz32 := zz31+(0.0rr, -0.1rr);
zz33 := zz32+(-0.8rr, -0.2rr);
zz34 := zz32+(0.4rr, -0.5rr);
zz35 := zz32+(0.9rr, 0.5rr);

% Two eccentric circles.
pickup pencircle scaled thc;
draw (fullcircle scaled dd) xscaled xs shifted zz1;
draw (fullcircle scaled dd) xscaled xs shifted zz11;
draw (fullcircle scaled dd) xscaled xs shifted zz21;
draw (fullcircle scaled ddd) xscaled xxs shifted zz31;

% Points.
pickup pencircle scaled (thd * skk);
draw zz2;
label.lft(btex $v_1$ etex, zz2);
pickup pencircle scaled thd;
draw zz3;
label.lrt(btex $v'_1$ etex, zz3);
pickup pencircle scaled thk;
S_arrowspaces(zz2,zz3,sp*skk,sp,1,black);

pickup pencircle scaled (thd * skk);
draw zz12;
label.lft(btex $v_2$ etex, zz12);
pickup pencircle scaled thd;
draw zz13;
label.rt(btex $v'_2$ etex, zz13);
pickup pencircle scaled thk;
S_arrowspaces(zz12,zz13,sp*skk,sp,1,black);

pickup pencircle scaled (thd * skk);
draw zz22;
label.lft(btex $v_3$ etex, zz22);
pickup pencircle scaled thd;
draw zz23;
label.rt(btex $v'_3$ etex, zz23);
pickup pencircle scaled thk;
S_arrowspaces(zz22,zz23,sp*skk,sp,1,black);

% Points in the set U.
pickup pencircle scaled (thd * skk);
draw zz32;
label.ulft(btex $f(v_1,v_2,v_3)$ etex, zz32+(3pt,0));

pickup pencircle scaled thd;
draw zz33;
label.lft(btex $f(v'_1,v_2,v_3)$ etex, zz33+(-2pt,1pt));
pickup pencircle scaled thk;
S_arrowspaces(zz32,zz33,sp*skk,sp,1,black);

pickup pencircle scaled thd;
draw zz34;
label.bot(btex $f(v_1,v'_2,v_3)$ etex, zz34+(-11.5pt,-2pt));
pickup pencircle scaled thk;
S_arrowspaces(zz32,zz34,sp*skk,sp,1,black);

pickup pencircle scaled thd;
draw zz35;
label.top(btex $f(v_1,v_2,v'_3)$ etex, zz35+(-10pt,0));
pickup pencircle scaled thk;
S_arrowspaces(zz32,zz35,sp*skk,sp,1,black);

% Some arrows mapping points.
pickup pencircle scaled thk;
S_arrowspacesstyle(zz3,zz33,spp,sppp,1)(dashed evenly);
S_arrowspacesstyle(zz13,zz34,spp,sppp,1)(dashed evenly);
S_arrowspacesstyle(zz23,zz35,spp,sppp,1)(dashed evenly);
label.ulft(btex linear etex, 0.5[zz3,zz33]);
label.rt(btex linear etex, 0.5[zz13,zz34]);
label.urt(btex linear etex, 0.5[zz23,zz35]);

% Labels for sets.
label.lft(btex $V_1$ etex, zz1+(-rr*xs,0));
label.lft(btex $V_2$ etex, zz11+(-rr*xs,0));
label.lft(btex $V_3$ etex, zz21+(-rr*xs,0));
label.ulft(btex $U$ etex, zz31+0.7(-rrr*xxs,rrr));

label.bot(btex multilinear map $f:V_1\times V_2\times V_3\to U$ etex,
 zz11+(0,-rr-9pt));

endfig;
end
