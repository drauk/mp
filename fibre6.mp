% tex/conc/mp/fibre6.mp   2015-8-20   Alan U. Kennington.
% $Id: tex/conc/mp/fibre6.mp c65bdace80 2015-08-20 05:08:19Z Alan U. Kennington $
% Maps for collage to construct a fibre bundle.
% Formerly map37.mp.

input mapmax.mp

beginfig(1);
path pat[];
pair q[];
picture pic;
color col[];

% Dimensions (a,b) of the base space sets.
unit := 0.85;           % Overall scale factor.
a := 3.0cm * unit;
b := 0.8cm * unit;
c := 2.8cm * unit;      % Height of sets F above sets U_i.
xt := 0.2cm;            % Offset of arrows.
penLN := 0.5bp;
penPT := 2.5bp;

q0 := (0,0);            % Point b in B.

% Displacements of sets U_i.
q1 := (-a/3,-b/3);
q2 := (0,b/2);
q3 := (a/3,-b/3);
col0 := 0.95white;
col1 := 0.95white;
col2 := 0.91white;
col3 := 0.86white;

% Displacements of sets F.
q4 := (-2b,c);
q5 := (0,c+2b);
q6 := (2b,c);

% Template for sets U_i.
pickup pencircle scaled penLN;
pat0 := fullcircle xscaled (a*2) yscaled (b*2);

% Template for sets F.
pat1 := fullcircle xscaled (a*0.6) yscaled (a*0.5);

% Sets U_i.
S_venn_ABC(pat0 shifted q1, pat0 shifted q2, pat0 shifted q3, col1, col2, col3);
draw pat0 shifted q1;
draw pat0 shifted q2;
draw pat0 shifted q3;
label.lft(btex $U_1$ etex, q1+(-a,0));
label.ulft(btex $U_2$ etex, q2+(-a,b)*0.7);
label.rt(btex $U_3$ etex, q3+(a,0));

% Point B.
pickup pencircle scaled penPT;
draw q0;
label.lft(btex $b$ etex, q0);

% Sets F.
pickup pencircle scaled penLN;
fill (pat1 shifted q4) withcolor col0;
fill (pat1 shifted q5) withcolor col0;
fill (pat1 shifted q6) withcolor col0;
draw pat1 shifted q4;
draw pat1 shifted q5;
draw pat1 shifted q6;
label.lft(btex $F$ etex, q4+(-a*0.3,0));
label.lft(btex $F$ etex, q5+(-a*0.3,0));
label.rt(btex $F$ etex, q6+(a*0.3,0));

% Points f_i.
pickup pencircle scaled penPT;
draw q4;
label.lft(btex $f_1$ etex, q4);
draw q5;
label.top(btex $f_2$ etex, q5);
draw q6;
label.rt(btex $f_3$ etex, q6);

% Arrows between elements of F copies.
pickup pencircle scaled penLN;
S_arrowspace(q4, q5, xt, 3, 0.5white);
S_arrowspace(q4, q6, xt, 3, 0.5white);
S_arrowspace(q5, q6, xt, 3, 0.5white);

% Lines from b to f_i.
S_arrowspaces(q0, q4, xt, a*0.3, 1, black);
S_arrowspaces(q0, q5, xt, a*0.3, 1, black);
S_arrowspaces(q0, q6, xt, a*0.3, 1, black);

endfig;
end
