% tex/conc/mp/arrow42.mp   2012-4-16   Alan U. Kennington.
% $Id: tex/conc/mp/arrow42.mp efeb193fdd 2012-04-16 05:55:05Z Alan U. Kennington $
% Entity-relationship model for elementary category theory.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.5cm;
bb := 1.5cm;
sepA := 2.7cm;

qqa := 22pt;
qqb := 11pt;
qqc := 27pt;
qqd := 18pt;
da := 3.0cm;
dyD := 5pt;
dyE := 3pt;

penA := 0.5bp;              % Pen scale for markings.
sizeA := 3pt;

w0 := (0,0);                % objects
w1 := w0 + (0.5sepA,bb);    % category
w2 := w1 + (aa,0);          % functors
w3 := w0 + (sepA,0);        % morphisms

%==============================================================================
% Labels.
label(btex \strut objects etex, w0);
label(btex \strut category etex, w1);
label(btex \strut functors etex, w2);
label(btex \strut morphisms etex, w3);

% Arrows.
S_arrow_erd(w0, w1, qqb, qqb, 0, black, 0, penA,
 3, 1, black, black, sizeA, sizeA, penA, penA);

S_arrow_erd(w3, w1, qqb, qqb, 0, black, 0, penA,
 3, 1, black, black, sizeA, sizeA, penA, penA);

S_arrow_erd(w1, w2, qqa, qqa, 0, black, 0, penA,
 2, 3, black, black, sizeA, sizeA, penA, penA);

S_arrow_erd(w0, w3, qqd, qqc, 0, black, 0, penA,
 2, 3, black, black, sizeA, sizeA, penA, penA);

endfig;
end
