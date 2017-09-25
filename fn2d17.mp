% tex/conc/mp/fn2d17.mp   2015-9-17   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d17.mp 5dc0e93392 2015-09-17 09:01:15Z Alan U. Kennington $
% Geodesic curves for a slightly non-Riemannian manifold.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol;

gcol := 0.4white;    % Colour of axes.
unit := 1.50cm;     % Unit length on axes.
a := 2.35 unit;
b := 2.35 unit;
r := 1;
R := 1.75 unit;
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.

penLN := 0.5pt;
penAXIS := 0.5pt;
penNOTCH := 0.5pt;

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $\strut x_1$ etex, zz1);
label.ulft(btex $\strut x_2$ etex, zz2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 0.5.
np := 20;           % Number of points in graph.
factorA := 2**(1/3);
for i=0 upto np:
    k := i * factorA;
    xx[i] := k/np;
    yy[i] := (k/np)**3;
    endfor

% Draw the graphs.
pickup pencircle scaled penLN;
% \gamma_{1,0}
drawarrow for i=np downto 1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);

% \gamma_{1,-0.5}
drawarrow for i=np downto 1:
    (-xx[i]*unit, (0.5-yy[i])*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, (0.5+yy[i])*unit)..
    endfor
    (xx[np]*unit, (0.5+yy[np])*unit);

% \gamma_{2,0}
drawarrow for i=np downto 1:
    (-xx[i]*unit, -0.5yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, 0.5yy[i]*unit)..
    endfor
    (xx[np]*unit, 0.5yy[np]*unit);

% \gamma_{2,3}
drawarrow for i=np downto 1:
    (-xx[i]*unit, (-0.5yy[i]-1.5)*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, (0.5yy[i]-1.5)*unit)..
    endfor
    (xx[np]*unit, (0.5yy[np]-1.5)*unit);

% \gamma_{-1,0}
drawarrow for i=np downto 1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
    (xx[np]*unit, -yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i, (x1,-2pt));
        else:
            label.bot(decimal i, (x1,-2pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% \gamma_{1,0}
label.rt(btex $\displaystyle \gamma_{1,0}(t)=(t^{1/3},t)$ etex,
 (factorA * unit,(factorA**3)*unit));

% \gamma_{1,-0.5}
label.rt(btex $\displaystyle \gamma_{1,-0.5}(t)=((t-0.5)^{1/3},t)$ etex,
 (factorA * unit,(0.5+factorA**3)*unit));

% \gamma_{2,0}
label.rt(btex $\displaystyle \gamma_{2,0}(t)=((2t)^{1/3},t)$ etex,
 (factorA * unit,(0.5(factorA**3))*unit));

% \gamma_{2,3}
label.rt(btex $\displaystyle \gamma_{2,3}(t)=((2t+3)^{1/3},t)$ etex,
 (factorA * unit,(0.5(factorA**3)-1.5)*unit));

% \gamma_{-1,0}
label.rt(btex $\displaystyle \gamma_{-1,0}(t)=(-t^{1/3},t)$ etex,
 (factorA * unit,(-factorA**3)*unit));

setbounds currentpicture to pat1;

endfig;
end
