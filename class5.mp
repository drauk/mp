% tex/conc/mp/class5.mp   2011-9-19   Alan U. Kennington.
% $Id: tex/conc/mp/class5.mp 10cf2d250e 2011-09-18 19:13:28Z Alan U. Kennington $
% Comparison of differential quotient and absolute value approaches.

verbatimtex
% \input akmath
etex

beginfig(1);
pair v[];
path pat[];
color col[];

th1 := 0.4bp;           % Lines.
th2 := 2.5pt;           % Points.
col1 = 0.9white;
col2 = 0.8white;

%----------------------------------------------------------------------
a := 2.3cm;             % Radius of circle.
aa := a * 1.1;          % Half-length of chords.
cc := 5.3pt;            % Half height of font cmr7.
dd := 2pt;
da := 2aa + 10pt;       % Distance between diagrams.
de := 3pt;              % Arrow separation.

th10 := 50;
th11 := 25;

v1 := (0,0);            % O = centre of circle.
v2 := v1 + (0,a);       % A
v3 := v2 + (-aa,0);     % B
v4 := v2 + (aa,0);      % C

v10 := v1 + (0,a) rotated -th10;    % D
v11 := v1 + (0,a) rotated -th11;    % E
v15 := v1 + (0,a) rotated th10;     % D'
v16 := v1 + (0,a) rotated th11;     % E'

v20 := v2 + aa*unitvector(v10-v2);
v21 := v2 + aa*unitvector(v11-v2);
v25 := v2 + aa*unitvector(v15-v2);
v26 := v2 + aa*unitvector(v16-v2);

v30 := v2 - aa*unitvector(v10-v2);
v31 := v2 - aa*unitvector(v11-v2);
v35 := v2 - aa*unitvector(v15-v2);
v36 := v2 - aa*unitvector(v16-v2);

xc := xpart(v10-v2);
xd := xpart(v11-v2);
v40 := v10 + (0,2ypart(v2-v10));
v41 := v11 + (0,2ypart(v2-v11));
v42 := v2 + (xc/xd)*(v41-v2);
v45 := v15 + (0,2ypart(v2-v15));
v46 := v16 + (0,2ypart(v2-v16));

v100 := v2 + (xc,0);
v101 := v2 + (xd,0);
v105 := v2 + (-xc,0);
v106 := v2 + (-xd,0);

pat1 := (halfcircle scaled 2a) shifted v1;

pat30 := subpath(2+th10/45,2+th11/45) of pat1;
pat31 := subpath(2+th11/45,2) of pat1;
pat35 := subpath(2-th10/45,2-th11/45) of pat1;
pat36 := subpath(2-th11/45,2) of pat1;

pat40 := v2--v10--v40--cycle;
pat41 := v2--v11--v41--cycle;
pat45 := v2--v15--v45--cycle;
pat46 := v2--v16--v46--cycle;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% First figure.

pickup pencircle scaled th1;
fill pat40 withcolor col1;
fill pat41 withcolor col2;
fill pat45 withcolor col1;
fill pat46 withcolor col2;

pickup pencircle scaled th1;
draw pat1;      % The circle.
draw v30--v20 dashed withdots scaled 0.25;  % AD extended.
draw v31--v21 dashed withdots scaled 0.25;  % AE extended.
draw v35--v25 dashed withdots scaled 0.25;  % AD' extended.
draw v36--v26 dashed withdots scaled 0.25;  % AE' extended.
draw v3--v4;    % BC.

pickup pencircle scaled th2;
draw v2;

pickup pencircle scaled th1;
drawarrow (0.5[v40,v45]--v40) shifted (0,de);
drawarrow (0.5[v41,v46]--v41) shifted (0,de);
drawarrow (v100--v40) shifted (de,0);
% drawarrow (v101--v41) shifted (de,0);
drawarrow (v100--v42) shifted (2de,0);

label.rt(btex $\scriptstyle\varepsilon=o(1)$ etex, v40+(de,0));
% label.rt(btex $\scriptstyle\varepsilon\smash{\hbox{$\scriptstyle{}'$}}$ etex,
%  v41+(1.5pt,de-1.5pt));
label.rt(btex $\scriptstyle\varepsilon\smash{\hbox{$\scriptstyle{}'$}}$ etex,
 v42+(2de+0pt,-1.8pt));
label.top(btex $\scriptstyle\delta$ etex, 0.75[v45,v40]+(0,de-1pt));
label.top(btex $\scriptstyle\delta'$ etex, 0.75[v46,v41]+(0,de-2.1pt));

% Labels.
label.lft(btex \sevenrm tangent etex, v3+(-dd,0));

label.bot(btex differential quotient approach etex, v1 + (0,0));

%------------------------------------------------------------------------------
% Second diagram.
v51 := v1 + (da,0);
v52 := v51 + (0,a);       % A
v53 := v52 + (-aa,0);     % B
v54 := v52 + (aa,0);      % C

% Points on the circle on the left.
v60 := v51 + (0,a) rotated th10;
v61 := v51 + (0,a) rotated th11;

% Points on the circle on the right.
v65 := v51 + (0,a) rotated -th10;
v66 := v51 + (0,a) rotated -th11;

xa := xpart(v65-v52);
xb := xpart(v66-v52);
v80 := v52 + (-xa,0);
v81 := v52 + (-xb,0);
v85 := v52 + (xa,0);
v86 := v52 + (xb,0);

v90 := v80 + (v80-v60);
v91 := v81 + (v81-v61);
v95 := v85 + (v85-v65);
v96 := v86 + (v86-v66);

pat2 := (halfcircle scaled 2a) shifted v51;

pat10 := subpath(2+th10/45,2+th11/45) of pat2;
pat11 := subpath(2+th11/45,2) of pat2;
pat15 := subpath(2-th10/45,2-th11/45) of pat2;
pat16 := subpath(2-th11/45,2) of pat2;

pat20 := pat10--v81--v80--cycle;
pat21 := pat11--v81--cycle;
pat25 := pat15--v86--v85--cycle;
pat26 := pat16--v86--cycle;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw stuff.

pickup pencircle scaled th1;
fill pat20 withcolor col1;
fill pat21 withcolor col2;
fill pat25 withcolor col1;
fill pat26 withcolor col2;

pickup pencircle scaled th1;
draw pat2;      % The circle.
draw v53--v54;    % BC.

% label.lft(btex \sevenrm tangent etex, v53+(-dd,0));
label.rt(btex \sevenrm tangent etex, v54+(dd,0));

pickup pencircle scaled th2;
draw v52;

pickup pencircle scaled th1;
draw v90--v95--v65--v60--cycle dashed withdots scaled 0.25;
draw v91--v96--v66--v61--cycle dashed withdots scaled 0.25;

pickup pencircle scaled th1;
drawarrow (0.5[v90,v95]--v95) shifted (0,de);
drawarrow (0.5[v91,v96]--v96) shifted (0,de);
drawarrow (v85--v95) shifted (de,0);
drawarrow (v86--v96) shifted (de,0);

label.rt(btex $\scriptstyle\varepsilon=o(\delta)$ etex, v95+(de,0));
label.rt(btex $\scriptstyle\varepsilon\smash{\hbox{$\scriptstyle{}'$}}$ etex,
 v96+(1.5pt,de-1.5pt));
label.top(btex $\scriptstyle\delta$ etex, 0.75[v90,v95]+(0,de-1pt));
label.top(btex $\scriptstyle\delta'$ etex, 0.75[v91,v96]+(0,de-2.1pt));

label.bot(btex absolute value approach etex, v51 + (0,0));

endfig;
end
