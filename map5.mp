% tex/conc/mp/map5.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/map5.mp 800da2fdb3 2012-07-19 07:54:52Z Alan U. Kennington $
% Map for coordinate map.

input mapmax.mp

beginfig(1);
pair q[];
numeric co[];

q0 := (0cm,0cm);        % Centre of set.
d := 3cm;               % Diameter of set.
r := d/2;
b := -0.28;             % Midpoint of subset arc.
penPT := 2.5bp;
penLN := 0.5bp;

co[0] := 0.80;          % Whiteness of complement of 2 subsets.
co[1] := 0.93;          % Whiteness of complement of 1 subset only.
co[2] := 1;             % Intersection of 2 subsets.

% Draw the set M and two subsets.
pickup pencircle scaled penLN;
S_subsets(q0,d, -45,85,b, -135,85,b, co[0],co[1],co[2]);

label.top(btex $S\setminus(A\cup B)$ etex, q0+(0,r));
label.lft(btex $A$ etex, q0+(-r,0));
label.rt(btex $B$ etex, q0+(r,0));
label.top(btex $A\cap B$ etex, q0+(0,-r*0.75));

endfig;
end
