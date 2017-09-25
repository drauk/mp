% tex/conc/mp/log42.mp   2013-3-19   Alan U. Kennington.
% $Id: tex/conc/mp/log42.mp 540d3dd8b5 2013-03-18 16:44:32Z Alan U. Kennington $
% Different ways of viewing the logical operation A => B.

verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair zz[], sp[];
path pat[];

aa := 35pt;                 % Cell width.
bb := 35pt;                 % Cell height.
na := 2;
nb := 2;
% xt := 0.75aa;
% yt := 0.75aa;
xt := 0aa;
yt := 0aa;
da := na * aa + xt;         % Total width.
db := nb * bb + yt;         % Total height.

dx := 0pt;
thLN := 0.5bp;              % Line thickness.
dX := 3pt;                  % Dimension of X.
dO := dX * 2 * sqrt(2);     % Dimension of O.

cc := da + 1.7cm;
dd := da + 1.0cm;
ee := 0.5da + 1.0cm;
spA := 12pt;                % Label on left of abbreviated diagram.
spB := 12pt;                % Label on top of abbreviated diagram.
spC := 1pt;
spD := 1pt;

sp1 := (0,-dX-2pt);         % Displacement of O/X below centre of cell.
sp2 := (0,13pt);
sp3 := (-32pt,-2pt)-0.5sp2; % Displacement for defining O/X symbols.
sp4 := (0,0);

% Truth table parameters.
ddA := 20pt;                % Width for individual propositions.
ddB := 42pt;                % Width for compound proposition.
ddC := 13pt;                % Height for propositions.
ddD := 16pt;                % Height for each letter in the table.
ddE := ddD * 4;             % Height of lower part of the table.
ddF := ddA * 2 + ddB;       % Full width of table.
ddG := -2pt;                % Vertical adjustment to cell-letters.

zz0 := (0,0);               % Top left point. Knowledge set.
zz1 := zz0 + (cc,0);        % Top left point. Abbreviated knowledge set.
zz2 := zz1 + (dd,0);        % Top left point. Truth table.
zz3 := zz2 + (0,ddG);
zz4 := zz0 + (-ee,0);       % Linguistic version.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Linguistic version.
label.top(btex\strut Natural language etex, zz4);
label.bot(btex\strut \llap{``}If $A$ is true, etex, zz4+(0,2pt));
label.bot(btex\strut then $B$ is true.\rlap{''} etex, zz4-sp2+(0,2pt));

label.bot(btex\strut Symbolic logic etex, zz4-3sp2+(0,7pt));
label.bot(btex\strut $A\imprel B$ etex, zz4-4sp2+(0,5pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Knowledge set.
pickup pencircle scaled thLN;
% Horizontal lines.
for i=0 upto na:
    draw (zz0+(0,-i*bb))--(zz0+(da,-i*bb));
    endfor

% Vertical lines.
for j=0 upto nb:
    draw (zz0+(j*aa,0))--(zz0+(j*aa,-db));
    endfor

pickup pencircle scaled thLN;
zz10 := zz0 + (0.5aa,-0.5bb) + sp1;
% draw (zz10+(-dX,dX))--(zz10+(dX,-dX));
% draw (zz10+(-dX,-dX))--(zz10+(dX,dX));
draw fullcircle scaled dO shifted zz10;
label.top(btex $\valF,\valF$ etex, zz10+(0,dX));

zz11 := zz0 + (1.5aa,-0.5bb) + sp1;
% draw (zz11+(-dX,dX))--(zz11+(dX,-dX));
% draw (zz11+(-dX,-dX))--(zz11+(dX,dX));
draw fullcircle scaled dO shifted zz11;
label.top(btex $\valF,\valT$ etex, zz11+(0,dX));

zz12 := zz0 + (0.5aa,-1.5bb) + sp1;
draw (zz12+(-dX,dX))--(zz12+(dX,-dX));
draw (zz12+(-dX,-dX))--(zz12+(dX,dX));
% draw fullcircle scaled dO shifted zz12;
label.top(btex $\valT,\valF$ etex, zz12+(0,dX));

zz13 := zz0 + (1.5aa,-1.5bb) + sp1;
% draw (zz13+(-dX,dX))--(zz13+(dX,-dX));
% draw (zz13+(-dX,-dX))--(zz13+(dX,dX));
draw fullcircle scaled dO shifted zz13;
label.top(btex $\valT,\valT$ etex, zz13+(0,dX));

label.top(btex\strut $A,B$ truth values etex, zz0+(0.5da,0));
label.top(btex\strut Knowledge set etex, zz0+(0.5da,0)+sp2);

label.bot(btex\strut Truth value map is in $K$ etex, zz0+(0.5da,-db));
label.bot(btex\strut Truth value map not in $K$ etex, zz0+(0.5da,-db)-sp2);
zz20 := zz0 + (0,-db) + sp3;
zz21 := zz20 - sp2;
draw fullcircle scaled dO shifted zz20;
% draw fullcircle scaled dO shifted zz21;
draw (zz21+(-dX,dX))--(zz21+(dX,-dX));
draw (zz21+(-dX,-dX))--(zz21+(dX,dX));

dh := dO;
label.lft(btex\strut not excluded etex, zz20+(-dh,0));
label.lft(btex\strut excluded etex, zz21+(-dh,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
dxA := 6pt;
dxB := 6pt;
zz40 := zz1 + (0,-0.5db);
zz41 := zz40 + (-spA-spC,0.25db+0.5dxB);
zz42 := zz40 + (-spA-spC,-0.25db-0.5dxB);

zz45 := zz1 + (0.5da,0);
zz46 := zz45 + (0.25da+0.5dxA,spB+spD);
zz47 := zz45 + (-0.25da-0.5dxA,spB+spD);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Abbreviated knowledge set.
pickup pencircle scaled thLN;
% Horizontal lines.
for i=0 upto na:
    draw (zz1+(0,-i*bb))--(zz1+(da,-i*bb));
    endfor

% Vertical lines.
for j=0 upto nb:
    draw (zz1+(j*aa,0))--(zz1+(j*aa,-db));
    endfor

label.top(btex $\valF$ etex, zz1 + (0.5aa,0));
label.top(btex $\valT$ etex, zz1 + (1.5aa,0));
label.top(btex $B$ etex, zz1 + (0.5da,spB));

label.lft(btex $\valF$ etex, zz1 + (0,-0.5aa));
label.lft(btex $\valT$ etex, zz1 + (0,-1.5aa));
label.lft(btex $A$ etex, zz1 + (-spA,-0.5db));

pickup pencircle scaled thLN;
zz10 := zz1 + (0.5aa,-0.5bb) + sp4;
draw fullcircle scaled dO shifted zz10;

zz11 := zz1 + (1.5aa,-0.5bb) + sp4;
draw fullcircle scaled dO shifted zz11;

zz12 := zz1 + (0.5aa,-1.5bb) + sp4;
draw (zz12+(-dX,dX))--(zz12+(dX,-dX));
draw (zz12+(-dX,-dX))--(zz12+(dX,dX));

zz13 := zz1 + (1.5aa,-1.5bb) + sp4;
draw fullcircle scaled dO shifted zz13;

label.bot(btex\strut Abbreviated etex, zz1+(0.5da,-db));
label.bot(btex\strut knowledge set etex, zz1+(0.5da,-db)-sp2);

pickup pencircle scaled thLN;
draw zz41--zz42;
draw zz46--zz47;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Truth table.
pickup pencircle scaled thLN;
% Horizontal lines.
draw (zz2+(0,0))--(zz2+(ddF,0));
draw (zz2+(0,-ddE))--(zz2+(ddF,-ddE));

% Vertical lines.
draw (zz2+(ddA,ddC))--(zz2+(ddA,-ddE));
draw (zz2+(2ddA,ddC))--(zz2+(2ddA,-ddE));

label.top(btex $A$ etex, zz2+(0.5ddA,0));
label.top(btex $B$ etex, zz2+(1.5ddA,0));
label.top(btex $A\imprel B$ etex, zz2+(2ddA+0.5ddB,0));

label.top(btex\strut $\valF$ etex, zz3+(0.5ddA,-ddD));
label.top(btex\strut $\valF$ etex, zz3+(0.5ddA,-2ddD));
label.top(btex\strut $\valT$ etex, zz3+(0.5ddA,-3ddD));
label.top(btex\strut $\valT$ etex, zz3+(0.5ddA,-4ddD));

label.top(btex\strut $\valF$ etex, zz3+(1.5ddA,-ddD));
label.top(btex\strut $\valT$ etex, zz3+(1.5ddA,-2ddD));
label.top(btex\strut $\valF$ etex, zz3+(1.5ddA,-3ddD));
label.top(btex\strut $\valT$ etex, zz3+(1.5ddA,-4ddD));

label.top(btex\strut $\valT$ etex, zz3+(2ddA+0.5ddB,-ddD));
label.top(btex\strut $\valT$ etex, zz3+(2ddA+0.5ddB,-2ddD));
label.top(btex\strut $\valF$ etex, zz3+(2ddA+0.5ddB,-3ddD));
label.top(btex\strut $\valT$ etex, zz3+(2ddA+0.5ddB,-4ddD));

label.top(btex\strut Truth table etex, zz3+(0.5ddF,0)+sp2);

endfig;
end
