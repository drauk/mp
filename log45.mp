% tex/conc/mp/log45.mp   2013-5-4   Alan U. Kennington.
% $Id: tex/conc/mp/log45.mp 2200cf5df7 2013-05-03 20:29:22Z Alan U. Kennington $
% Bracket-level diagram for an infix logical expression.

verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

aa := 15pt;
bb := 15pt;

w0 := (0,0);
penLN := 0.5bp;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rectangle of variable location and size.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       logblock        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def logblock(expr level, iA, iB) =
begingroup
pair xSW, xNW, xSE, xNE;

xSW := w0 + (iA * aa, (level-1) * bb);
xNW := w0 + (iA * aa, level * bb);
xSE := w0 + ((iB + 1) * aa, (level-1) * bb);
xNE := w0 + ((iB + 1) * aa, level * bb);

pickup pencircle scaled penLN;
draw xSW--xNW--xNE--xSE;
endgroup
enddef; % End of function logblock.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vertical stroke. Variable location.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       logstroke       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def logstroke(expr level, i) =
begingroup
pair xS, xN;

xN := w0 + (i * aa, level * bb);
xS := w0 + (i * aa, (level-1) * bb);

pickup pencircle scaled penLN;
draw xN--xS;
endgroup
enddef; % End of function logstroke.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Symbol. Variable location.
%%%%%%%%%%%%%%%%%%%%%%%%%
%         logsym        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def logsym(expr level, i, sym) =
begingroup
pair xC;

xC := w0 + ((i+0.5) * aa, (level-0.5) * bb);

label(sym, xC);
endgroup
enddef; % End of function logsym.

%==============================================================================
pickup pencircle scaled penLN;
draw (w0+(-aa,0))--(w0+(16aa,0));
logblock(1, 0, 14);
logblock(2, 1, 11);
logblock(2, 13, 13);
logblock(3, 3, 10);
logblock(4, 4, 4);
logblock(4, 6, 9);
logblock(5, 8, 8);

logstroke(1, 1);
logstroke(1, 12);
logstroke(1, 13);
logstroke(1, 14);
logstroke(2, 2);
logstroke(2, 3);
logstroke(2, 11);
logstroke(3, 4);
logstroke(3, 5);
logstroke(3, 6);
logstroke(3, 10);
logstroke(4, 7);
logstroke(4, 8);
logstroke(4, 9);

logsym(1, 0, btex\strut $($ etex);
logsym(1, 12, btex\strut $\imprel$ etex);
logsym(1, 14, btex\strut $)$ etex);
logsym(2, 1, btex\strut $($ etex);
logsym(2, 2, btex\strut $\lnot$ etex);
logsym(2, 11, btex\strut $)$ etex);
logsym(2, 13, btex\strut $p_3$ etex);
logsym(3, 3, btex\strut $($ etex);
logsym(3, 5, btex\strut $\lor$ etex);
logsym(3, 10, btex\strut $)$ etex);
logsym(4, 4, btex\strut $p_1$ etex);
logsym(4, 6, btex\strut $($ etex);
logsym(4, 7, btex\strut $\lnot$ etex);
logsym(4, 9, btex\strut $)$ etex);
logsym(5, 8, btex\strut $p_2$ etex);

logsym(0.7, -1.8, btex\strut $0$ etex);
logsym(1.5, -1, btex\strut $1$ etex);
logsym(2.5, 0, btex\strut $2$ etex);
logsym(3.5, 2, btex\strut $3$ etex);
logsym(4.5, 3, btex\strut $4$ etex);

logsym(0.5, 16, btex\strut $0$ etex);
logsym(1.5, 15, btex\strut $1$ etex);
logsym(2.5, 14, btex\strut $2$ etex);
logsym(3.5, 11, btex\strut $3$ etex);
logsym(4.5, 10, btex\strut $4$ etex);
logsym(5.5, 9, btex\strut $5$ etex);

logsym(0, -2, btex\strut $i$ etex);
logsym(0, -1, btex\strut $-1$ etex);
logsym(0, 0, btex\strut $0$ etex);
logsym(0, 1, btex\strut $1$ etex);
logsym(0, 2, btex\strut $2$ etex);
logsym(0, 3, btex\strut $3$ etex);
logsym(0, 4, btex\strut $4$ etex);
logsym(0, 5, btex\strut $5$ etex);
logsym(0, 6, btex\strut $6$ etex);
logsym(0, 7, btex\strut $7$ etex);
logsym(0, 8, btex\strut $8$ etex);
logsym(0, 9, btex\strut $9$ etex);
logsym(0, 10, btex\strut $10$ etex);
logsym(0, 11, btex\strut $11$ etex);
logsym(0, 12, btex\strut $12$ etex);
logsym(0, 13, btex\strut $13$ etex);
logsym(0, 14, btex\strut $14$ etex);
logsym(0, 15, btex\strut $15$ etex);

% Vertical variable label.
logsym(4.5, 13, btex\strut $B(\phi,i)$ etex);
pickup pencircle scaled penLN;
drawarrow (w0+(15aa,3bb))--(w0+(15aa,5bb));

endfig;
end
