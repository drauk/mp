% tex/conc/mp/class2.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/class2.mp defbd13703 2012-05-07 12:05:29Z Alan U. Kennington $
% Classical definitions of sine, cosine and tangent.

input mapmax.mp
verbatimtex
\font\ninerm cmr9
etex

beginfig(1);
pair v[];
path pat[];

penLN := 0.5pt;           % Lines.
penPT := 2.5pt;           % Points.

pickup pencircle scaled penLN;

%----------------------------------------------------------------------
a := 2.0cm;             % Radius of circle.
b := a * 0.75;          % Cosine length.

v1 := (0,0);            % O = centre of circle.
v2 := v1 + (-a,0);      % A
v3 := v1 + (a,0);       % B
v4 := v1 + (b,0);       % C
v5 := v3 + (0,a);       % Tangent top.
v6 := v3 + (0,-a);      % Tangent bottom.

pat1 := (fullcircle scaled 2a) shifted v1;
pat2 := v4--(v4+(0,2a)); % Line to intersect the circle.
v10 := pat1 intersectionpoint pat2;  % S
s := ypart(v10 - v4);   % Sine length.
t := s * (a/b);         % Tangent length.
v11 := v3 + (0,t);      % T.

draw pat1;      % The semicircle.
draw v2--v3;    % AB
draw v4--v10;   % CS
draw v1--v11 dashed evenly; % OT.
draw v5--v6;    % Tangent line.

label.llft(btex \sevenrm A etex, v2);
label.lrt(btex \sevenrm B etex, v3);
label.urt(btex \sevenrm T etex, v11);
label.bot(btex \sevenrm O etex, v1);
label.bot(btex \sevenrm C etex, v4);
label.lft(btex \sevenrm S etex, v10+(-2pt,0));
label.urt(btex $\theta$ etex, v1+(10pt,0));

pickup pencircle scaled penPT;
draw v1;
draw v3;
draw v10;
draw v11;

% Labels.
label.bot(btex cosine etex, 0.5[v1,v4]+(0,1pt));
% label.top(btex \ninerm radius${}=1$ etex, 0.5[v2,v1]+(0,-1pt));
% label.bot(btex \ninerm radius etex, 0.5[v2,v1]+(0,1pt));
label.top(btex radius etex, 0.5[v2,v1]+(0,-1pt));
S_tiltlabel_top_up(btex sine etex, 0.5[v4,v10]+(0,-2pt), 90, -1pt);
S_tiltlabel_bot_up(btex tangent etex, 0.5[v3,v11], 90, 1pt);

endfig;
end
