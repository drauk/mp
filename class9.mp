% tex/conc/mp/class9.mp   2016-9-4   Alan U. Kennington.
% $Id: tex/conc/mp/class9.mp 4248e40e81 2016-09-04 07:08:25Z Alan U. Kennington $
% Construction of contravariant and covariant coordinates in Euclidean geometry.

input mapmax
verbatimtex
% \input akmath
etex

beginfig(1);
pair u[], v[], zz[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
penAXIS := 0.5bp;       % Axes.
penVEC := 0.5bp;        % Vector.
penLN := 0.5bp;         % Line.
penPT := 2.5pt;         % Points.
penARC := 0.4bp;        % Arcs.

col1 := 0.5white;
col2 := black;

unit := 9mm;
aa := 7.0unit;
bb := 6.3unit;
OA := 5 unit;
OB := 4.2 unit;
OP := 3.5 unit;
angA := 0;
angB := 60;
angP := 25;
sepA := 14pt;
sepB := 2pt;

v11 := (OA,0) rotated angA;         % A
v12 := (OB,0) rotated angB;         % B
v13 := (OP,0) rotated angP;         % P
v14 := v13 - (OP,0) rotated angB;   % Q1
v15 := (OP,0) rotated angB;         % Q1'
v16 := v13 - (OP,0) rotated angA;   % Q2
v17 := (OP,0) rotated angA;         % Q2'
v18 := (OA/2,ypart(v12-v11));       % title
v19 := (OA/2,ypart(v14));           % subtitle
BP := length(v13-v15);
AP := length(v13-v17);

zz0 := (0,0);
for i=1 upto 4:
    zz[10*i] := zz0 + ((floor((i-1)/2)mod2)*aa, -((i-1)mod2)*bb);
    zz[10*i+1] := zz[10*i] + v11;
    zz[10*i+2] := zz[10*i] + v12;
    zz[10*i+3] := zz[10*i] + v13;
    zz[10*i+4] := zz[10*i] + v14;
    zz[10*i+6] := zz[10*i] + v16;
    zz[10*i+8] := zz[10*i] + v18;
    zz[10*i+9] := zz[10*i] + v19;
%    label.ulft(decimal i infont "cmr7", zz[10*i]);
    endfor

%==============================================================================
% Compute contravariant X coordinate.
pickup pencircle scaled penAXIS;
drawarrow zz10--zz11 withcolor col1;
drawarrow zz10--zz12 withcolor col1;

pickup pencircle scaled penLN;
draw zz13--zz14 dashed evenly;

pickup pencircle scaled penARC;
draw (subpath (0.4,1.5) of fullcircle scaled (2*OP)) shifted zz10;
label.lft(btex $r_1$ etex,
 point 1.5 of (fullcircle scaled (2*OP)) shifted zz10);
draw (subpath (5.15,5.5) of fullcircle scaled (2*OP)) shifted zz13;
label.rt(btex $r_1$ etex,
 point 5.5 of (fullcircle scaled (2*OP)) shifted zz13);
draw (subpath (2.6,3.25) of fullcircle scaled (2*BP)) shifted zz13;
label.rt(btex $r_2$ etex,
 point 2.6 of (fullcircle scaled (2*BP)) shifted zz13);
draw (subpath (6.6,7.25) of fullcircle scaled (2*BP)) shifted zz10;
label.lft(btex $r_2$ etex,
 point 6.6 of (fullcircle scaled (2*BP)) shifted zz10);

pickup pencircle scaled penVEC;
drawarrow zz10--zz13 withcolor col2;

label.llft(btex $O$ etex, zz10);
label.lrt(btex $A$ etex, zz11);
label.ulft(btex $B$ etex, zz12);
label.urt(btex $P$ etex, zz13);

pickup pencircle scaled penPT;
draw zz10;
draw zz14;
label.bot(btex $Q_1$ etex, zz14 + (1.5pt,-1.5pt));

u1 := (zz10--zz11) intersectionpoint (zz13--zz14);
draw u1;
label.lrt(btex $X$ etex, u1);

S_tilt_parallel(0.5[u1, zz13], angle(zz13-u1), 1);
S_tilt_parallel(0.5[u1, zz13]-(u1-zz10), angle(zz13-u1), 1);

label.top(btex contravariant coordinates $x$ and $y$ etex, zz18+(0,sepA));

%==============================================================================
% Compute contravariant Y coordinate.
pickup pencircle scaled penAXIS;
drawarrow zz20--zz21 withcolor col1;
drawarrow zz20--zz22 withcolor col1;

pickup pencircle scaled penLN;
draw zz23--zz24 dashed evenly;
draw zz23--zz26 dashed evenly;

pickup pencircle scaled penARC;
draw (subpath (-0.2,0.8) of fullcircle scaled (2*OP)) shifted zz20;
label.bot(btex $r_1$ etex,
 point -0.2 of (fullcircle scaled (2*OP)) shifted zz20);
draw (subpath (3.8,4.2) of fullcircle scaled (2*OP)) shifted zz23;
label.top(btex $r_1$ etex,
 point 3.8 of (fullcircle scaled (2*OP)) shifted zz23);
draw (subpath (6.0,6.7) of fullcircle scaled (2*AP)) shifted zz23;
label.rt(btex $r_3$ etex,
 point 6.7 of (fullcircle scaled (2*AP)) shifted zz23);
draw (subpath (1.9,2.6) of fullcircle scaled (2*AP)) shifted zz20;
label.lft(btex $r_3$ etex,
 point 2.6 of (fullcircle scaled (2*AP)) shifted zz20);

pickup pencircle scaled penVEC;
drawarrow zz20--zz23 withcolor col2;

label.llft(btex $O$ etex, zz20);
label.lrt(btex $A$ etex, zz21);
label.ulft(btex $B$ etex, zz22);
label.urt(btex $P$ etex, zz23);

pickup pencircle scaled penPT;
draw zz20;
draw zz26;
label.ulft(btex $Q_2$ etex, zz26);

u1 := (zz20--zz21) intersectionpoint (zz23--zz24);
draw u1;
label.lrt(btex $X$ etex, u1);

u2 := (zz20--zz22) intersectionpoint (zz23--zz26);
draw u2;
label.ulft(btex $Y$ etex, u2);

S_tilt_parallel(0.5[u1, zz23], angle(zz23-u1), 1);
S_tilt_parallel(0.5[u1, zz23]-(u1-zz20), angle(zz23-u1), 1);

S_tilt_parallel(0.5[zz20, u1], angle(u1-zz20), 2);
S_tilt_parallel(0.5[u2, zz23], angle(zz23-u2), 2);

label.bot(btex
$x=\vert OX\vert/\vert OA\vert$, $y=\vert OY\vert/\vert OB\vert$ etex,
zz29+(0,-sepB));

%==============================================================================
% Compute covariant X coordinate.
pickup pencircle scaled penAXIS;
drawarrow zz30--zz31 withcolor col1;
drawarrow zz30--zz32 withcolor col1;

v30 := (OP,0) rotated (2angA - angP);
v31 := 0.7 * unit * v11/length(v11);

zz50 := zz30 + v30;             % Q1
zz51 := 0.5[zz50,zz33];         % X
zz52 := zz51 - v31;
zz53 := zz51 + v31;
dA := length(zz52 - zz33);

pickup pencircle scaled penLN;
draw zz33--zz50 dashed evenly;

pickup pencircle scaled penARC;
draw (subpath (5.1,6.9) of fullcircle scaled (2dA)) shifted zz33;
label.urt(btex $r_1'$ etex,
 (point 6.9 of (fullcircle scaled (2dA)) shifted zz33) + (0,-1.5pt));
draw (subpath (6.2,6.9) of fullcircle scaled (2dA)) shifted zz52;
label.lft(btex $r_1'$ etex,
 (point 6.2 of (fullcircle scaled (2dA)) shifted zz52));
draw (subpath (5.1,5.8) of fullcircle scaled (2dA)) shifted zz53;
label.rt(btex $r_1'$ etex,
 (point 5.8 of (fullcircle scaled (2dA)) shifted zz53));

label.llft(btex $O$ etex, zz30);
label.lrt(btex $A$ etex, zz31);
label.ulft(btex $B$ etex, zz32);
label.urt(btex $P$ etex, zz33);

pickup pencircle scaled penVEC;
drawarrow zz30--zz33 withcolor col2;

pickup pencircle scaled penPT;
draw zz30;
draw zz50;
draw zz51;
draw zz52;
draw zz53;
label.bot(btex $Q_1'$ etex, zz50);

label.urt(btex $X$ etex, zz51);

% Indicate the right angle.
S_tilt_perp(zz51, angle(zz33-zz51));

label.top(btex covariant coordinates $x$ and $y$ etex, zz38+(0,sepA));

%==============================================================================
% Compute covariant Y coordinate.
pickup pencircle scaled penAXIS;
drawarrow zz40--zz41 withcolor col1;
drawarrow zz40--zz42 withcolor col1;

zz60 := zz40 + v30;             % Q1
zz61 := 0.5[zz60,zz43];         % X
zz62 := zz61 - v31;
zz63 := zz61 + v31;
dA := length(zz62 - zz43);

pickup pencircle scaled penLN;
draw zz43--zz60 dashed evenly;

v40 := (OP,0) rotated (2angB - angP);
v41 := 0.7 * unit * v12/length(v12);

zz70 := zz40 + v40;             % Q2
zz71 := 0.5[zz70,zz43];         % Y
zz72 := zz71 - v41;
zz73 := zz71 + v41;
dB := length(zz72 - zz43);

pickup pencircle scaled penLN;
draw zz43--zz70 dashed evenly;

pickup pencircle scaled penARC;
draw (subpath (2.6,4.0) of fullcircle scaled (2dB)) shifted zz43;
label.rt(btex $r_2'$ etex,
 (point 2.6 of (fullcircle scaled (2dB)) shifted zz43) + (0,-1.5pt));
draw (subpath (2.5,3.4) of fullcircle scaled (2dB)) shifted zz72;
label.llft(btex $r_2'$ etex,
 (point 3.4 of (fullcircle scaled (2dB)) shifted zz72));
draw (subpath (3.3,4.1) of fullcircle scaled (2dB)) shifted zz73;
label.urt(btex $r_2'$ etex,
 (point 3.3 of (fullcircle scaled (2dB)) shifted zz73));

label.llft(btex $O$ etex, zz40);
label.lrt(btex $A$ etex, zz41);
label.ulft(btex $B$ etex, zz42);
label.urt(btex $P$ etex, zz43);

pickup pencircle scaled penVEC;
drawarrow zz40--zz43 withcolor col2;

pickup pencircle scaled penPT;
draw zz40;
% draw zz60;
draw zz61;
% draw zz62;
% draw zz63;
draw zz70;
draw zz71;
draw zz72;
draw zz73;
label.ulft(btex $Q_2'$ etex, zz70);

label.urt(btex $X$ etex, zz61);
label.rt(btex $Y$ etex, zz71+(1.5pt,2pt));

% Indicate the right angles.
S_tilt_perp(zz61, angle(zz43-zz61));
S_tilt_perp(zz71, angle(zz40-zz71));

label.bot(btex
$x=\vert OX\vert\cdot\vert OA\vert$, $y=\vert OY\vert\cdot\vert OB\vert$ etex,
zz49+(0,-sepB));

endfig;
end
