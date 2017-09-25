% tex/conc/mp/fn2d25.mp   2016-9-28   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d25.mp 15c8338a29 2016-09-28 02:37:55Z Alan U. Kennington $
% Unit level curves of some norms for 2-space.

\input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[][], yy[][];
pair zz[];
color gcol, xcol;
path pat[];

unit := 0.85cm;      % Unit length on axes.
a := 3 unit + 0.5cm;
b := 3 unit + 0.5cm;
bb := 3 unit + 0.4cm;
pmax := 6;

np := 12;           % Number of points in an eighth of a graph.
nq := 3;            % Number of notches on X axes.
nqq := 3;           % Number of notches on Y axes.
ht := 3pt;          % Notch length.

gcol := 0.35white;  % Colour of axes.
xcol := 0.5white;   % Colour of extreme values of p.

penLN := 0.5bp;
penPT := 3.0bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $x_1$ etex, zz1);
label.lft(btex $x_2$ etex, zz2);

% Add some notches.
pickup pencircle scaled penLN;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if i < 0:
            draw (x1,0)--(x1,-ht) withcolor gcol;
            label.ulft(decimal i infont "cmr9", (x1,1pt));
        else:
            draw (x1,0)--(x1,ht) withcolor gcol;
            label.lrt(decimal i infont "cmr9", (x1,-1pt));
            fi
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        if i < 0:
            draw (0,y1)--(-ht,y1) withcolor gcol;
            label.lrt(decimal i infont "cmr9", (0,y1));
        else:
            draw (0,y1)--(ht,y1) withcolor gcol;
            label.ulft(decimal i infont "cmr9", (0,y1));
            fi
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for p=1 upto pmax:
    pat[p] := (p+1,p-1)--(p-1,p+1)--(-p-1,-p+1)--(-p+1,-p-1)--cycle;
    pickup pencircle scaled penLN;
    draw pat[p] scaled (unit/2) shifted zz0;


    endfor

sepA := -1pt;
sepB := -2pt;
S_tiltlabel_top_up(btex $k=1$ etex, zz0+(0.5unit,0.5unit), -45, sepA);
S_tiltlabel_top_up(btex $\scriptstyle k=1/2$ etex,
 zz0+(1unit,1unit), -45, sepB);
S_tiltlabel_top_up(btex $\scriptstyle k=1/3$ etex,
 zz0+(1.5unit,1.5unit), -45, sepB);
S_tiltlabel_top_up(btex $\scriptstyle k=1/4$ etex,
 zz0+(2unit,2unit), -45, sepB);
S_tiltlabel_top_up(btex $\scriptstyle k=1/5$ etex,
 zz0+(2.5unit,2.5unit), -45, sepB);
S_tiltlabel_top_up(btex $\scriptstyle k=1/6$ etex,
 zz0+(3unit,3unit), -45, sepB);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% label.bot(btex level curves of
% $(x_1,x_2)\mapsto(\vert x_1\vert^p+\vert x_2\vert^p)^{1/p}$ etex, zz4);

endfig;
end
