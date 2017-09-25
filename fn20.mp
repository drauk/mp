% tex/conc/mp/fn20.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fn20.mp 09c178b650 2012-05-08 03:58:47Z Alan U. Kennington $
% Right translations for Lie groups.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
numeric xx[], p[];
pair zz[];
path pat[];
color col[];

unit := 1cm;        % Scaling parameter.
aa := 6.5 unit;     % Rectangle dimensions.
bb := 3 unit;
cc := 4mm;          % Spacing of rectangles.
dd := 4mm;
ptx := aa * 0.27;   % Location of left-hand point.
pty := bb * 0.25;
spx := 2mm;         % Arrow-end spacing.
spxx := 3mm;        % Arrow-end spacing.
fnd := 1mm;         % Distance of function graphs above line.
fnx := aa/12;       % Function arrow endpoints.
fny := aa/18;
fnxx := -aa/15;     % Function labels.
fnyy := aa/12;
vecx := -aa/45;     % Vector base.
vecy := bb/4;
vecxx := vecx + aa/8; % Vector tip.
vecyy := vecy + bb/6;

penLN := 0.5bp;
penPT := 2.5bp;
penRECT := 0.5bp;   % Rectangle boundaries.
penPT := 2.5bp;     % Drawing of points.
penTRANS := 0.5bp;  % Translation map arrows.
penFN := 0.5bp;     % Function graphs.
penVEC := 0.5bp;    % Tangent vectors.

zz10 := (ptx,pty);  % Location of base points.
zz11 := (aa-ptx,pty);
zz12 := zz10+(fnx,fny); % Location of function arrow endpoints.
zz13 := zz11+(-fnx,fny);
zz14 := zz10+(fnxx,fnyy); % Location of function labels.
zz15 := zz11+(-fnxx,fnyy);
zz16 := zz10+(vecx,vecy); % Location of vector base points.
zz17 := zz11+(vecx,vecy);
zz18 := zz10+(vecxx,vecyy); % Location of vector endpoints.
zz19 := zz11+(vecxx,vecyy);

col1 := black;      % Arrow colours.

xx9 := 0.05;        % Function outline.
xx7 := 0.15;
xx5 := 0.48;
xx3 := 0.88;
xx1 := 0.98;
pat1 := (-1,0)..(-0.9,xx9)..(-0.7,xx7)..(-0.5,xx5)..(-0.3,xx3)..(-0.1,xx1)
 ..(0,1)..(0.1,xx1)..(0.3,xx3)..(0.5,xx5)..(0.7,xx7)..(0.9,xx9)..(1,0);

%------------------------------------------------------------------------------
% Top left
zz0 := (0,bb+dd);

% Draw a rectangle.
pickup pencircle scaled penRECT;
draw zz0--(zz0+(aa,0))--(zz0+(aa,bb))--(zz0+(0,bb))--cycle;

% Label for the whole rectangle.
label.lrt(btex $R_g^G$ etex, zz0+(0,bb));

% The points.
pickup pencircle scaled penPT;
draw zz0 + zz10;
draw zz0 + zz11;
pickup pencircle scaled penTRANS;
S_arrowspace(zz0+zz10,zz0+zz11,spx,1,col1);
label.bot(btex \strut$x$ etex, zz0+zz10);
label.bot(btex \strut$xg$ etex, zz0+zz11);
label.top(btex $R_g^G$ etex, zz0+0.5[zz10,zz11]);

%------------------------------------------------------------------------------
% Top right.
zz0 := (aa+cc,bb+dd);

% Draw a rectangle.
pickup pencircle scaled penRECT;
draw zz0--(zz0+(aa,0))--(zz0+(aa,bb))--(zz0+(0,bb))--cycle;

% Label for the whole rectangle.
label.lrt(btex $R_g^C$ etex, zz0+(0,bb));

% The points.
pickup pencircle scaled penPT;
draw zz0 + zz10;
draw zz0 + zz11;
pickup pencircle scaled penTRANS;
S_arrowspace(zz0+zz10,zz0+zz11,spx,2,col1);
label.bot(btex \strut$xg^{-1}$ etex, zz0+zz10);
label.bot(btex \strut$x$ etex, zz0+zz11);
label.bot(btex $R_{g^{-1}}^G$ etex, zz0+0.5[zz10,zz11]);

% Function graphs.
pickup pencircle scaled penFN;
draw pat1 scaled (aa/8) shifted (zz0+zz10+(0,fnd));
draw pat1 scaled (aa/8) shifted (zz0+zz11+(0,fnd));
S_arrowspace(zz0+zz12,zz0+zz13,spx,1,col1);
label.top(btex $R_g^C$ etex, 0.5[zz0+zz12,zz0+zz13]);
label.lft(btex $\phi$ etex, zz0+zz14);
label.rt(btex $R_g^C\phi$ etex, zz0+zz15);

%------------------------------------------------------------------------------
% Bottom left.
zz0 := (0,0);

% Draw a rectangle.
pickup pencircle scaled penRECT;
draw zz0--(zz0+(aa,0))--(zz0+(aa,bb))--(zz0+(0,bb))--cycle;

% Label for the whole rectangle.
label.lrt(btex $R_g^T$ etex, zz0+(0,bb));

% The points.
pickup pencircle scaled penPT;
draw zz0 + zz10;
draw zz0 + zz11;
pickup pencircle scaled penTRANS;
S_arrowspace(zz0+zz10,zz0+zz11,spx,1,col1);
label.bot(btex \strut$x$ etex, zz0+zz10);
label.bot(btex \strut$xg$ etex, zz0+zz11);
label.bot(btex $R_g^G$ etex, zz0+0.5[zz10,zz11]);

% Function graphs.
pickup pencircle scaled penFN;
draw pat1 scaled (aa/8) shifted (zz0+zz10+(0,fnd));
draw pat1 scaled (aa/8) shifted (zz0+zz11+(0,fnd));
S_arrowspace(zz0+zz12,zz0+zz13,spx,2,col1);
label.top(btex $R_{g^{-1}}^C$ etex, 0.5[zz0+zz12,zz0+zz13]);
label.lft(btex $R_{g^{-1}}^C\phi$ etex, zz0+zz14);
label.rt(btex $\phi$ etex, zz0+zz15);

% Vectors.
pickup pencircle scaled penPT;
draw zz0+zz16;
draw zz0+zz17;
pickup pencircle scaled penVEC;
S_arrowspace(zz0+zz16,zz0+zz18,0,1,col1);
S_arrowspace(zz0+zz17,zz0+zz19,0,1,col1);
label.ulft(btex $V$ etex,zz0+zz18);
label.rt(btex $R_g^TV$ etex,zz0+zz19);
pickup pencircle scaled penTRANS;
S_arrowspace(zz0+zz18,zz0+zz19,spxx,1,col1);
label.top(btex $R_g^T$ etex, 0.5[zz0+zz18,zz0+zz19]);

%------------------------------------------------------------------------------
% Bottom right.
zz0 := (aa+cc,0);

% Draw a rectangle.
pickup pencircle scaled penRECT;
draw zz0--(zz0+(aa,0))--(zz0+(aa,bb))--(zz0+(0,bb))--cycle;

% Label for the whole rectangle.
label.lrt(btex $R_g^F$ etex, zz0+(0,bb));

% The points.
pickup pencircle scaled penPT;
draw zz0 + zz10;
draw zz0 + zz11;
pickup pencircle scaled penTRANS;
S_arrowspace(zz0+zz10,zz0+zz11,spx,2,col1);
label.bot(btex \strut$xg^{-1}$ etex, zz0+zz10);
label.bot(btex \strut$x$ etex, zz0+zz11);
label.bot(btex $R_{g^{-1}}^G$ etex, zz0+0.5[zz10,zz11]);

% Function graphs.
pickup pencircle scaled penFN;
draw pat1 scaled (aa/8) shifted (zz0+zz10+(0,fnd));
draw pat1 scaled (aa/8) shifted (zz0+zz11+(0,fnd));
S_arrowspace(zz0+zz12,zz0+zz13,spx,2,col1);
label.top(btex $R_{g^{-1}}^C$ etex, 0.5[zz0+zz12,zz0+zz13]);
label.lft(btex $R_{g^{-1}}^C\phi$ etex, zz0+zz14);
label.rt(btex $\phi$ etex, zz0+zz15);

% Vectors.
pickup pencircle scaled penPT;
draw zz0+zz16;
draw zz0+zz17;
pickup pencircle scaled penVEC;
S_arrowspace(zz0+zz16,zz0+zz18,0,1,col1);
S_arrowspace(zz0+zz17,zz0+zz19,0,1,col1);
label.ulft(btex $X(xg^{-1})$ etex,zz0+zz18);
label.top(btex \strut$R_g^F(X)(x)$ etex,zz0+zz19+(6pt,0));
pickup pencircle scaled penTRANS;
S_arrowspace(zz0+zz18,zz0+zz19,spxx,1,col1);
label.top(btex $R_g^F$ etex, 0.5[zz0+zz18,zz0+zz19]);

endfig;
end
