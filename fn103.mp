% tex/conc/mp/fn103.mp   2017-1-25   Alan U. Kennington.
% $Id: tex/conc/mp/fn103.mp 3983b3269e 2017-01-25 07:35:03Z Alan U. Kennington $
% Non-regular inclusion of submanifold.

\input mapmax
\input centmax
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], midpt;
color col[];

unitX := 2.3cm;
unitY := unitX;
a := 1.1unitX;
aa := a + 20pt;
b := 1.15unitY;
bb := 0.1unitY;
ht := 3pt;
dLAB := aa + 10pt;
dA := 4pt;
spB := 2pt;

penAXIS := 0.5bp;
penPLOT := 0.5bp;
penARROW := 0.5bp;
penDOT := 3.0bp;        % Thickness of dots.
col1 := 0.55white;      % Axes.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis points.
p0 := (0,0);
p1 := p0+(aa,0);
p2 := p0+(0,b);
p3 := p0+(-a,0);
p4 := p0+(0,-bb);
midpt := p0;

p10 := p0+(1*unitX, 1*unitY);
p11 := p0+(-1*unitX, 1*unitY);
t := 0.5**5;
p12 := p0+(t*unitX, t*unitY);
p13 := p0+(-t*unitX, t*unitY);
t := 0.75**5;
p14 := p0+(t*unitX, t*unitY);
p15 := p0+(-t*unitX, t*unitY);
t := 0.9**5;
p16 := p0+(t*unitX, t*unitY);
p17 := p0+(-t*unitX, t*unitY);

p20 := (xpart(p0)+dLAB, ypart(p10));
p21 := (xpart(p0)-dLAB, ypart(p11));
p22 := (xpart(p0)+dLAB, ypart(p12));
p23 := (xpart(p0)-dLAB, ypart(p13));
p24 := (xpart(p0)+dLAB, ypart(p14));
p25 := (xpart(p0)-dLAB, ypart(p15));
p26 := (xpart(p0)+dLAB, ypart(p16));
p27 := (xpart(p0)-dLAB, ypart(p17));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow p3--p1 withcolor col1;
drawarrow p4--p2 withcolor col1;
label.bot(btex $x_1$ etex, p1+(0,0));
label.rt(btex $x_2$ etex, p2+(0,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% X-axis labels.
pickup pencircle scaled penAXIS;
for k=-1 upto 1:
    if k <> 0:
        draw p0+(k*unitX,0)--p0+(k*unitX,-ht);
        fi
    endfor
label.bot(btex \strut $1$ etex, p0+(1*unitX,-ht));
label.bot(btex \strut $\llap{$-{}$}1$ etex, p0+(-1*unitX,-ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Y-axis labels.
pickup pencircle scaled penAXIS;
y1 := 1*unitY;
draw p0+(0,y1)--p0+(-ht,y1);
label.lft(btex \strut $1$ etex, p0+(-ht,y1));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the graph.
pickup pencircle scaled penPLOT;
draw p0--(p0+(a,a));
draw p0--(p0+(-a,a));

% Draw the dots.
pickup pencircle scaled penDOT;
draw p10;
draw p11;
draw p12;
draw p13;
draw p14;
draw p15;
draw p16;
draw p17;

pickup pencircle scaled penARROW;
S_arrowspaces(p20, p10, dA, dA, 1, black);
S_arrowspaces(p21, p11, dA, dA, 1, black);
S_arrowspaces(p22, p12, dA, dA, 1, black);
S_arrowspaces(p23, p13, dA, dA, 1, black);
S_arrowspaces(p24, p14, dA, dA, 1, black);
S_arrowspaces(p25, p15, dA, dA, 1, black);
S_arrowspaces(p26, p16, dA, dA, 1, black);
S_arrowspaces(p27, p17, dA, dA, 1, black);

label.rt(btex $\psi_2(x)=1$ etex, p20);
label.lft(btex $\psi_2(x)=-1$ etex, p21);
label.rt(btex $\psi_2(x)=\frac12$ etex, p22);
label.lft(btex $\psi_2(x)=-\frac12$ etex, p23);
label.rt(btex $\psi_2(x)=\frac3{4}$ etex, p24);
label.lft(btex $\psi_2(x)=-\frac3{4}$ etex, p25);
label.rt(btex $\psi_2(x)=\frac9{10}$ etex, p26);
label.lft(btex $\psi_2(x)=-\frac9{10}$ etex, p27);

label.bot(btex $\psi_2:(x_1,x_2)\mapsto x_1^{1/5}$ etex, p4);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
