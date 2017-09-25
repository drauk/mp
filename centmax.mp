% tex/conc/mp/centmax.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/centmax.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Bounding box centring MetaPost macros.
% These macros are not designed as a general purpose library.
% These macros are intended for use with Alan U. Kennington's diagrams.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% C_bbox_centre_get
% C_bbox_centre_set

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

%-----------------------------------------------------------
% Get the centre of the bounding box of a given picture.
% pict      input: picture object, such as "currentpicture".
% midpt     output: centre of the picture.
%%%%%%%%%%%%%%%%%%%%%%%%%
%   C_bbox_centre_get   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def C_bbox_centre_get(expr pict)(text midpt) =
begingroup
midpt := 0.5[llcorner pict, urcorner pict];
endgroup
enddef; % End of function C_bbox_centre_get.

%-----------------------------------------------------------
% Centre a bounding box horizontally around a given point.
% pict      output: picture object, such as "currentpicture".
% midpt     input: point to centre the picture around.
%%%%%%%%%%%%%%%%%%%%%%%%%
%   C_bbox_centre_set   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def C_bbox_centre_set(text pict)(expr midpt) =
begingroup
numeric B_cornA, B_cornB;
pair B_corn[];
path B_pat;
pen B_pen;

% Get the corners of the given picture.
B_corn1 := llcorner pict;
B_corn2 := lrcorner pict;
B_corn3 := urcorner pict;
B_corn4 := ulcorner pict;

% Compute offset required to centre the diagram.
B_cornA := xpart(midpt - B_corn1);
B_cornB := xpart(B_corn2 - midpt);
if B_cornA >= B_cornB:
    B_corn2 := B_corn2 + (B_cornA - B_cornB, 0);
    B_corn3 := B_corn3 + (B_cornA - B_cornB, 0);
else:
    B_corn1 := B_corn1 + (B_cornA - B_cornB, 0);
    B_corn4 := B_corn4 + (B_cornA - B_cornB, 0);
    fi

% Draw outline of the bounding box.
B_pen := currentpen;
pickup pencircle scaled 0.5bp;
B_pat := bbox pict;
% Warning: The following lines cannot come after centring the diagram.
% Drawing these boxes alters the bounding box!!!!
% draw B_pat dashed evenly withcolor blue;
% draw B_corn1--B_corn2--B_corn3--B_corn4--cycle dashed evenly withcolor green;
pickup B_pen;

% Centre the diagram.
if B_cornA <> B_cornB:
    setbounds pict to B_corn1--B_corn2--B_corn3--B_corn4--cycle;
    fi

endgroup
enddef; % End of function C_bbox_centre_set.
