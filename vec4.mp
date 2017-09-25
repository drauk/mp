% tex/conc/mp/vec4.mp   2007-4-5   Alan Kennington.
% $Id: tex/conc/mp/vec4.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Affine space transitivity. Used to be map39.mp.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair p[];

unit := 50;     % Scale factor.
sp := 4pt;      % Arrow spacing.

p1 := (0,0)*unit;
p2 := (1,-0.8)*unit;
p3 := (2,0.5)*unit;

S_arrowspace(p1,p2,sp,1,black);
S_arrowspace(p2,p3,sp,1,black);
S_arrowspace(p1,p3,sp,1,black);

pickup pencircle scaled 2.0pt;
draw p1;
draw p2;
draw p3;

label.lft(btex $R$ etex, p1);
label.bot(btex \strut$Q$ etex, p2);
label.rt(btex $P$ etex, p3);

label.llft(btex $w$ etex, 0.5[p1,p2]);
label.lrt(btex $v$ etex, 0.5[p2,p3]);
label.top(btex \strut$v+w$ etex, 0.5[p1,p3]);

endfig;
end
