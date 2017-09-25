% tex/conc/mp/vec5.mp   2007-4-6   Alan Kennington.
% $Id: tex/conc/mp/vec5.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Commutiativity of linear space addition.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair p[];
color vcol;

unit := 50;     % Scale factor.
sp := 4pt;      % Arrow spacing.
vcol := 0.5white;

p1 := (0,0)*unit;
p2 := ((1.3,0)*unit) rotated -50;
p3 := ((1.7,0)*unit) rotated 15;
p4 := p2+p3;

pickup pencircle scaled 0.5pt;
S_arrowspace(p1,p2,sp,1,vcol);
S_arrowspace(p1,p3,sp,1,vcol);
S_arrowspacesstyle(p2,p4,sp,sp,1)(dashed evenly);
S_arrowspacesstyle(p3,p4,sp,sp,1)(dashed evenly);
S_arrowspace(p1,p4,sp,1,vcol);

pickup pencircle scaled 2.5pt;
draw p1;
draw p2;
draw p3;
draw p4;

label.lft(btex $0$ etex, p1+(-2pt,0));
label.bot(btex \strut$v_2$ etex, p2);
label.top(btex \strut$v_1$ etex, p3);
label.rt(btex $v_1+v_2\rlap{${}=v_2+v_1$}$ etex, p4+(2pt,0));

label.lrt(btex ``copy of $v_1$'' etex, 0.3[p2,p4]);
label.urt(btex ``copy of $v_2$'' etex, 0.45[p3,p4]+(-2pt,0));

endfig;
end
