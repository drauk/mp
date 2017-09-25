% tex/conc/mp/misc3.mp   2015-10-31   Alan U. Kennington.
% $Id: tex/conc/mp/misc3.mp 6a49a644ca 2015-10-31 06:59:45Z Alan U. Kennington $
% How to write and simultaneously publish a work-in-progress book.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[], q[];
path pat[];

unit := 1.05cm; % Scale factor for individual figures.
sp := 1.48cm;   % Arrow spacing.
a := 3.5cm;     % Horizontal spacing of figures.
b := 0.5cm;     % Height of arrow labels above the arrows.

% The old pen values.
% penARROW := 0.7pt;
% penLINE := 1.0pt;
% penSEVEN := 0.9pt;
% penPT := 2.5pt;

penARROW := 0.5bp;
penLINE := 0.5bp;
penSEVEN := 0.5bp;
penPT := 2.5pt;

p1 := (0,0);

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 0.
% Draw the book rectangle.
n := 2;
radius := unit * 0.87;
rad := radius * 0.07;
pickup pencircle scaled penLINE;
nbooks := 3;
for i=0 upto nbooks-1:
    p3 := p1+(rad*(2*i-nbooks+1),0);
    draw (p3+(rad,radius))--(p3+(-rad,radius))--
         (p3+(-rad,-radius))--(p3+(rad,-radius))--cycle;
    endfor

% Middle text and bottom label.
% label(btex ideas etex, p1);
label.bot(btex books etex, p1+(0,-unit));

% Arrow to the next figure.
pickup pencircle scaled penARROW;
p2 := p1 + (a*0.54,0);
hcorr := -4.7pt;
S_arrowspace(p1+(hcorr,0),p2+(hcorr,0),sp*0.5,1,black);
label(btex read etex, 0.5[p1,p2]+(hcorr,b));

% Move to position of the next figure.
p1 := p2;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 1.
% Draw the brain triangle.
n := 3;
radius := unit * 1;
pickup pencircle scaled penLINE;
pat1 := for i=0 upto (n-1):
    % Note: The parentheses around -(i*360)/n are essential.
    % Otherwise all the points are equal to p1. Very annoying!!!!!!
    (p1 + ((0,radius) rotated (-(i*360)/n)))--
    endfor
    cycle;
draw pat1;

% Middle text and bottom label.
label(btex ideas etex, p1);
label.bot(btex brain etex, p1+(0,-unit));

% Arrow to the next figure.
pickup pencircle scaled penARROW;
p2 := p1 + (a*0.8,0);
hcorr := -4.5pt;
S_arrowspace(p1+(hcorr,0),p2+(hcorr,0),sp*0.8,1,black);
label(btex write etex, 0.5[p1,p2]+(hcorr,b));

% Move to position of the next figure.
p1 := p2;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 2.
% Draw the polyhedron.
n := 4;
radius := unit * 1.15;
pickup pencircle scaled penLINE;
pat1 := for i=0 upto (n-1):
    % Note: The parentheses around -(i*360)/n are essential.
    % Otherwise all the points are equal to p1. Very annoying!!!!!!
    (p1 + ((0,radius) rotated (45-(i*360)/n)))--
    endfor
    cycle;
draw pat1;

% Middle text and bottom label.
label(btex notes etex, p1);
label.bot(btex desk etex, p1+(0,-unit));

% Arrow to the next figure.
pickup pencircle scaled penARROW;
p2 := p1 + (a*0.9,0);
hcorr := -2.0pt;
S_arrowspace(p1+(hcorr,0),p2+(hcorr,0),sp*0.9,1,black);
label(btex type etex, 0.5[p1,p2]+(hcorr,b));

% Move to position of the next figure.
p1 := p2;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 3.
% Draw the polyhedron.
n := 5;
radius := unit * 1.05;
pickup pencircle scaled penLINE;
pat1 := for i=0 upto (n-1):
    % Note: The parentheses around -(i*360)/n are essential.
    % Otherwise all the points are equal to p1. Very annoying!!!!!!
    (p1 + ((0,radius) rotated (-(i*360)/n)))--
    endfor
    cycle;
draw pat1;

% Middle text and bottom label.
label(btex \TeX\ files etex, p1);
label.bot(btex workstation etex, p1+(0,-unit));

% Arrow to the next figure.
pickup pencircle scaled penARROW;
p2 := p1 + (a,0);
hcorr := 0pt;
S_arrowspace(p1+(hcorr,0),p2+(hcorr,0),sp,1,black);
label(btex upload etex, 0.5[p1,p2]+(hcorr,b));

% Move to position of the next figure.
p1 := p2;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 4.
% Draw the polyhedron.
n := 6;
radius := unit * 1.1;
pickup pencircle scaled penLINE;
pat1 := for i=0 upto (n-1):
    % Note: The parentheses around -(i*360)/n are essential.
    % Otherwise all the points are equal to p1. Very annoying!!!!!!
    (p1 + ((0,radius) rotated (30-(i*360)/n)))--
    endfor
    cycle;
draw pat1;

% Middle text and bottom label.
% label(btex PostScript etex, p1+(0,3));
% label(btex files etex, p1+(0,-9));
label(btex PDF file etex, p1);
label.bot(btex web server etex, p1+(0,-unit));

% Arrow to the next figure.
pickup pencircle scaled penARROW;
p2 := p1 + (a,0);
hcorr := 0pt;
S_arrowspace(p1+(hcorr,0),p2+(hcorr,0),sp,1,black);
label(btex download etex, 0.5[p1,p2]+(hcorr,b));

% Move to position of the next figure.
p1 := p2;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 5.
% Draw the polyhedron.
n := 7;
radius := unit * 1.05;

n := 7;
for i=0 upto n-1:
    pickup pencircle scaled penPT;
    draw p1+(0,radius)rotated(360*(i/n));
    pickup pencircle scaled penSEVEN;
    for j=i+2 upto i+n-2:
        draw (p1+(0,radius)rotated(360*(i/n)))
           --(p1+(0,radius)rotated(360*(j/n)));
        endfor
    endfor

% Middle text and bottom label.
label.bot(btex Internet etex, p1+(0,-unit));

endfig;
end
