% tex/conc/mp/misc5.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/misc5.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% The MSC 2000 subject list.

input mapmax.mp

beginfig(1);
string str[], strr;
path p[];
pair c[];
picture pic[];
path pat[];

c0 := (0cm,0cm);
d := 15cm;
nn := 7;
dd := d-6pt;
ddd := d+17pt;
dddd := dd*0.8;
ddddd := ddd+2cm;
aa := 90-360/14;

p0 := fullcircle scaled d shifted c0;
% p1 := reverse ((fullcircle scaled d) rotated aa) shifted c0;
p1 := p0;
p3 := (fullcircle scaled dddd) rotated 90 shifted c0;
p10 := fullcircle scaled dd shifted c0;     % Inner circle.
p11 := fullcircle scaled ddd shifted c0;    % Outer circle

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
str[13] := "Commutative rings and algebras";
str[14] := "Algebraic geometry";
str[15] := "Linear and multilinear algebra; matrix theory";
str[16] := "Associative rings and algebras";
str[17] := "Nonassociative rings and algebras";
str[18] := "Category theory; homological algebra";
str[19] := "K-theory";
str[20] := "Group theory and generalizations";
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
str[42] := "Fourier analysis";
str[43] := "Abstract harmonic analysis";
str[44] := "Integral transforms, operational calculus";
str[45] := "Integral equations";
str[46] := "Functional analysis";
str[47] := "Operator theory";
str[49] := "Calculus of variations and optimal control; optimization";
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
str[91] := "Game theory, economics, social and behavioral sciences";
str[92] := "Biology and other natural sciences";
str[93] := "Systems theory; control";
str[94] := "Information and communication, circuits";
str[97] := "Mathematics education";

% Take a look at what we've got here.
nstrings := 0;
for i=0 upto 99:
    if str[i] <> "":
        nstrings := nstrings + 1;
        fi
    endfor

for i=0 upto nstrings-1:
    % Draw the radial line.
    pickup pencircle scaled 0.4pt;
    c1 := (dd/2,0) rotated ((360*i)/nstrings);
    draw c0--c1;
    endfor

pickup pencircle scaled 1.2pt;
draw p10 withcolor black;
draw p11 withcolor black;

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Draw the strings etc.
plen := length p1;
nstr := 0;
for i=0 upto 99:
    if str[i] <> "":
        p2 := reverse subpath
              ((nstr*plen)/nstrings,((nstr+1)*plen)/nstrings) of p1;

        % Draw the number.
        strr := decimal i;
        if i < 10: strr := "0" & strr; fi
        S_textcurve(strr, p2, 1, "cmr8", 1);

        % Draw the string.
        aa := ((nstr+0.5)*360)/nstrings;
        pic1 := ((str[i] infont "cmr8" scaled 1) shifted (0,-2pt))
                rotated (180 + aa);
        draw pic1 shifted ((dd/2-3pt,0) rotated aa);

        % Draw the "you are here" string.
        if i=53:
            pickup pencircle scaled 1.2pt;
            drawarrow ((ddddd/2,0)--(ddd/2+2mm,0)) rotated aa shifted c0;
            label.bot(btex you are here etex,
                (ddddd/2,0) rotated aa shifted c0);
            fi
        nstr := nstr + 1;
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
