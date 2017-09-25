% tex/conc/mp/topo40.mp   2015-8-20   Alan U. Kennington.
% $Id: tex/conc/mp/topo40.mp c65bdace80 2015-08-20 05:08:19Z Alan U. Kennington $
% Compare and constrast atlas-collage and identification space.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric w[];
pair zz[];
color col[];
path pat[];

ddA := 2.5cm;
ddB := ddA + 3pt;
ddC := ddA - 3pt;
ddD := ddA + 3pt;
rrA := ddA/2;
rrB := ddB/2;
rrC := ddC/2;
rrD := ddD/2;

scA := 0.7;
sepA := 3pt;
sepB := 12pt;
sepC := 10pt;
sepD := 10pt;
sepE := 8pt;
sepF := 2.5pt;
sepG := 16pt;
sepH := 11pt;

ratA := 0.16;
ratB := ratA;
ratC := 0.1;
ratD := 0.2;

lenA := rrA;
eps := 0.125;
lenB := lenA * (1+2eps);

w1 := ddA + 3.0cm;
w2 := rrA + 1.0cm;
w3 := rrA + 0.65cm;

zz0 := (0,0);

zz10 := zz0 + (-w2,0);
zz11 := zz10 + (0,-lenA);
zz12 := zz10 + (0,lenA);
zz13 := zz10 + (0,lenB);

zz20 := zz0 + (w2,0);
zz21 := zz20 + (0,lenA);
zz22 := zz20 + (0,-lenA);
zz23 := zz20 + (0,-lenB);

zz30 := zz0 + (0,-rrB-sepA);
zz31 := zz0 + (0,-rrB-sepA-sepB);
zz32 := zz0 + (0,rrB+sepA);
zz33 := zz0 + (0,rrB+sepA+sepB);
zz34 := zz31 + (0,-sepG);

zz40 := zz0 + (0,-rrB);
zz41 := zz0 + (0,rrB);
zz42 := 0.5[zz11,zz40]+(0,-sepC);
zz43 := 0.5[zz12,zz41]+(0,sepC);

zz50 := zz0 + (0,rrC);
zz51 := zz0 + (0,-rrC);
zz52 := 0.5[zz21,zz50]+(0,-sepC);
zz53 := 0.5[zz22,zz51]+(0,sepC);

zz60 := zz0 + (-sepE,0);
zz61 := zz0 + (-rrA+sepF,0);

zz100 := zz0 + (w1,0);

zz110 := zz100 + (0,-w3);
zz111 := zz110 + (-lenA,0);
zz112 := zz110 + (lenA,0);

zz130 := zz100 + (0,-rrD-sepA);
zz131 := zz110 + (0,sepA);
zz132 := zz100 + (0,rrD+sepA);
zz133 := (xpart(zz100), ypart(zz33));
zz134 := (xpart(zz100), ypart(zz34));

zz140 := zz100 + (0,rrD);
zz141 := zz100 + ((-rrD-6pt,0) rotated -80);
zz142 := zz100 + ((-rrD-10pt,0) rotated -40);
zz143 := zz100 + ((-rrD-10pt,0) rotated 10);

zz150 := zz100 + (0,rrD);
zz151 := zz100 + ((rrD+6pt,0) rotated 80);
zz152 := zz100 + ((rrD+10pt,0) rotated 40);
zz153 := zz100 + ((rrD+10pt,0) rotated -10);

zz160 := zz100 + (sepE,0);
zz161 := zz100 + (rrA-sepF,0);

penARROW := 0.5bp;
penCIRC := 0.5bp;
penLN := 0.5bp;
penPT := 2.5bp;

col1 := 0.5white;
col2 := 0.0white;

%------------------------------------------------------------------------------
pickup pencircle scaled penCIRC;
draw fullcircle scaled ddA shifted zz0
 dashed (evenly scaled scA) withcolor col1;
draw fullcircle scaled ddA shifted zz100
 dashed (evenly scaled scA) withcolor col1;

drawarrow subpath(6, 2 - 4eps) of fullcircle
 scaled ddB shifted zz0 withcolor col2;
drawarrow subpath(6, 2 - 4eps) of fullcircle rotated 180
 scaled ddC shifted zz0 withcolor col2;
drawarrow subpath(2, 10) of fullcircle
 scaled ddD shifted zz100 withcolor col2;

pickup pencircle scaled penLN;
drawarrow zz11--zz13;
drawarrow zz21--zz23;
drawarrow zz111--zz112;

pickup pencircle scaled penPT;
draw zz12;
draw zz22;
draw zz111;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex\strut $S^1$ etex, zz0);
label(btex\strut $S^1$ etex, zz100);

label.lft(btex $0$ etex, zz11);
label.lft(btex $1$ etex, zz12);
label.ulft(btex $1+\varepsilon$ etex, zz13);

label.rt(btex $0$ etex, zz21);
label.rt(btex $1$ etex, zz22);
label.lrt(btex $1+\varepsilon$ etex, zz23);

label.llft(btex $0$ etex, zz111);
label.lrt(btex $1$ etex, zz112);

S_tiltlabel(btex patch 1 etex, zz10, 90);
S_tiltlabel(btex patch 2 etex, zz20, -90);
% label.bot(btex source space etex, zz110+(0,-10pt));
% label.top(btex source space etex, zz110);
label.bot(btex source etex, zz110);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
drawarrow zz31--zz30;
drawarrow zz33--zz32;
drawarrow zz131--zz130;
drawarrow zz133--zz132;
label.bot(btex glue here etex, zz31);
label.top(btex glue here etex, zz33);
label.bot(btex\strut collage-of-patches etex, zz34);
label.bot(btex\strut construction etex, zz34+(0,-sepH));
label.bot(btex\strut identification space etex, zz134);
label.bot(btex\strut construction etex, zz134+(0,-sepH));
label.top(btex identify here etex, zz133);

pat1 := zz11..zz42..zz40;
pat2 := zz12..zz43..zz41;
pat3 := zz21..zz52..zz50;
pat4 := zz22..zz53..zz51;
pat5 := zz111..zz143..zz142..zz141..zz140;
pat6 := zz112..zz153..zz152..zz151..zz150;
pickup pencircle scaled penARROW;
drawarrow subpath(ratA,2-ratB) of pat1;
drawarrow subpath(ratA,2-ratB) of pat2;
drawarrow subpath(ratA,2-ratB) of pat3;
drawarrow subpath(ratA,2-ratB) of pat4;
drawarrow subpath(ratC,4-ratD) of pat5;
drawarrow subpath(ratC,4-ratD) of pat6;
drawarrow zz60--zz61;
drawarrow zz160--zz161;

endfig;
end
