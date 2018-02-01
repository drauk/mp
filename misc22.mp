% tex/conc/mp/misc22.mp   2018-1-5   Alan U. Kennington.
% $Id: tex/conc/mp/misc22.mp c2a2b82d8f 2014-11-11 02:04:47Z Alan U. Kennington $
% The MSC 2010 subject list with Helvetica font phvr8y. Clockwise version.
% This version has British spelling.

input mapmax

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair c[];
string str[], strCODE;
path p[], pat[];
picture pic[];

c0 := (0cm,0cm);            % Centre of circle.
dTEXT := 15cm;              % Text circle.
dIN := dTEXT-6pt;           % Inner circle.
dOUT := dTEXT+17pt;         % Outer circle.
dAout := dOUT+2cm;          % Outer base of inward-pointing arrows.

penARROW := 0.65bp;         % Arrows.
penCIRC := 1.0bp;           % Inner and outer circles.
penRAD := 0.4bp;            % Radial lines.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p1 := reverse fullcircle scaled dTEXT rotated 90 shifted c0;    % Text circle.
p10 := fullcircle scaled dIN shifted c0;                        % Inner circle.
p11 := fullcircle scaled dOUT shifted c0;                       % Outer circle.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for i=0 upto 99:
    str[i] := "";
    endfor

str[0] := "General";
str[1] := "History and biography";
str[3] := "Mathematical logic and foundations";
str[5] := "Combinatorics";
str[6] := "Order, lattices, ordered algebraic structures";
str[8] := "General algebraic systems";
str[11] := "Number theory";
str[12] := "Field theory and polynomials";
str[13] := "Commutative algebra";
str[14] := "Algebraic geometry";
str[15] := "Linear and multilinear algebra; matrix theory";
str[16] := "Associative rings and algebras";
str[17] := "Nonassociative rings and algebras";
str[18] := "Category theory, homological algebra";
str[19] := "K-theory";
str[20] := "Group theory and generalisations";
str[22] := "Topological groups, Lie groups";
str[26] := "Real functions";
str[28] := "Measure and integration";
str[30] := "Functions of a complex variable";
str[31] := "Potential theory";
str[32] := "Several complex variables and analytic spaces";
str[33] := "Special functions";
str[34] := "Ordinary differential equations";
str[35] := "Partial differential equations";
str[37] := "Dynamical systems and ergodic theory";
str[39] := "Difference and functional equations";
str[40] := "Sequences, series, summability";
str[41] := "Approximations and expansions";
str[42] := "Harmonic analysis on Euclidean spaces";
str[43] := "Abstract harmonic analysis";
str[44] := "Integral transforms, operational calculus";
str[45] := "Integral equations";
str[46] := "Functional analysis";
str[47] := "Operator theory";
str[49] := "Calculus of variations and optimal control; optimisation";
str[51] := "Geometry";
str[52] := "Convex and discrete geometry";
str[53] := "Differential geometry";
str[54] := "General topology";
str[55] := "Algebraic topology";
str[57] := "Manifolds and cell complexes";
str[58] := "Global analysis, analysis on manifolds";
str[60] := "Probability theory and stochastic processes";
str[62] := "Statistics";
str[65] := "Numerical analysis";
str[68] := "Computer science";
str[70] := "Mechanics of particles and systems";
str[74] := "Mechanics of deformable solids";
str[76] := "Fluid mechanics";
str[78] := "Optics, electromagnetic theory";
str[80] := "Classical thermodynamics, heat transfer";
str[81] := "Quantum theory";
str[82] := "Statistical mechanics, structure of matter";
str[83] := "Relativity and gravitational theory";
str[85] := "Astronomy and astrophysics";
str[86] := "Geophysics";
str[90] := "Operations research, mathematical programming";
str[91] := "Game theory, economics, social and behavioural sciences";
str[92] := "Biology and other natural sciences";
str[93] := "Systems theory, control";
str[94] := "Information and communication, circuits";
str[97] := "Mathematical education";

% Take a look at what we've got here.
nstrings := 0;
for i=0 upto 99:
    if str[i] <> "":
        nstrings := nstrings + 1;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penRAD;
for i=0 upto nstrings-1:
    % Draw the radial line starting at the top and running clockwise.
    c1 := (dIN/2,0) rotated (90 - (360*i)/nstrings);
    draw c0--c1;
    endfor

pickup pencircle scaled penCIRC;
draw p10 withcolor black;
draw p11 withcolor black;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Draw the strings etc.
lenTEXT := length p1;
nSTR := 0;
for i=0 upto 99:
    if str[i] <> "":
        p2 := subpath
              ((nSTR*lenTEXT)/nstrings,((nSTR+1)*lenTEXT)/nstrings) of p1;

        % Draw the number.
        strCODE := decimal i;
        if i < 10:
            strCODE := "0" & strCODE;
            fi
        S_textcurve(strCODE, p2, 1, "cmr8", 1);

        % Draw the string.
        angSTR := 90 - ((nSTR+0.5)*360)/nstrings;
        % Font phvr8y looks nicer than cmr8.
%        pic1 := ((str[i] infont "cmr8" scaled 1) shifted (0,-2pt))
        pic1 := ((str[i] infont "phvr8y" scaled 0.85) shifted (0,-2pt))
                rotated (180 + angSTR);
        draw pic1 shifted ((dIN/2-3pt,0) rotated angSTR);

        % Draw the "you are here" string.
        if i=35:
            pickup pencircle scaled penARROW;
%            drawarrow ((dAout/2,0)--(dOUT/2+2mm,0)) rotated angSTR shifted c0;
%            label.top(btex PDE etex,
%                ((dAout/2,0) rotated angSTR shifted c0)+(-6pt,0));
        elseif i=53:
            pickup pencircle scaled penARROW;
            drawarrow ((dAout/2,0)--(dOUT/2+2mm,0)) rotated angSTR shifted c0;
            label.bot(btex you are here etex,
                (dAout/2,0) rotated angSTR shifted c0);
%        elseif i=55:
%            pickup pencircle scaled penARROW;
%            drawarrow ((dAout/2,0)--(dOUT/2+2mm,0)) rotated angSTR shifted c0;
%            label.bot(btex algebraic topology etex,
%                (dAout/2,0) rotated angSTR shifted c0);
%        elseif i=83:
%            pickup pencircle scaled penARROW;
%            drawarrow ((dAout/2,0)--(dOUT/2+2mm,0)) rotated angSTR shifted c0;
%            label.top(btex general relativity etex,
%                (dAout/2,0) rotated angSTR shifted c0);
            fi
        nSTR := nSTR + 1;
        fi
    endfor

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
