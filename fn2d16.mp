% tex/conc/mp/fn2d16.mp   2018-2-1   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d16.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Difference between restricted point-maps and set-maps.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric th[];
pair zz[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
a := 4.5cm;
b := 2.0cm;
px := 0.25a;
py := 0.55b;
th1 := 0.6pt;       % Axes.
th2 := 0.5bp;       % Lines for rectangles.
th3 := 2.5pt;       % Points.
th4 := 0.6pt;       % Arrows.

col1 := 0.88white;  % Rectangle fill colour.

dx := 1.1a + 30pt;
dy := 5pt;

aax := 0.1a;
aay := 0.25b;
bbx := 0.45a;
bby := 0.55b;
ccx := 0.50a;
ccy := 0.25b;

zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-0.1a,0);
zz4 := (0,-0.1b);

zz9 := (ccx,ccy);
zz8 := (aax + 0.3(bbx-aax), aay + 0.4(bby-aay));
zz7 := zz8 + zz9;

zz10 := (aax,aay);
zz11 := (bbx,aay);
zz12 := (bbx,bby);
zz13 := (aax,bby);

zz20 := zz10 + zz9;
zz21 := zz11 + zz9;
zz22 := zz12 + zz9;
zz23 := zz13 + zz9;

zz100 := zz0 + (dx,0);
zz101 := zz1 + zz100;
zz102 := zz2 + zz100;
zz103 := zz3 + zz100;
zz104 := zz4 + zz100;

zz109 := zz9 + zz100;

zz110 := zz10 + zz100;
zz111 := zz11 + zz100;
zz112 := zz12 + zz100;
zz113 := zz13 + zz100;

zz120 := zz20 + zz100;
zz121 := zz21 + zz100;
zz122 := zz22 + zz100;
zz123 := zz23 + zz100;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled th1;
drawarrow zz3--zz1;
drawarrow zz4--zz2;
label.llft(btex $\reals^n$ etex, zz1+(0,-5pt));

% Draw the lines.
pickup pencircle scaled th2;
draw zz10--zz11--zz12--zz13--cycle;
draw zz20--zz21--zz22--zz23--cycle;

% Draw the points.
pickup pencircle scaled th3;
draw zz7;
draw zz8;

draw zz10;
draw zz11;
draw zz12;
draw zz13;

draw zz20;
draw zz21;
draw zz22;
draw zz23;

% Arrow for restricted point-map.
pickup pencircle scaled th4;
S_arrowspace(zz8, zz7, 4pt, 1, black);

% Labels.
label.lft(btex $x$ etex, zz8);
label.rt(btex $x+c$ etex, zz7);

label.bot(btex $a$ etex, zz10);
label.top(btex $b$ etex, zz12);

label.bot(btex $a+c$ etex, zz20);
label.top(btex $b+c$ etex, zz22);

label.lrt(btex $\tau_{a,b,c}:x\mapsto x+c$ etex, 0.0[zz0,zz1]+(0,-10pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled th1;
drawarrow zz103--zz101;
drawarrow zz104--zz102;
label.llft(btex $\reals^n$ etex, zz101+(0,-5pt));

% Draw the lines.
pickup pencircle scaled th2;
pat1 := zz110--zz111--zz112--zz113--cycle;
pat2 := zz120--zz121--zz122--zz123--cycle;
fill pat1 withcolor col1;
fill pat2 withcolor col1;
draw pat1;
draw pat2;

% Draw the points.
pickup pencircle scaled th3;
draw zz110;
draw zz111;
draw zz112;
draw zz113;

draw zz120;
draw zz121;
draw zz122;
draw zz123;

% Arrow for set-map.
pickup pencircle scaled th4;
zz130 := 0.5[zz113,zz112]+(0,dy);
zz131 := 0.5[zz123,zz122]+(0,dy);
zz132 := 0.5[zz130,zz131]+(0,2dy);
drawarrow zz130..zz132..zz131;

% Labels.
label.bot(btex $a$ etex, zz110);
label.top(btex $b$ etex, zz112);

label.bot(btex $a+c$ etex, zz120);
label.top(btex $b+c$ etex, zz122);

% label.top(btex $I_{a,b}$ etex, zz113);
% label.top(btex $I_{a+c,\,b+c}$ etex, zz123);
label(btex $I_{a,b}$ etex, 0.5[zz110,zz112]);
label(btex $I_{a+c,\,b+c}$ etex, 0.5[zz120,zz122]);

label.lrt(btex $\tau_c:I_{a,b}\mapsto I_{a+c,\,b+c}$ etex,
 0.0[zz100,zz101]+(0,-10pt));

label.top(btex $\tau_c$ etex, zz132);

endfig;
end
