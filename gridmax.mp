% tex/conc/mp/gridmax.mp   2018-2-2   Alan U. Kennington.
% $Id: tex/conc/mp/gridmax.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Set-map MetaPost macros.
% These macros are not designed as a general purpose library.
% These macros are intended for use with Alan U. Kennington's diagrams.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% G_drawmask
% G_grid
% G_oldgrid
% G_lingrid

% DISCLAIMER.
% The author of this file disclaims any express or implied guarantee of
% the fitness of this file for any purpose. In no event shall the author
% of this file be held liable for any direct, indirect, incidental,
% special, exemplary, or consequential damages (including, but not limited
% to, procurement of substitute services; loss of use, data, or profits; or
% business interruption) however caused and on any theory of liability,
% whether in contract, strict liability, or tort (including negligence or
% otherwise) arising in any way out of the use of this file, even if
% advised of the possibility of such damage.

verbatimtex
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choose drawing primitive according to mask.
% This is idential to B_drawmask and G_drawmask.
% mask = 0      no arrowheads
% mask = 1      arrowhead at end of arrow
% mask = 2      arrowhead at start of arrow
% mask = 3      arrowhead at both ends of arrow
%%%%%%%%%%%%%%%%%%%%%%%%%
%      G_drawmask       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def G_drawmask(expr mask) =
if mask = 0:
    draw
elseif mask = 1:
    drawarrow
elseif mask = 2:
    drawarrow reverse
elseif mask = 3:
    drawdblarrow
    fi
enddef; % End of function G_drawmask.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an interpolated grid between 4 paths.
% path pat[]        array of 4 paths - indices 1..4
% numeric m         ratio for dividing the X-direction
% numeric n         ratio for dividing the Y-direction
% numeric mx        extra grid points in X-direction
% numeric nx        extra grid points in Y-direction
% If mx > 1, then mx-1 grid points are interpolated between
% each point on the n curves. Similarly for nx.
% mx and nx are "oversampling" factors.
% numeric ma        bit-map of required arrowheads
% numeric na        bit-map of required arrowheads
% Bitmap 0 = neither, 1 = forward, 2 = reverse, 3 = both, 4 = not drawn.
% color col         colour to draw in
%%%%%%%%%%%%%%%%%%%%%%%%%
%        G_grid         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def G_grid(text pat)(expr m, n, mx, nx, ma, na, col) =
% Global variables. Used by some metapost files.
numeric G_m, G_n, G_a[], G_b[];
pair G_p[][];

begingroup
% Local variables.
numeric G_len[], G_mx, G_nx;
pair G_pr[];

% Force sensible parameters.
G_m := floor(m);
G_n := floor(n);
G_mx := floor(mx);
G_nx := floor(nx);

for i=1 step 1 until 4:
    G_len[i] := length pat[i];
    if G_len[i] = 0:
        G_len[i] := 1;
        fi
    endfor

% Calculate the linear interpolation points from the vertices.
G_pr10 := 0.5[point 0 of pat1, point 0 of pat2];
G_pr11 := 0.5[point G_len1 of pat1, point 0 of pat4];
G_pr30 := 0.5[point 0 of pat3, point G_len2 of pat2];
G_pr31 := 0.5[point G_len3 of pat3, point G_len4 of pat4];

% Calculate total numbers of grid points.
G_a1 := max(1, G_m);
G_b1 := max(1, G_mx);
G_a1 := G_a1 * G_b1;

G_a2 := max(1, G_n);
G_b2 := max(1, G_nx);
G_a2 := G_a2 * G_b2;

for i=0 upto G_a1:
    G_s := i/G_a1;
    G_pr1 := G_s[G_pr10, G_pr11];
    G_pr2 := G_s[G_pr30, G_pr31];
    for j=0 upto G_a2:
        G_t := j/G_a2;
        % This is the magic interpolation formula!
        G_p[i][j] :=
            G_t[point G_s*G_len1 of pat1, point G_s*G_len3 of pat3]
            + G_s[point G_t*G_len2 of pat2, point G_t*G_len4 of pat4]
            - G_t[G_pr1,G_pr2];
        endfor
    endfor

% Draw the linear interpolation lines.
if (ma >= 0) and (ma <= 3):
    for i=0 upto G_m:
        G_drawmask(ma) for j=0 upto G_a2-1:
            G_p[i*G_b1][j]..
            endfor
            G_p[i*G_b1][G_a2] withcolor col;
        endfor
    fi
if (na >= 0) and (na <= 3):
    for j=0 upto G_n:
        G_drawmask(na) for i=0 upto G_a1-1:
            G_p[i][j*G_b2]..
            endfor
            G_p[G_a1][j*G_b2] withcolor col;
        endfor
    fi
endgroup
enddef; % End of function G_grid.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an interpolated grid between 4 paths.
% Obsolete function.
% path pat[]        array of 4 paths - indices 1..4
% numeric m         ratio for dividing the X-direction
% numeric n         ratio for dividing the Y-direction
% numeric xt        extension in the X-direction
% numeric yt        extension in the Y-direction
%%%%%%%%%%%%%%%%%%%%%%%%%
%       G_oldgrid       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def G_oldgrid(text pat)(expr m, n, xt, yt) =
begingroup
numeric G_len[];
pair G_p[][];
numeric G_t[];
path G_pat[];
pair G_pr[];

for i=1 step 1 until 4:
    G_len[i] := length pat[i];
    if G_len[i] = 0:
        G_len[i] := 1;
        fi
    endfor
G_t1 := max(G_len1,G_len3);
G_t2 := max(G_len2,G_len4);

% Draw the curves interpolating from pat2 to pat4.
if m >= 1:
    for i=0 upto m:
        % Determine the path X = i/m.
        G_pat0 := for j=0 upto G_t2 - 1:
            (i/m)[point(j*G_len2/G_t2) of pat2, point(j*G_len4/G_t2) of pat4]..
            endfor
            (i/m)[point(G_len2) of pat2, point(G_len4) of pat4];
        drawarrow G_pat0;
        endfor
    fi
if n >= 1:
    for i=0 upto n:
        % Determine the path Y = i/n.
        G_pat0 := for j=0 upto G_t1 - 1:
            (i/n)[point(j*G_len1/G_t1) of pat1, point(j*G_len3/G_t1) of pat3]..
            endfor
            (i/n)[point(G_len1) of pat1, point(G_len3) of pat3];
        drawarrow G_pat0;
        endfor
    fi
endgroup
enddef; % End of function G_oldgrid.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a linear grid between 4 points.
% pair pt[]         array of 4 points: (0,0), (1,0), (0,1), (1,1).
%                   indices 0..3.
% numeric m         ratio for dividing the X-direction
% numeric n         ratio for dividing the Y-direction
% numeric xt        extension in the X-direction
% numeric yt        extension in the Y-direction
%%%%%%%%%%%%%%%%%%%%%%%%%
%       G_lingrid       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def G_lingrid(text pt)(expr m, n, xt, yt) =
begingroup
pair G_p[][];
pair G_pr[];

% Calculate the linear interpolation points from the vertices.
for i=0 upto m:
    G_pr1 := (i/m)[pt0, pt1];
    G_pr2 := (i/m)[pt2, pt3];
    for j=0 upto n:
        G_p[i][j] := (j/n)[G_pr1,G_pr2];
        endfor
    endfor

% Draw the linear interpolation lines.
for i=0 upto m:
    drawarrow for j=0 upto n-1:
        G_p[i][j]..
        endfor
        G_p[i][n];
    endfor
for j=0 upto n:
    drawarrow for i=0 upto m-1:
        G_p[i][j]..
        endfor
        G_p[m][j];
    endfor
endgroup
enddef; % End of function G_lingrid.
