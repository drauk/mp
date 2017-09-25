% tex/conc/mp/fn2d24.mp   2016-9-28   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d24.mp 15c8338a29 2016-09-28 02:37:55Z Alan U. Kennington $
% Unit level curves of p-norms for 2-space.

\input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[][], yy[][];
pair zz[];
color gcol, xcol;
path pat[];

unit := 2.2cm;      % Unit length on axes.
a := 1 unit + 0.5cm;
b := 1 unit + 0.5cm;
bb := 1 unit + 0.4cm;

np := 12;           % Number of points in an eighth of a graph.
nq := 1;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/35;         % Notch length.
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
            label.llft(decimal i infont "cmr9", (x1,-1pt));
        else:
            label.lrt(decimal i infont "cmr9", (x1,-1pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        if i < 0:
            label.llft(decimal i infont "cmr9", (0,y1));
        else:
            label.ulft(decimal i infont "cmr9", (0,y1));
            fi
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
draw (((1,0)--(0,1)--(-1,0)--(0,-1)--cycle) scaled unit) shifted zz0
 withcolor xcol;
draw (((1,1)--(-1,1)--(-1,-1)--(1,-1)--cycle) scaled unit) shifted zz0
 withcolor xcol;
for p = 1.5, 2.5, 4.5:
    for i=0 upto np:
        ang := (i/np) * 45;
        xx[p][i] := cosd(ang);
        yy[p][i] := sind(ang);
        norm := (xx[p][i]**p + yy[p][i]**p)**(1/p);
        xx[p][i] := xx[p][i] / norm;
        yy[p][i] := yy[p][i] / norm;
        endfor
    pat[p] :=
    for i=0 upto np-1:
        (xx[p][i], yy[p][i])..
        endfor
    for i=np downto 1:
        (yy[p][i], xx[p][i])..
        endfor
    for i=0 upto np-1:
        (-yy[p][i], xx[p][i])..
        endfor
    for i=np downto 1:
        (-xx[p][i], yy[p][i])..
        endfor
    for i=0 upto np-1:
        (-xx[p][i], -yy[p][i])..
        endfor
    for i=np downto 1:
        (-yy[p][i], -xx[p][i])..
        endfor
    for i=0 upto np-1:
        (yy[p][i], -xx[p][i])..
        endfor
    for i=np downto 1:
        (xx[p][i], -yy[p][i])..
        endfor
        cycle;
    draw (pat[p] scaled unit) shifted zz0;
    endfor
S_tiltlabel_top_up(btex $p=1$ etex, zz0+(0.5unit,-0.5unit), 45, 0pt);
S_tiltlabel_top_up(btex $\scriptstyle p=1.5$ etex,
 zz0 + (xx[1.5][np],-yy[1.5][np]) * unit, 45, -1pt);
S_tiltlabel_top_up(btex $\scriptstyle p=2.5$ etex,
 zz0 + (xx[2.5][np],-yy[2.5][np]) * unit, 45, -1pt);
S_tiltlabel_top_up(btex $\scriptscriptstyle p=4.5$ etex,
 zz0 + (xx[4.5][np],-yy[4.5][np]) * unit, 45, -1pt);
S_tiltlabel_top_up(btex \rlap{$\scriptscriptstyle p=\infty$} etex,
 zz0+(1unit,-1unit), 90, -2.5pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% label.bot(btex level curves of
% $(x_1,x_2)\mapsto(\vert x_1\vert^p+\vert x_2\vert^p)^{1/p}$ etex, zz4);

endfig;
end
