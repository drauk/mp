% tex/conc/mp/tree37.mp   2011-4-24   Alan U. Kennington.
% $Id: tex/conc/mp/tree37.mp a3816c7971 2011-04-24 09:29:50Z Alan U. Kennington $
% Family tree for classes and sigma-classes of subsets of a power set.
% Based on tree36.mp.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
% \input akmath
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

w1 := 60pt;
h1 := 30pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h1);
p5 := p3 + (w1,0);
p6 := p4 + (w1,0);

% Draw the boxes.
B_draw(1, btex {\ninerm\strut multiplicative class} etex, p1);

B_draw(2, btex {\ninerm\strut semi-ring} etex, p2);

B_draw(3, btex {\ninerm\strut ring} etex, p3);

B_draw(4, btex {\ninerm\strut algebra} etex, p4);

B_draw(5, btex {\ninerm\strut $\sigma$-ring} etex, p5);

B_draw(6, btex {\ninerm\strut $\sigma$-algebra} etex, p6);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(5,6,1);
B_arrow(4,6,1);

endfig;
end
