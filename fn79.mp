% tex/conc/mp/fn79.mp   2013-12-15   Alan U. Kennington.
% $Id: tex/conc/mp/fn79.mp d21f64cebc 2013-12-15 08:06:44Z Alan U. Kennington $
% Geodesics in terrestrial coordinates on the two-sphere.

input mapmax.mp

beginfig(1);
pair zz[], p[], q[], alpha, theta;
color colAXIS;

pi := 3.14159265358979;
unit := 1.5cm;
unitx := unit * (pi/4);
unity := unit * (pi/4);
a := 4.4 * unitx;
b := 2.4 * unity;

np := 4;                % Number of points on X axis.
nq := 2;                % Number of points on Y axis.
ht := 1.5bp;

nxHALF := 12;           % Try to force nx to be an even number!
nx := 2*nxHALF;         % Number of graph points.
nPLOT := 9;             % Number of graphs to plot.

penAXIS := 0.5bp;       % Thickness of axis lines.
penLINE := 0.4bp;       % Thickness of lines for drawing graphs.
colAXIS := 0.65white;   % Colour of axes.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 0th derivative.
zz10 := (0,0);
zz11 := zz10+(a+0.2unit,0);
zz12 := zz10+(0,b);
zz13 := zz10+(-a,0);
zz14 := zz10+(0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz13--zz11 withcolor colAXIS;
drawarrow zz14--zz12 withcolor colAXIS;
label.bot(btex $\strut\phi$ etex, zz11);
label.ulft(btex $\theta$ etex, zz12);

% Put notches on the axes.
for i=-np step 1 until np:
    zz0 := zz10+(i*unitx,0);
    if i <> 0:
        draw zz0--(zz0+(0,ht)) withcolor colAXIS;
        fi
    endfor
for i=-nq step 1 until nq:
    zz1 := zz10+(0,i*unity);
    if i <> 0:
        draw zz1--(zz1+(ht,0)) withcolor colAXIS;
        fi
    endfor

% Labels on the axes.
label.bot(btex ${\vphantom{3}\pi\over4}$ etex, zz10+(unitx,0));
label.bot(btex ${\vphantom{3}\pi\over2}$ etex, zz10+(2unitx,0));
label.bot(btex ${3\pi\over4}$ etex, zz10+(3unitx,0));
label.bot(btex $\vphantom{3}\pi$ etex, zz10+(4unitx,0));
label.top(btex $\llap{$\scriptstyle-{}$}{\pi\over2}$ etex, zz10+(-2unitx,ht));
label.top(btex $\scriptstyle-\pi$ etex, zz10+(-4unitx,ht));

label.lft(btex ${\pi\over4}$ etex, zz10+(0,unity));
label.lft(btex ${\pi\over2}$ etex, zz10+(0,2unity));
label.rt(btex $-{\pi\over4}$ etex, zz10+(ht,-unity));
label.rt(btex $-{\pi\over2}$ etex, zz10+(ht,-2unity));

% Draw the graph.
for k=1 upto nPLOT-1:
    alpha := dir(90*(k/nPLOT));
    tanALPHA := ypart(alpha)/xpart(alpha);
    for i=-nx step 1 until nx:
        phi := pi*(i/nx);
        phid := 180*(i/nx);
        theta := (1, sind(phid) * tanALPHA);
        p[i] := (phi * unit, angle(theta) * (pi/180) * unit);
        endfor
    pickup pencircle scaled penLINE;
    draw
    for i=-nx step 1 until nx-1:
        p[i]..
        endfor
        p[nx];
    endfor

% Labels.
label.top(btex $\alpha=80\rlap{${}^\circ$}$ etex, p[nxHALF]);
label.bot(btex $\alpha=80\rlap{${}^\circ$}$ etex, p[-nxHALF]);

endfig;
end
