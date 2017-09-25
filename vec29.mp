% tex/conc/mp/vec29.mp   2016-8-14   Alan U. Kennington.
% $Id: tex/conc/mp/vec29.mp 035d15ac29 2016-08-14 13:00:21Z Alan U. Kennington $
% Computation of Levi-Civita connection.

input mapmax
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair zz[], vv[];
color col[];

unit := 2cm;
ratA := 2;
gapA := 3pt;
sepA := 13bp;

penDOT := 2.5bp;        % Diameter of dots.
penLINE := 0.5bp;       % Thickness of lines.
penARROW := 0.6bp;      % Thickness of arrows.
penDISP := 0.5bp;       % Thickness of displacement arrows.

col1 := 0.5white;       % Colour of dashed arrows.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subspace of "coordinate" space.
zz10 := (0,0);
zz11 := zz10+(0.81unit, 0);             % V
zz12 := zz10+(-0.25unit, 0.6unit);      % y
zz13 := zz10+(0.25unit, 0.5unit);       % z

vv1 := - ratA * zz11;                   % -V
vv2 := - ratA * zz12;                   % -y
vv3 := ratA * zz13;                     % z

zz20 := zz10 + vv1;
zz21 := zz11 + vv1;
zz22 := zz12 + vv1;
zz23 := zz13 + vv1;

zz30 := zz10 + vv2;
zz31 := zz11 + vv2;
zz32 := zz12 + vv2;
zz33 := zz13 + vv2;

zz40 := zz10 + vv3;
zz41 := zz11 + vv3;
zz42 := zz12 + vv3;
zz43 := zz13 + vv3;

zz50 := 0.5[zz10, zz20];
zz51 := 0.7[zz10, zz30];
zz52 := 0.7[zz10, zz40];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penDISP;
S_arrowspacesstyle(zz10, zz20, gapA, gapA, 1)(dashed evenly withcolor col1);
S_arrowspacesstyle(zz12, zz22, gapA, gapA, 1)(dashed evenly withcolor col1);
S_arrowspacesstyle(zz13, zz23, gapA, gapA, 1)(dashed evenly withcolor col1);

S_arrowspacesstyle(zz10, zz30, gapA, gapA, 1)(dashed evenly withcolor col1);
S_arrowspacesstyle(zz11, zz31, gapA, gapA, 1)(dashed evenly withcolor col1);
S_arrowspacesstyle(zz13, zz33, gapA, gapA, 1)(dashed evenly withcolor col1);

S_arrowspacesstyle(zz10, zz40, gapA, gapA, 1)(dashed evenly withcolor col1);
S_arrowspacesstyle(zz11, zz41, gapA, gapA, 1)(dashed evenly withcolor col1);
S_arrowspacesstyle(zz12, zz42, gapA, gapA, 1)(dashed evenly withcolor col1);

label.bot(btex $-\partial_V\eta(y_\psi,z_\psi)$ etex, zz50);
label.lft(btex\strut $-\partial_y\eta(V_\psi,z_\psi)$ etex, zz51);
label.rt(btex\strut $+\partial_z\eta(V_\psi,y_\psi)$ etex, zz52);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
drawarrow zz10--zz11;
drawarrow zz10--zz12;
drawarrow zz10--zz13;
pickup pencircle scaled penDOT;
draw zz10;
label.llft(btex $p$ etex, zz10);
label.rt(btex $V$ etex, zz11);
label.ulft(btex $y$ etex, zz12);
label.ulft(btex $z$ etex, zz13);

pickup pencircle scaled penARROW;
% drawarrow zz20--zz21;
drawarrow zz20--zz22;
drawarrow zz20--zz23;
pickup pencircle scaled penDOT;
draw zz20;

pickup pencircle scaled penARROW;
drawarrow zz30--zz31;
% drawarrow zz30--zz32;
drawarrow zz30--zz33;
pickup pencircle scaled penDOT;
draw zz30;

pickup pencircle scaled penARROW;
drawarrow zz40--zz41;
drawarrow zz40--zz42;
% drawarrow zz40--zz43;
pickup pencircle scaled penDOT;
draw zz40;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.lrt(btex $\eta(\dropf^\psi(\konv_V(y)),z)$ etex,
 ulcorner currentpicture);
label.lrt(btex ${}+\eta(\dropf^\psi(\konv_y(V)),z)$ etex,
 ulcorner currentpicture + (0,-sepA));

endfig;
end
