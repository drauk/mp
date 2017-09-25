% tex/conc/mp/fibre12.mp   2017-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/fibre12.mp e6195bdce8 2017-01-17 13:47:55Z Alan U. Kennington $
% Map for a set collage.
% Formerly map51.mp.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[];
path pat[];
picture pic;
color cola, colb;

cola := 0.95white;
colb := 0.88white;  % Intersection of sets.
a := 6.4cm;
b := 3cm;
ht := 0.15cm;    % Arrow spacing.
v0 := (0,0);
v1 := (a,0);
penLN := 0.5bp;
penPT := 2.5bp;

% The set X.
pickup pencircle scaled penLN;
draw v0--v1;
label.rt(btex
$\displaystyle X\subseteq\mcirctimes_{i\in I}S_i=S_1\overcirc\times S_2$
etex, v1);

%------------------------------------------------------------------------
% Set S_1.
v11 := (0.15a,-0.1b);
pat1 := ((0.1a,0.5b)..(0.3a,0.4b)..(0.5a,0.5b)..(0.2a,0.7b)..cycle)shifted v11;
fill pat1 withcolor cola;
draw pat1;
v2 := (0.1a,0.7b)shifted v11;
label(btex $S_1$ etex, v2);

v3 := (0.15a,0.5b)shifted v11;
v4 := (xpart(v3), 0);
pickup pencircle scaled penPT;
draw v3;
label.urt(btex $w_1$ etex, v3);
draw v4;
pickup pencircle scaled penLN;
drawarrow (v3+(0,-ht))--(v4+(0,ht));
label.bot(btex $\llap{$(w_1,\cdotsp)={}$}f(w_1)$ etex, v4);

v5 := (0.4a,0.6b)+v11;
v6 := (xpart(v5), 0);
pickup pencircle scaled penPT;
draw v5;
label.rt(btex $y_1$ etex, v5);
draw v6;
pickup pencircle scaled penLN;
drawarrow (v5+(0,-ht))--(v6+(0,ht));

v7 := v5+(-0.4cm,-0.3cm);
v8 := (xpart(v7), 0);
pickup pencircle scaled penPT;
draw v7;
label.lft(btex $x_1$ etex, v7);
pickup pencircle scaled penLN;
drawarrow (v7+(0,-ht))--(v8+(0,ht));
label.bot(btex $f(x_1)=f(x_2)\rlap{${}=(x_1,x_2)$}$ etex, v8+(0,-14pt));
drawarrow (v8+(0,-22pt+ht)){dir110}..(v8+(0,-ht));
pickup pencircle scaled penPT;
draw v8;
v23 := v3;  % Save v3.
v25 := v5;  % Save v5.
v27 := v7;  % Save v7.

%------------------------------------------------------------------------
% Set S_2.
v12 := (0.35a,0.4b);
pat2 := ((0.0a,0.5b)..(0.3a,0.4b)..(0.5a,0.5b)..(0.2a,0.7b)..cycle)shifted v12;
pickup pencircle scaled penLN;
fill pat2 withcolor cola;
draw pat2;
v2 := (0.5a,0.6b)shifted v12;
label.rt(btex $S_2$ etex, v2);

v3 := (0.37a,0.5b)shifted v12;
v4 := (xpart(v3), 0);
pickup pencircle scaled penPT;
draw v3;
label.urt(btex $z_2$ etex, v3);
draw v4;
pickup pencircle scaled penLN;
drawarrow (v3+(0,-ht))--(v4+(0,ht));
label.rt(btex $f$ etex, 0.5[v3,v4]);
label.bot(btex $f(z_2)\rlap{${}=(\cdotsp,z_2)$}$ etex, v4);

v5 := (xpart(v5), ypart(v3)+0.1b);
v6 := (xpart(v5), 0);
pickup pencircle scaled penPT;
draw v5;
label.rt(btex $y_2$ etex, v5);
draw v6;
pickup pencircle scaled penLN;
drawarrow (v5+(0,-ht))--(v6+(0,ht));

v7 := v5+(-0.4cm,-0.3cm);
v8 := (xpart(v7), 0);
pickup pencircle scaled penPT;
draw v7;
label.lft(btex $x_2$ etex, v7);
draw v8;
pickup pencircle scaled penLN;
drawarrow (v7+(0,-ht))--(v8+(0,ht));
v33 := v3;  % Save v3.
v35 := v5;  % Save v5.
v37 := v7;  % Save v7.

%------------------------------------------------------------------------
% The collaged set.
v22 := (v37-v27)/2;
v13 := (0.8a,0.0b)+v22;
v14 := (0.8a,0.0b)-v22;
pat3 := pat1 shifted v13;
pat4 := pat2 shifted v14;

% Shading for the intersection of S_1 and S_2.
pickup pencircle scaled penLN;
S_venn_AB(pat3, pat4, cola, colb);

% Draw S_1 shifted.
pickup pencircle scaled penLN;
draw pat3;
pickup pencircle scaled penPT;
draw v23+v13;
label.top(btex $w$ etex, v23+v13);
draw v25+v13;
label.rt(btex $y$ etex, v25+v13);
draw v27+v13;
label.lft(btex $x$ etex, v27+v13);

% Draw S_2 shifted.
pickup pencircle scaled penLN;
draw pat4;
pickup pencircle scaled penPT;
draw v33+v14;
label.urt(btex $z$ etex, v33+v14);
draw v35+v14; % Superfluous.
draw v37+v14; % Superfluous.

% The arrow to the diagram on the right.
label(btex $\Rightarrow$ etex, (0.95a, 0.65b));

endfig;
end
