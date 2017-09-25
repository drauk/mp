% tex/conc/mp/topo21.mp   2012-8-7   Alan U. Kennington.
% $Id: tex/conc/mp/topo21.mp c446d8cd0d 2012-08-07 09:16:29Z Alan U. Kennington $
% Inverse set-maps of interior, exterior and boundary for a continuous function.

verbatimtex
\input akmath
etex

beginfig(1);
pair    p[], q[];
path    pat[];
color   colA, colB, colC;

%==============================================================================
% Diagram for domain of f.
unit := 1;
ww := unit * 10.0cm;
hh := unit * 1.3cm;
bdyX := 1/4;
bdyY := 1/3;
dtB := ww * bdyX;
dtA := (ww - dtB)/2;
dbB := ww * bdyX;
dbA := (ww - dbB)/2;
spc := 10pt;
spcc := 12pt;
spx := 20pt;
spy := 8pt;
spxx := 10pt;
spxd := 20pt;
spxe := 30pt;
spxf := 30pt;
spa := 3pt;
spb := 0.7pt;                   % Space between arrow tips.
dda := 12pt;                    % Arrow distance outside boxes.
ddx := 4pt;
ddxx := 8pt;
ddy := 4pt;
www := 0;
hhh := hh + 2spcc + 2spy + 20pt; % Spacing between domain and range.

p0 := (0,0);
p1 := p0 + (ww,0);
p2 := p0 + (ww,-hh);
p3 := p0 + (0,-hh);

p11 := p0 + (dtA,0);            % Bdy top left.
p12 := p0 + (dtA + dtB,0);      % Bdy top right.
p13 := 0.5[p11,p12];            % Bdy top middle.
p14 := 0.5[p0,p12];             % Closure top middle.
p21 := p3 + (dbA,0);            % Bdy bottom left.
p22 := p3 + (dbA + dbB,0);      % Bdy bottom right.
p23 := 0.5[p21,p22];            % Bdy bottom middle.
p24 := 0.5[p3,p22];             % Closure bottom middle.
p25 := 0.5[p3,p2];              % X bottom middle.
p26 := 0.5[p3,p23];             % S.
p27 := 0.5[p23,p2];             % X \ S.
p28 := 0.5[p0,p1];

p30 := 0.5[p0,p11];             % Int(f^{-1}(S)).
p31 := 0.5[p12,p1];             % Ext(f^{-1}(S)).

% Inner rectangles.
% p50 := p0 + (ddx, -ddy);
% p51 := p11 + (-ddx, -ddy);
% p52 := p21 + (-ddx, ddy);
% p53 := p3 + (ddx, ddy);
dtY := (1-bdyY)*ww/2;
p50 := p0;
p51 := p0 + (dtY, 0);
p52 := p3 + (dtY, 0);
p53 := p3;
p60 := p1;
p61 := p1 + (-dtY, 0);
p62 := p2 + (-dtY, 0);
p63 := p2;

pat0 := p0--p1--p2--p3--cycle;          % X.
pat1 := p11--p12--p22--p21--cycle;      % Bdy(S).
pat2 := p50--p51--p52--p53--cycle;      % Inverse image of Int(S).
% pat3 := pat2 shifted (ww-dtY,0);        % Inverse image of Int(Y \ S).
pat3 := p60--p61--p62--p63--cycle;      % Inverse image of Int(S).

penpt := 1.8pt;
penln := 0.5bp;
colA := 0.9white;
colB := 0.8white;
colC := 0.85white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penln;
fill pat0 withcolor colA;
fill pat1 withcolor colB;
fill pat2 withcolor colC;
fill pat3 withcolor colC;
draw pat0;
draw pat2;
draw pat3;
draw p11--p21;
draw p12--p22;
draw p13--p23 dashed evenly;

% f^{-1}(Bdy(S)).
drawarrow (p28+(-spxf,spcc+spy))--(p51+(0,spcc+spy));
drawarrow (p28+(spxf,spcc+spy))--(p61+(0,spcc+spy));

% Int(f^{-1}(S)).
drawarrow (p30+(-spxf,spy))--(p0+(0,spy));
drawarrow (p30+(spxf,spy))--(p11+(0,spy));

% Ext(f^{-1}(S)).
drawarrow (p31+(-spxf,spy))--(p12+(0,spy));
drawarrow (p31+(spxf,spy))--(p1+(0,spy));

% f^{-1}(X).
drawarrow (p25+(-spxx,-spcc-spy))--(p3+(0,-spcc-spy));
drawarrow (p25+(spxx,-spcc-spy))--(p2+(0,-spcc-spy));

% f^{-1}(S).
drawarrow (p26+(-spxd,-spy))--(p3+(0,-spy));
drawarrow (p26+(spxd,-spy))--(p25+(-spb,-spy));

% f^{-1}(X \ S).
drawarrow (p27+(-spxe,-spy))--(p25+(spb,-spy));
drawarrow (p27+(spxe,-spy))--(p2+(0,-spy));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.top(btex $\Int(f^{-1}(S))$ etex, 0.5[p0,p11]);
label.top(btex $\Bdy(f^{-1}(S))$ etex, 0.5[p11,p12]);
label.top(btex $\Ext(f^{-1}(S))$ etex, 0.5[p12,p1]);
% label.top(btex $\bar S$ etex, p14+(0,spcc+2pt));

label.bot(btex\strut $f^{-1}(S)$ etex, p26);
label.bot(btex\strut $X\setminus f^{-1}(S)$ etex, p27);
label.bot(btex $\vphantom{(}X$ etex, p25+(0,-spcc));

label(btex $f^{-1}(\Int(S))$ etex, 0.5[p50,p52]);
label(btex $f^{-1}(\Ext(S))$ etex, 0.5[p60,p62]);

label.top(btex $f^{-1}(\Bdy(S))$ etex, p28+(0,spcc));

%==============================================================================
% Diagram for range of f.
dtB := ww * bdyY;
dtA := (ww - dtB)/2;
dbB := ww * bdyY;
dbA := (ww - dbB)/2;

% Save some values for back reference.
p70 := p0;
p71 := p1;
p72 := p2;
p73 := p3;

p0 := (www,hhh);
p1 := p0 + (ww,0);
p2 := p0 + (ww,-hh);
p3 := p0 + (0,-hh);

p11 := p0 + (dtA,0);            % Bdy top left.
p12 := p0 + (dtA + dtB,0);      % Bdy top right.
p13 := 0.5[p11,p12];            % Bdy top middle.
p14 := 0.5[p0,p12];             % Closure top middle.
p21 := p3 + (dbA,0);            % Bdy bottom left.
p22 := p3 + (dbA + dbB,0);      % Bdy bottom right.
p23 := 0.5[p21,p22];            % Bdy bottom middle.
p24 := 0.5[p3,p22];             % Closure bottom middle.
p25 := 0.5[p3,p2];              % X bottom middle.
p26 := 0.5[p3,p23];             % S.
p27 := 0.5[p23,p2];             % X \ S.

p80 := 0.5[p70,p73];            % Left arrow head.
p81 := 0.5[p0,p3];              % Left arrow base.
p82 := 0.5[p71,p72];            % Right arrow head.
p83 := 0.5[p1,p2];              % Right arrow base.

pat0 := p0--p1--p2--p3--cycle;
pat1 := p11--p12--p22--p21--cycle;

% Arrows for inverse set-map for Int(S) and Ext(S).
pat10 := (p80+(ddxx,0))--(p80+(-dda,0))--(p81+(-dda,0))--p81;
pat11 := (p82+(-ddxx,0))--(p82+(dda,0))--(p83+(dda,0))--p83;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penln;
fill pat0 withcolor colA;
fill pat1 withcolor colB;
draw pat0;
draw p11--p21;
draw p12--p22;
draw p13--p23 dashed evenly;

% Bdy(S).
drawarrow (p13+(-spx,spy))--(p11+(0,spy));
drawarrow (p13+(spx,spy))--(p12+(0,spy));

% \bar S.
drawarrow (p14+(-spxx,spcc+spy))--(p0+(0,spcc+spy));
drawarrow (p14+(spxx,spcc+spy))--(p12+(0,spcc+spy));

% X.
drawarrow (p25+(-spxx,-spcc-spy))--(p3+(0,-spcc-spy));
drawarrow (p25+(spxx,-spcc-spy))--(p2+(0,-spcc-spy));

% S.
drawarrow (p26+(-spxx,-spy))--(p3+(0,-spy));
drawarrow (p26+(spxx,-spy))--(p25+(-spb,-spy));

% X \ S.
drawarrow (p27+(-spx,-spy))--(p25+(spb,-spy));
drawarrow (p27+(spx,-spy))--(p2+(0,-spy));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.top(btex $\Int(S)$ etex, 0.5[p0,p11]);
label.top(btex $\Bdy(S)$ etex, 0.5[p11,p12]);
label.top(btex $\Ext(S)$ etex, 0.5[p12,p1]);
label.top(btex $\bar S$ etex, p14+(0,spcc+2pt));

label.bot(btex\strut $S$ etex, p26);
label.bot(btex\strut $Y\setminus S$ etex, p27);
label.bot(btex $\vphantom{(}Y$ etex, p25+(0,-spcc));

% Arrows for inverse map.
drawarrow reverse pat10;
drawarrow reverse pat11;
label.lft(btex $f^{-1}$ etex, point 1.5 of pat10);
label.rt(btex $f^{-1}$ etex, point 1.5 of pat11);

endfig;
end
