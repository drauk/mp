% tex/conc/mp/fibre17.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/fibre17.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Paralellism and associated topological fibre bundles.
% Formerly map77.mp.

input mapmax
verbatimtex
\input akmath
\input dgspell
etex

beginfig(1);
numeric t[], ang[];
pair p[], v[], abd;
path pat[];
string ss;

% Some thicknesses.
penAXIS := 0.5bp;
penARROW := 0.5bp;
penCURVE := 1.5bp;
penVEC := 0.4bp;
penLN := 0.5bp;
penPT := 2.5bp;
penDOT := 2.5bp;
penRECT := 0.5bp;
penCIRC := 0.5bp;
penPORT := 0.5bp;

unit := 0.98cm;
a := 1.15;

% Left rectangle.
ax := -0.6unit;
axx := (0.5+5a)*unit;
ay := -1.2unit;
ayy := 3.33unit;
pat10 := (ax,ay)--(ax,ayy)--(axx,ayy)--(axx,ay)--cycle;

% Right rectangle.
abdiff := (axx-ax)+0.7cm;
abdifff := -1.0cm;
abd := (abdiff, abdifff);
bx := ax + abdiff;
bxx := axx + abdiff;
by := ay;
byy := ayy;
% pat11 := (bx,by)--(bx,byy)--(bxx,byy)--(bxx,by)--cycle;
pat11 := pat10 shifted abd;
% Centre of bottom edge.
cx := (ax + axx)/2;
cy := ay;

% A curve.
p0 := (0,-0.6)*unit;
p1 := p0 + (a,1.0)*unit;
p2 := p1 + (a,0.3)*unit;
p3 := p2 + (a,2)*unit*0.8;
p4 := p3 + (a,-0.7)*unit;
p5 := p4 + (a,1.3)*unit;
pat1 := p0..p1..p2..p3..p4..p5;
pat2 := pat1 shifted abd;

% Another curve.
p20 := p2;
p21 := p20 + (-0.5a,1.0)*unit;
p22 := p21 + (-0.5a,0.4)*unit;
p23 := p22 + (-0.8a,-0.6)*unit;
pat3 := p20..p21..p22..p23;
pat4 := pat3 shifted abd;

% Yet another curve.
p30 := p22;
p31 := p30 + (0.1a,0.65)*unit;
p32 := p31 + (1.0a,0.15)*unit;
p33 := p3;
pat5 := p30..p31..p32..p33;
pat6 := pat5 shifted abd;

% Angles of fibres.
ang0 := 135;
ang1 := 85;
ang2 := 15;
ang3 := 50;
ang4 := -45;
ang5 := -100;

ang21 := 135;
ang22 := 85;
ang23 := 15;
ang31 := 50;
ang32 := -45;

% Angle differences.
angdiff := 60;      % For the pairs on one bundle.
angdifff := 45;     % Between the bundles.

% Circles.
dd := 0.5*a*unit;
rr := dd/2;

%----------------------------------------------------------------------
% Draw rectangles.
pickup pencircle scaled penRECT;
draw pat10 withcolor black;
draw pat11 withcolor black;

% Draw the curves.
pickup pencircle scaled penCURVE;
draw pat1 withcolor0.8white;
draw pat2 withcolor0.8white;
draw pat3 withcolor0.8white;
draw pat4 withcolor0.8white;
draw pat5 withcolor0.8white;
draw pat6 withcolor0.8white;

% Draw some circles.
pickup pencircle scaled penCIRC;
for i=0 upto 5:
    draw fullcircle scaled dd shifted p[i];
    draw fullcircle scaled dd shifted (p[i]+abd);
    endfor
for i=21 upto 23:
    draw fullcircle scaled dd shifted p[i];
    draw fullcircle scaled dd shifted (p[i]+abd);
    endfor
for i=31 upto 32:
    draw fullcircle scaled dd shifted p[i];
    draw fullcircle scaled dd shifted (p[i]+abd);
    endfor

% Draw some dots.
pickup pencircle scaled penDOT;
for i=0 upto 5:
    draw p[i];
    draw (p[i]+abd);
    endfor
for i=21 upto 23:
    draw p[i];
    draw (p[i]+abd);
    endfor
for i=31 upto 32:
    draw p[i];
    draw (p[i]+abd);
    endfor

% Draw some fibres.
pickup pencircle scaled penARROW;
for i=0 upto 5:
    drawarrow p[i]--(p[i]+(rr,0)rotated ang[i]);
    drawarrow p[i]--(p[i]+(rr,0)rotated(ang[i]+angdiff));
    drawarrow (p[i]--(p[i]+(rr,0)rotated(ang[i]+angdifff))) shifted abd;
    drawarrow (p[i]--(p[i]+(rr,0)rotated(ang[i]+angdifff+angdiff))) shifted abd;
    endfor
for i=21 upto 23:
    drawarrow p[i]--(p[i]+(rr,0)rotated ang[i]);
    drawarrow p[i]--(p[i]+(rr,0)rotated(ang[i]+angdiff));
    drawarrow (p[i]--(p[i]+(rr,0)rotated(ang[i]+angdifff))) shifted abd;
    drawarrow (p[i]--(p[i]+(rr,0)rotated(ang[i]+angdifff+angdiff))) shifted abd;
    endfor
for i=31 upto 32:
    drawarrow p[i]--(p[i]+(rr,0)rotated ang[i]);
    drawarrow p[i]--(p[i]+(rr,0)rotated(ang[i]+angdiff));
    drawarrow (p[i]--(p[i]+(rr,0)rotated(ang[i]+angdifff))) shifted abd;
    drawarrow (p[i]--(p[i]+(rr,0)rotated(ang[i]+angdifff+angdiff))) shifted abd;
    endfor

% "Porting" curve.
pickup pencircle scaled penPORT;
dport := 1mm;
S_arrowspace(p0,p0+abd,rr+dport,1,black);
S_arrowspace(p1,p1+abd,rr+dport,1,black);
S_arrowspace(p2,p2+abd,rr+dport,1,black);
S_arrowspace(p5,p5+abd,rr+dport,1,black);

% Labels.
label.bot(btex $(G,F)$ \fibre/ bundle etex, (cx,cy));
label.bot(btex $(G,\tilde F)$ \fibre/ bundle etex, (cx,cy)+abd);

endfig;
end
