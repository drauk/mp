% tex/conc/mp/class7.mp   2014-3-25   Alan U. Kennington.
% $Id: tex/conc/mp/class7.mp de7fa1b12c 2014-03-24 18:28:31Z Alan U. Kennington $
% Interpretation of a parallelogram law.

input mapmax.mp
verbatimtex
\input akmath
\font\ninerm cmr9
etex

beginfig(1);
pair v[];
path pat[];

penLN := 0.5bp;         % Lines.
penLNa := 0.35bp;       % Right angle indication.
penPT := 2.5bp;         % Points.

%----------------------------------------------------------------------
a := 3.0cm;
b := 2.0cm;
dd := length((a,b));
aa := angle((a,b));
th := 10;
dra := 6pt;             % Right angle indication.

v0 := (0,0);            % Origin of v1 and v2.
v1 := (a,0) rotated th;
v2 := (0,b) rotated th;
v3 := 0.5[v1,v2];       % Centre of parallelogram.
v4 := v1+v2;            % Opposite vertex of parallelogram.
v5 := v3+0.5v2;         % Label for centre of circle.

v10 := (dra, 0) rotated th;
v11 := (dra, dra) rotated th;
v12 := (0, dra) rotated th;

% Lines and semicircles.
pickup pencircle scaled penLN;
draw v0--v1;
draw v0--v2;
draw v0--v3;
drawarrow v2--v1 dashed evenly;
drawarrow v3--v4 dashed evenly;
draw (halfcircle rotated (180-aa+th)) scaled dd shifted v3;
draw (halfcircle rotated (360-aa+th)) scaled dd shifted v3 dashed evenly;

pickup pencircle scaled penPT;
draw v4;

% Right angle indication.
pickup pencircle scaled penLNa;
draw v10--v11--v12;

% Labels for vectors.
label.llft(btex $0$ etex, v0);
label.lrt(btex $u$ etex, v1);
label.lft(btex $v$ etex, v2);
label.urt(btex $u+v$ etex, v4);
label.top(btex $\frac12(u+v)$ etex, v5+(0,-2pt));
drawarrow v5--(0.82[v5,v3]);

endfig;
end
