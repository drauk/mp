% tex/conc/mp/int3.mp   2008-12-30   Alan U. Kennington.
% $Id: tex/conc/mp/int3.mp 92081a4573 2013-06-14 08:44:09Z Alan U. Kennington $
% Iteration of universe sets.

% prologues := 1;
input mapmax.mp

beginfig(1);
pair    lmid, p[], q[];
path    pat;
picture ordinals[];

r := 1.2mm;         % "Radius" of the empty set.
dx := 1.2mm;        % X-space between elements of a set.
margin := 2.0mm;    % Margin for set boundaries.
wpen := 0.5pt;      % Pen width.

nmax := 3;          % Number of ordinals to draw.
spp := 3mm;         % Vertical space between ordinals.
xlab := 6pt;        % Spacing of labels on the left;
ylab := 0pt;        % Spacing of labels on the left;

% The empty set.
pickup pencircle scaled wpen;
pat := (-r,-r)--(r,-r)--(r,r)--(-r,r)--cycle;
ordinals[0] := nullpicture;
addto ordinals[0] doublepath pat withpen currentpen;

% Create the ordinals.
for n=1 upto nmax:
    S_ordset(ordinals)(n, dx, margin);
    endfor

% Draw the ordinals.
totalshift := 0;
xa := xpart(llcorner ordinals[0]);
xb := xa;
for n=0 upto nmax:
    if n=0:
        currentpicture := ordinals[n];
    else:
        % Copy picture n to below picture n-1.
        xb := xpart(llcorner ordinals[n]);
        ya := ypart(llcorner ordinals[n-1]);
        yb := ypart(ulcorner ordinals[n]);
        totalshift := totalshift + yb-ya+spp;
        q[n] := (xa-xb, -totalshift);
        addto currentpicture also (ordinals[n] shifted q[n]);
        fi
    % Add label on the left.
    lmid := 0.5[ulcorner ordinals[n], llcorner ordinals[n]];

    p[n] := lmid + (-xlab+xa-xb, ylab-totalshift);
    endfor

label.lft(btex $U_0$ etex, p0);
label.lft(btex $U_1$ etex, p1);
label.lft(btex $U_2$ etex, p2);
label.lft(btex $U_3$ etex, p3);

p10 := q0 + urcorner ordinals[0];
p11 := q1 + urcorner ordinals[1];
p12 := q2 + urcorner ordinals[2];
p13 := q3 + urcorner ordinals[3];

p21 := p11 + (20pt, 3pt);
p31 := p11 + (-margin, -margin);
label.rt(btex $U_0$ etex, p21);
drawarrow p21--p31;

p22 := p12 + (30pt, 3pt);
p32 := p12 + (-margin, -margin);
p33 := p12 + (-3margin - 3r - dx, -2margin) + (0,1pt);
p34 := p12 + (-2margin - r, -2margin);
label.rt(btex $U_1$ etex, p22);
drawarrow p22--p32;
drawarrow p21--p33;
drawarrow p21--p34;

p23 := p13 + (20pt, 3pt);
p35 := p13 + (-margin, -margin);
p36 := p13 + (-6margin - 5r - 2dx, -2margin) + (0,1pt);
p37 := p13 + (-3margin - r, -2margin);
label.rt(btex $U_2$ etex, p23);
drawarrow p23--p35;
drawarrow p22--p36;
drawarrow p22--p37;

endfig;
end
