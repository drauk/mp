% tex/conc/mp/topo27.mp   2015-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/topo27.mp 96c45e94ac 2015-05-07 03:03:20Z Alan U. Kennington $
% Projection of open set in Cartesian product of topological spaces.

verbatimtex
\input akmath
etex

beginfig(1);
pair pt[], zz[];
color col[];
path pat[];

unit := 1.5cm;
zz0 := (0,0);
penLN := 0.5bp;
penPT := 2.5bp;
penPTX := 4.5bp;
scA := 0.7;
xA := 2.3;
col1 := 0.5white;
col2 := 0.95white;

zz10 := zz0 + (2unit,0unit);
zz11 := zz0 + (1.3unit,0.8unit);
zz12 := zz0 + (-0.2unit,-0.5unit);
zz13 := zz0 + (-1.6unit,1unit);
zz14 := zz0 + (-2unit,0unit);
zz15 := zz0 + (-1.5unit,-1unit);
zz16 := zz0 + (0.2unit,-0.75unit);
zz17 := zz0 + (1.5unit,-1unit);

pickup pencircle scaled penLN;
pat0 :=
for i=10 upto 17:
    zz[i]..
    endfor
    cycle;
fill pat0 withcolor col2;
draw pat0;

pat10 := ((-xA * unit,0)--(xA * unit,0)) shifted (zz0+(0,0.6unit));
pat11 := ((-xA * unit,0)--(xA * unit,0)) shifted (zz0+(0,0unit));
pat12 := ((-xA * unit,0)--(xA * unit,0)) shifted (zz0+(0,-0.6unit));

pickup pencircle scaled penLN;
draw pat10 dashed evenly scaled scA withcolor col1;
draw pat11 dashed evenly scaled scA withcolor col1;
draw pat12 dashed evenly scaled scA withcolor col1;

pickup pencircle scaled penPT;
pt10 := pat10 intersectionpoint pat0;
pt11 := pat11 intersectionpoint pat0;
pt12 := pat12 intersectionpoint (subpath (6,8) of pat0);

pt20 := pat10 intersectionpoint (subpath (1,8) of pat0);
pt21 := pat11 intersectionpoint (subpath (1,8) of pat0);
pt22 := pat12 intersectionpoint (subpath (1,8) of pat0);

pt30 := pat10 intersectionpoint (subpath (2,8) of pat0);
pt31 := pat10 intersectionpoint (subpath (3,8) of pat0);

pt40 := pat11 intersectionpoint (subpath (2,8) of pat0);
pt41 := pat11 intersectionpoint (subpath (3,8) of pat0);

% draw pt10;
% draw pt11;
% draw pt12;
% draw pt20;
% draw pt21;
% draw pt22;
% draw pt30;
% draw pt31;

pickup pencircle scaled penLN;
draw pt10--pt20;
draw pt11--pt21;
draw pt12--pt22;
draw pt30--pt31;
draw pt40--pt41;

zz20 := 0.5[pt12,pt22] + (0,-0.6unit);
label(btex $\Omega\in\Top(X_1\times X_2)$ etex, zz20);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.lft(btex $P^1_{x_{2,1}}(\Omega)\in T_1$ etex, point 0 of pat10);
label.lft(btex $P^1_{x_{2,2}}(\Omega)\in T_1$ etex, point 0 of pat11);
label.lft(btex $P^1_{x_{2,3}}(\Omega)\in T_1$ etex, point 0 of pat12);

label.rt(btex $x_{2,1}\in X_2$ etex, point 1 of pat10);
label.rt(btex $x_{2,2}\in X_2$ etex, point 1 of pat11);
label.rt(btex $x_{2,3}\in X_2$ etex, point 1 of pat12);

setbounds currentpicture to pat1;

endfig;
end
