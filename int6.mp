% tex/conc/mp/int6.mp   2013-6-14   Alan U. Kennington.
% $Id: tex/conc/mp/int6.mp baec7129d9 2013-06-14 14:35:43Z Alan U. Kennington $
% Proof strategy to show total order of finite ordinals.

verbatimtex
\input akmath
etex

input mapmax.mp

beginfig(1);
numeric w[], h[];
pair zz[];
path pat[];

r := 3pt;         % Radius of each node.
d := 2r;          % Diameter of each node.
w1 := 80pt;
w2 := 15pt;
w4 := w2 * 1.41;
w3 := w1;
w6 := w3 + w4;
w7 := 60pt;
w8 := 25pt;
w9 := 0.55w6;
w10 := 2w2;
w11 := w2 + 20pt;

h2 := w2;
fr := 0.4;
h11 := fr * h2;
de := 0.45;

zz0 := (0,0);                   % Empty set.
zz1 := zz0 + (w1,0);            % z.
zz2 := zz1 + (w2,h2);           % w = v u {v}.
zz3 := zz1 + (w2,-h2);          % y = z u {z}.
zz4 := zz2 + (w6,0);            % m u {m}.
zz5 := zz3 + (w6,0);            % N_m.
zz6 := zz2 + (w3,0);            % m.
zz7 := zz4 + (w7,0);            % N
zz8 := zz5 + (w7,0);            % N
zz9 := zz7 + (w8,0);            % N
zz10 := zz8 + (w8,0);           % N
zz11 := zz3 + (w9,0);           % y (variable)
zz12 := zz2 + (-w10,0);         % Questionable point.
zz13 := zz3 + (-w10,0);         % Questionable point.
zz14 := zz1 + (w11,h11);        % Stage 2.
zz15 := zz1 + (w11,-h11);       % Stage 1.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
draw fullcircle scaled d shifted zz0;
draw fullcircle scaled d shifted zz1;
draw fullcircle scaled d shifted zz2;
draw fullcircle scaled d shifted zz3;
draw fullcircle scaled d shifted zz4;
draw fullcircle scaled d shifted zz5;
draw fullcircle scaled d shifted zz6;
% draw fullcircle scaled d shifted zz11;

S_arrow(zz0, zz1, r, r, 0, black, 0)();
S_arrow(zz1, zz2, r, r, 0, black, 0)(dashed evenly scaled de);
S_arrow(zz1, zz3, r, r, 0, black, 0)();
S_arrow(zz2, zz6, r, r, 0, black, 0)();
S_arrow(zz3, zz5, r, r, 0, black, 0)();
% S_arrow(zz3, zz11, r, r, 0, black, 0)();
% S_arrow(zz11, zz5, r, r, 0, black, 0)();
S_arrow(zz6, zz4, r, r, 0, black, 0)();
S_arrow(zz4, zz7, r, 0, 0, black, 0)();
S_arrow(zz5, zz8, r, 0, 0, black, 0)();
draw zz7--zz9 dashed evenly scaled 0.5;
draw zz8--zz10 dashed evenly scaled 0.5;
S_arrow(zz2, zz12, r, 0, 0, black, 0)(dashed evenly scaled de);
S_arrow(zz3, zz13, r, 0, 0, black, 0)(dashed evenly scaled de);
S_arrow(zz14, fr[zz1,zz2], 0, 1.5r, 1, black, 0)();
S_arrow(zz15, fr[zz1,zz3], 0, 1.5r, 1, black, 0)();

label.lft(btex $\emptyset$ etex, zz0+(-r,0));
label.ulft(btex $z$ etex, zz1+(-r,0)rotated-45);
label.top(btex $\strut w=v\bcup\{v\}$ etex, zz2+(0,r));
label.bot(btex $\strut y=z\bcup\{z\}$ etex, zz3+(0,-r));
label.top(btex $\strut m\rlap{${}\bcup\{m\}$}$ etex, zz4+(0,r));
% label.bot(btex $\strut N_m$ etex, zz5+(0,-r));
% label.bot(btex $\strut N_m=\{x\in N;\,m\notin x\}$ etex, zz5+(0,-r));
label.bot(btex $\strut N_m\rlap{${}=\{x\in N;\,m\notin x\}$}$ etex,
 zz5+(0,-r));
label.top(btex $\strut m$ etex, zz6+(0,r));
label.ulft(btex $\strut N$ etex, zz9);
label.ulft(btex $\strut N$ etex, zz10);
label.lft(btex ? etex, zz12);
label.lft(btex ? etex, zz13);
label.rt(btex stage 2 etex, zz14);
label.rt(btex stage 1 etex, zz15);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

% setbounds currentpicture to pat1;

endfig;
end
