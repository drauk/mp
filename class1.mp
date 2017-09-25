% tex/conc/mp/class1.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/class1.mp ec2798f5c7 2012-05-08 06:03:12Z Alan U. Kennington $
% Drawings from Euler book 1748.

beginfig(1);
pair v[];
path pat[];

pickup pencircle scaled 0.65pt;

%----------------------------------------------------------------------
% Figure 88.

a := 3.25cm;
b := 6.8cm;
c := 2.1cm;

v1 := (0,0);            % A
v2 := v1 + (-a,0);      % C
v3 := v1 + (0,b);       % B
v4 := v1 + (0,b/2);     % O = Centre of circle.
v5 := v1 + (0,c);       % P

pat1 := ((halfcircle rotated 90) scaled b) shifted v4;
pat2 := v5--(v5+(-b,0)); % Line to intersect the circle.
v6 := pat1 intersectionpoint pat2;  % M
v7 := v1 + (-b/2-4pt,0.5cm+2.5pt); % Lower left of the label.

draw v1--v2;    % AC
draw v1--v3;    % AB
draw pat1;      % The semicircle.
draw v5--v6;    % PM
draw v4--v6;    % OM

label.rt(btex \sevenrm A etex, v1+(0,-2pt));
label.lft(btex \sevenrm C etex, v2);
label.urt(btex \sevenrm B etex, v3);
label.rt(btex \sevenrm O etex, v4);
label.rt(btex \sevenrm P etex, v5);
label.lft(btex \sevenrm M etex, v6);
label(btex \rlap{\fiverm Fig.\ 88} etex, v7);

%----------------------------------------------------------------------
% Figure 89.

n := 0.47;          % Scale factor.
a := 3.25cm * n;
b := 6.8cm * n;
c := 2.1cm * n;

v1 := (6cm,0.5cm);      % A
v2 := v1 + (-a,0);      % C
v3 := v1 + (0,b);       % B
v4 := v1 + (0,b/2);     % O = Centre of circle.
v5 := v1 + (0,c);       % P

pat1 := ((halfcircle rotated 90) scaled b) shifted v4;
pat2 := v5--(v5+(-b,0)); % Line to intersect the circle.
v6 := pat1 intersectionpoint pat2;  % M
v7 := v1 + (0.25cm,0.3cm+2.5pt); % Lower left of the label.

draw v1--v2;    % AC
draw v1--v3;    % AB
draw pat1;      % The semicircle.
draw v5--v6;    % PM
draw v4--v6;    % OM

label.rt(btex \seveni a etex, v1+(0,2pt));
label.lft(btex \seveni c etex, v2+(0,2pt));
label.rt(btex \seveni b etex, v3);
label.rt(btex \seveni o etex, v4);
label.rt(btex \seveni p etex, v5);
label.lft(btex \seveni m etex, v6);
label(btex \rlap{\fiverm Fig.\ 89} etex, v7);

endfig;
end
