% tex/conc/mp/class4.mp   2011-9-4   Alan U. Kennington.
% $Id: tex/conc/mp/class4.mp b89aa221f3 2011-09-04 08:58:38Z Alan U. Kennington $
% Chords approximating a tangent in the limit.

input mapmax.mp
verbatimtex
% \input akmath
\font\ninerm cmr9
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
a := 1.6cm;             % Radius of circle.
aa := a * 1.2;          % Half-length of chords.
bb := aa + 40pt;
cc := 5.3pt;            % Half height of font cmr7.
dd := 2pt;
da := aa + bb + 30pt;   % Distance between diagrams.
de := 3pt;              % Arrow separation.

v1 := (0,0);            % O = centre of circle.
v2 := v1 + (0,a);       % A
v3 := v2 + (-aa,0);     % B
v4 := v2 + (aa,0);      % C

v10 := v1 + (0,a) rotated -45;   % D
v11 := v1 + (0,a) rotated -25;   % E
v12 := v1 + (0,a) rotated -12;   % F

v20 := v2 + aa*unitvector(v10-v2);
v21 := v2 + aa*unitvector(v11-v2);
v22 := v2 + aa*unitvector(v12-v2);

v30 := v2 - aa*unitvector(v10-v2);
v31 := v2 - aa*unitvector(v11-v2);
v32 := v2 - aa*unitvector(v12-v2);

v40 := v2 + bb*unitvector(v10-v2);
v41 := v2 + bb*unitvector(v11-v2);
v42 := v2 + bb*unitvector(v12-v2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% First figure.
pickup pencircle scaled th1;

pat1 := (fullcircle scaled 2a) shifted v1;

draw pat1;      % The circle.
draw v30--v20;  % AD extended.
draw v31--v21;  % AE extended.
draw v32--v22;  % AF extended.
draw v3--v4;    % BC.

pickup pencircle scaled th2;
draw v1;
draw v2;
draw v3;
draw v4;
draw v10;
draw v11;
draw v12;

% Labels.
label.bot(btex \sevenrm O etex, v1);
label.top(btex \sevenrm A etex, v2);
label.bot(btex \sevenrm B etex, v3);
label.top(btex \sevenrm C etex, v4);
label.llft(btex \sevenrm D etex, v10+(2pt,0pt));
label.llft(btex \sevenrm E etex, v11+(1pt,-2pt));
% label.top(btex \sevenrm F etex, v12);
label.bot(btex \sevenrm F etex, v12+(-2pt,-1pt));

% label.ulft(btex \sevenrm tangent etex, v4);
label.lft(btex \sevenrm tangent etex, v3+(-dd,0));
label.rt(btex \sevenrm tangent BC etex, v4+(dd,0));

S_tiltlabel_top_up(btex \sevenrm chord AD etex,
 0.5[v20,v40], angle(v40-v20), -cc);
S_tiltlabel_top_up(btex \sevenrm chord AE etex,
 0.5[v21,v41], angle(v41-v21), -cc);
S_tiltlabel_top_up(btex \sevenrm chord AF etex,
 0.5[v22,v42], angle(v42-v22), -cc);

label.bot(btex chord approach etex, v1 + (0,-a));

%------------------------------------------------------------------------------
% Second diagram.
v51 := v1 + (da,0);
v52 := v51 + (0,a);       % A
v53 := v52 + (-aa,0);     % B
v54 := v52 + (aa,0);      % C

pat2 := (fullcircle scaled 2a) shifted v51;

th10 := 50;
th11 := 30;

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
draw v51;
draw v52;
% draw v53;
% draw v54;

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

label.bot(btex zoom approach etex, v51 + (0,-a));

endfig;
end
