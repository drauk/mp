% tex/conc/mp/tree70.mp   2014-12-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree70.mp b853c7a1d2 2014-12-07 06:21:29Z Alan U. Kennington $
% Implications and impossible implications between some ZF choice axioms.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% calc_xy

input boxmax.mp
input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
% \def\blskip{9pt}
\def\blskip{11pt}

% \def\fontA{}
\font\eightrm cmr8
\font\ninerm cmr9
\def\fontA{\ninerm}

% \def\fontB{\scriptstyle}
% \def\fontB{}
\font\smallrm cmr9
\font\smallmi cmmi9
\font\smallsy cmsy9
\font\ssmallsy cmsy6
\def\fontB{%
 \textfont0=\smallrm
 \textfont1=\smallmi
 \textfont2=\smallsy
 \scriptfont2=\ssmallsy
 }
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[], q[];
path pat[];

w1 := 50pt;
h1 := 42pt;
% h2 := h1 + 5pt;

sepZ := 3pt;
xsize := 3pt;

penLN := 0.5bp;
penX := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p1 := (0,0);
p60 := p1 + (-w1,-h1);
p30 := p60 + (-1.8w1,0);
p62 := p60 + (0,-h1);
p61 := p62 + (0,-h1);
p8 := p1 + (w1,-h1);
p32 := p8 + (0,-h1);
p9 := p32 + (2.3w1,0);
p10 := p32 + (0,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
pickup pencircle scaled penLN;
B_draw(1, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}\fontA axiom of choice\cr\hfil
 $\fontB C(\infty,\infty)$ \fontA[1]\cr}etex, p1);

B_draw(60, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}choice of WO sets\cr\hfil
 $\fontB C(\infty,\text{\fontA WO})$ \fontA[60]\cr}etex, p60);

B_draw(30, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}linear ordering\cr\hfil
 $\text{\fontA LO}$ \fontA[30]\cr}etex, p30);

B_draw(62, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}choice(finite)\cr\hfil
 $\fontB C(\infty,<\omega)$ \fontA[62]\cr}etex, p62);

B_draw(61, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}choice(finite) [61]\cr\hfil
 $\fontB \forall n\ge2,\,C(\infty,n)$\cr}etex, p61);
% \tmat{\hfil\fontA\vphantom{f}choice(finite)\cr\hfil
% $\fontB \forall n\ge2,\,C(\infty,n)$ \fontA[61]\cr}etex, p61);

B_draw(8, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}countable choice\cr\hfil
 $\fontB C(\omega,\infty)$ \fontA[8]\cr}etex, p8);

B_draw(32, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}countable(countable)\cr\hfil
 $\fontB C(\omega,\omega)$ \fontA[32]\cr}etex, p32);

B_draw(9, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}finite${}\equiv{}$Dedekind finite\cr\hfil
 \fontA I-finite$\fontB{}\equiv{}$IV-finite [9]\cr}etex, p9);

B_draw(10, btex\baselineskip\blskip
 \tmat{\hfil$\fontB C(\omega,<\omega)$ \fontA[10]\cr
 \hfil\fontA\vphantom{f}$\fontB UT(\omega,<\omega,\omega)$ \fontA[10A]\cr}etex,
 p10);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ad-hoc function to calculate arrow X/Y offsets.
% Xa        first point.
% Xb        second point. (Must be different to the first point.)
% sepAB     offset of line from the mid-line.
% Outputs (global variables):
% sepX      offset in X direction
% sepY      offset in Y direction
%%%%%%%%%%%%%%%%%
%    calc_xy    %
%%%%%%%%%%%%%%%%%
def calc_xy(expr Xa, Xb, sepAB) =
sepX := sepAB * length(Xa-Xb)/abs(ypart(Xa-Xb));
sepY := sepAB * length(Xa-Xb)/abs(xpart(Xa-Xb));
enddef; % End of function calc_xy.

%==============================================================================
% Draw the arrows.
pickup pencircle scaled penLN;
B_margset(2pt, 2pt);

% Boxes 1 => 60.
B_box_point_m(q1)(1, -0.5, -1);
B_box_point_m(q2)(60, 0.5, 1);
calc_xy(q1, q2, sepZ);
pickup pencircle scaled penLN;
drawarrow (q1--q2) shifted (-sepX,0);
S_arrow_x(q1+(sepX,0), q2+(sepX,0), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 1 => 8.
B_box_point_m(q1)(1, 0.5, -1);
B_box_point_m(q2)(8, -0.5, 1);
calc_xy(q1, q2, sepZ);
pickup pencircle scaled penLN;
drawarrow (q1--q2) shifted (-sepX,0);
S_arrow_x(q1+(sepX,0), q2+(sepX,0), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 1 => 30.
B_box_point_m(q1)(1, -1, 0);
B_box_point_m(q2)(30, 0.5, 1);
calc_xy(q1, q2, sepZ);
pickup pencircle scaled penLN;
drawarrow (q1+(0,sepY))--(q2+(-sepX,0));
S_arrow_x(q1+(0,-sepY), q2+(sepX,0), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 60 => 30.
B_box_point_m(q1)(60, -1, 0);
B_box_point_m(q2)(30, 1, 0);
S_arrow_x(q1, q2, 0, 0, penLN, xsize, penX, 1, black)();

% Boxes 30 => 62.
B_box_point_m(q1)(30, 0.5, -1);
B_box_point_m(q2)(62, -1, 0);
calc_xy(q1, q2, sepZ);
pickup pencircle scaled penLN;
drawarrow (q1+(-sepX,0))--(q2+(0,-sepY));
S_arrow_x(q1+(sepX,0), q2+(0,sepY), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 60 => 62.
B_box_point_m(q1)(60, 0, -1);
B_box_point_m(q2)(62, 0, 1);
pickup pencircle scaled penLN;
% drawarrow (q1--q2) shifted (-10pt,0);
drawarrow q1--q2;

% Boxes 30 => 32.
B_box_point_m(q1)(30, 1, -0.8);
B_box_point_m(q2)(32, -1, 0.8);
% S_arrow_x(q1, q2, 0, 0, penLN, xsize, penX, 1, black)();
pickup pencircle scaled penLN;
drawarrow q1--q2;
% Special X on arrow.
S_draw_x(0.45[q1,q2], q2-q1, 0, xsize, penX, black);

% Boxes 60 => 32.
B_box_point_m(q1)(60, 1, -0.5);
B_box_point_m(q2)(32, -0.75, 1);
pickup pencircle scaled penLN;
drawarrow (q1--q2);

% Boxes 8 => 32.
B_box_point_m(q1)(8, 0, -1);
B_box_point_m(q2)(32, 0, 1);
pickup pencircle scaled penLN;
drawarrow (q1--q2);

% Boxes 8 => 9.
B_box_point_m(q1)(8, 1, 0);
B_box_point_m(q2)(9, -0.75, 1);
calc_xy(q1, q2, sepZ);
pickup pencircle scaled penLN;
drawarrow (q1+(0,-sepY))--(q2+(-sepX,0));
S_arrow_x(q1+(0,sepY), q2+(sepX,0), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 9 => 32.
B_box_point_m(q1)(9, -1, 0);
B_box_point_m(q2)(32, 1, 0);
S_arrow_x(q1, q2, 0, 0, penLN, xsize, penX, 1, black)();

% Boxes 62 => 61.
B_box_point_m(q1)(62, 0, -1);
B_box_point_m(q2)(61, 0, 1);
pickup pencircle scaled penLN;
drawarrow (q1--q2) shifted (-sepZ,0);
S_arrow_x(q1+(sepZ,0), q2+(sepZ,0), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 62 => 10.
B_box_point_m(q1)(62, 1, -0.9);
B_box_point_m(q2)(10, -1, 0.9);
pickup pencircle scaled penLN;
drawarrow (q1--q2);

% Special boxes 62 => 9.
B_box_point_m(q1)(62, 1, -0.5);
B_box_point_m(q2)(9, -1, -0.5);
B_box_point_m(q3)(32, 0, -1);
B_box_point_m(q4)(10, 0, 1);
pat1 := q1..(0.5[q3,q4])..q2;
pickup pencircle scaled penLN;
drawarrow pat1;
tpatX := 1.15;
S_draw_x(point tpatX of pat1, direction tpatX of pat1, 0, xsize, penX, black);

% Boxes 32 => 10.
B_box_point_m(q1)(32, 0, -1);
B_box_point_m(q2)(10, 0, 1);
pickup pencircle scaled penLN;
drawarrow (q1--q2);

% Boxes 9 => 10.
B_box_point_m(q1)(9, -0.75, -1);
B_box_point_m(q2)(10, 1, 0);
calc_xy(q2, q1, sepZ);
pickup pencircle scaled penLN;
drawarrow (q1+(-sepX,0))--(q2+(0,sepY));
S_arrow_x(q1+(sepX,0), q2+(0,-sepY), 0, 0, penLN, xsize, penX, 2, black)();

% Boxes 10 => 61.
B_box_point_m(q1)(10, -1, 0);
B_box_point_m(q2)(61, 1, 0);
S_arrow_x(q1, q2, 0, 0, penLN, xsize, penX, 2, black)();

endfig;
end
