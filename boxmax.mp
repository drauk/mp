% tex/conc/mp/boxmax.mp   2017-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/boxmax.mp 947ade518d 2017-01-17 12:03:00Z Alan U. Kennington $
% Box-diagram MetaPost macros.
% These macros are not designed as a general purpose library.
% These macros are intended for use with Alan U. Kennington's diagrams.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% B_drawmask
% B_path_rect_oct
% B_path_rect_round
% B_draw_rect_oct
% B_draw_rect_round
% B_draw_rect_round_centre
% B_box_point
% B_box_point_m
% B_draw_path
% B_get_path
% B_redraw_path
% B_draw_pic
% B_draw_pic_null
% B_draw
% B_draw_box
% B_draw_box_bar
% B_draw_box_null
% B_draw_no_box
% B_expt
% B_margset
% B_rays
% B_arrowmargcol
% B_arrowmarg
% B_arrowmargg
% B_arrowcol
% B_arrowcolDoffset
% B_arrowcolD
% B_arrow
% B_arrowDoffset
% B_arrowD

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

% Attributes of objects. It looks like "def" macros do actually limit scope!
picture B_pic[];                    % The shifted text-picture.
numeric B_x[], B_y[], B_w[], B_h[]; % Centre coords and half width/height.
pair B_ll[], B_lr[], B_ul[], B_ur[]; % The corners.
pair B_c[];                         % Centre of picture.
path B_bx[];                        % Bounding box path.
numeric B_da, B_db;                 % Saved margins.
B_da := bboxmargin;
B_db := bboxmargin;

% Dimensions for double arrows.
B_sepD := 1pt;                      % Half-separation between lines of arrow.
B_angD := 45;                       % Half-angle of arrowhead.
B_lenD := 4.0pt;                    % Length of arrowhead sides.

% Trace parameters.
B_trace_box_numbers := 0;

%-----------------------------------------------------------
% Choose drawing primitive according to mask.
% This is idential to S_drawmask.
% mask = 0      no arrowheads
% mask = 1      arrowhead at end of arrow
% mask = 2      arrowhead at start of arrow
% mask = 3      arrowhead at both ends of arrow
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_drawmask       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_drawmask(expr mask) =
if mask = 0:
    draw
elseif mask = 1:
    drawarrow
elseif mask = 2:
    drawarrow reverse
elseif mask = 3:
    drawdblarrow
    fi
enddef; % End of function B_drawmask.

%-----------------------------------------------------------
% Construct the path of a rectangle with octagonal corners.
% B_pat_rect    output: path variable
% x             top left corner
% y             top left corner
% w             width
% h             height
% r             radius for rounding the corners
%%%%%%%%%%%%%%%%%%%%%%%%%
%    B_path_rect_oct    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_path_rect_oct(text B_pat_rect)(expr x, y, w, h, r) =
begingroup
pair B_pt[], B_zz[];

% The corners.
B_pt[0] := (x, y);
B_pt[1] := (x + w, y);
B_pt[2] := (x + w, y - h);
B_pt[3] := (x, y - h);

B_zz[0] := B_pt[0] + (r,0);
B_zz[1] := B_pt[1] + (-r,0);
B_zz[2] := B_pt[1] + (0,-r);
B_zz[3] := B_pt[2] + (0,r);
B_zz[4] := B_pt[2] + (-r,0);
B_zz[5] := B_pt[3] + (r,0);
B_zz[6] := B_pt[3] + (0,r);
B_zz[7] := B_pt[0] + (0,-r);

B_pat_rect :=
for i=0 upto 7:
    B_zz[i]--
    endfor
    cycle;

endgroup
enddef; % End of function B_path_rect_oct.

%-----------------------------------------------------------
% Construct the path of a rectangle with rounded corners.
% B_pat_rect    output: path variable
% x             top left corner
% y             top left corner
% w             width
% h             height
% r             radius for rounding the corners
%%%%%%%%%%%%%%%%%%%%%%%%%
%   B_path_rect_round   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_path_rect_round(text B_pat_rect)(expr x, y, w, h, r) =
begingroup
pair B_pt[], B_zz[];
path B_pat[];

% The corners.
B_pt[0] := (x, y);
B_pt[1] := (x + w, y);
B_pt[2] := (x + w, y - h);
B_pt[3] := (x, y - h);

B_zz[0] := B_pt[0] + (r,0);
B_zz[1] := B_pt[1] + (-r,0);
B_zz[2] := B_pt[1] + (-r,-r) + (0,r) rotated -45;

B_zz[3] := B_pt[1] + (0,-r);
B_zz[4] := B_pt[2] + (0,r);
B_zz[5] := B_pt[2] + (-r,r) + (r,0) rotated -45;

B_zz[6] := B_pt[2] + (-r,0);
B_zz[7] := B_pt[3] + (r,0);
B_zz[8] := B_pt[3] + (r,r) + (0,-r) rotated -45;

B_zz[9] := B_pt[3] + (0,r);
B_zz[10] := B_pt[0] + (0,-r);
B_zz[11] := B_pt[0] + (r,-r) + (-r,0) rotated -45;

B_pat_rect :=
for i=0 upto 11:
    if (i mod 3) = 0:
        B_zz[i] --
    elseif (i mod 3) = 1:
        B_zz[i] ..
    elseif (i mod 3) = 2:
        B_zz[i] ..
        fi
    endfor
    cycle;

endgroup
enddef; % End of function B_path_rect_round.

%-----------------------------------------------------------
% Draw a rectangle with octagonal corners.
% x             top left corner
% y             top left corner
% w             width
% h             height
% r             radius for rounding the corners
% th            thickness of the line
% col           colour
%%%%%%%%%%%%%%%%%%%%%%%%%
%    B_draw_rect_oct    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_rect_oct(expr x, y, w, h, r, th, col) =
begingroup
path B_path_rectangle;

B_path_rect_oct(B_path_rectangle)(x, y, w, h, r);
pickup pencircle scaled th;
draw B_path_rectangle withcolor col;

endgroup
enddef; % End of function B_draw_rect_oct.

%-----------------------------------------------------------
% Draw a rectangle with rounded corners.
% x             top left corner
% y             top left corner
% w             width
% h             height
% r             radius for rounding the corners
% th            thickness of the line
% col           colour
%%%%%%%%%%%%%%%%%%%%%%%%%
%   B_draw_rect_round   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_rect_round(expr x, y, w, h, r, th, col) =
begingroup
path B_path_rectangle;

B_path_rect_round(B_path_rectangle)(x, y, w, h, r);
pickup pencircle scaled th;
draw B_path_rectangle withcolor col;

endgroup
enddef; % End of function B_draw_rect_round.

%-----------------------------------------------------------
% Draw a rectangle with rounded corners. Centred.
% p             centre point
% w             full width
% h             full height
% r             radius for rounding the corners
% th            thickness of the line
% col           colour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  B_draw_rect_round_centre %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_rect_round_centre(expr p, w, h, r, th, col) =
B_draw_rect_round(xpart(p)-w/2, ypart(p)+h/2, w, h, r, th, col);
enddef; % End of function B_draw_rect_round_centre.

%-----------------------------------------------------------
% Calculate particular points on an already existing rectangle.
% This version does not add the arrow margins.
% pt            the point to be assigned (must be a pair)
% idx           index of the object
% ix            index of X coordinate to calculate
% iy            index of Y coordinate to calculate
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_box_point      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_box_point(text pt)(expr idx, ix, iy) =
begingroup
pt := B_c[idx] + ix*(B_w[idx],0) + iy*(0,B_h[idx]);
endgroup
enddef; % End of function B_box_point.

%-----------------------------------------------------------
% Calculate particular points on an already existing rectangle.
% This version adds the arrow margins.
% pt            the point to be assigned (must be a pair)
% idx           index of the object
% ix            index of X coordinate to calculate
% iy            index of Y coordinate to calculate
%%%%%%%%%%%%%%%%%%%%%%%%%
%     B_box_point_m     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_box_point_m(text pt)(expr idx, ix, iy) =
begingroup
pt := B_c[idx] + ix*(B_w[idx]+B_da,0) + iy*(0,B_h[idx]+B_db);
endgroup
enddef; % End of function B_box_point_m.

%-----------------------------------------------------------
% Draw the indicated rectangle, and put it in the global box list.
% idx           index of the object
% ww            half-width of rectangle
% hh            half-height of rectangle
% cent          centre of rectangle
% drawbox       boolean: true if rectangle should be drawn.
% savecontour   boolean: true if rectangle contour should be saved.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_draw_path      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_path(expr idx, ww, hh, cent, drawbox, savecontour) =
begingroup
path B_pat;

% Save the corners of the picture.
B_ll[idx] := cent + (-ww,-hh);
B_lr[idx] := cent + (ww,-hh);
B_ul[idx] := cent + (-ww,hh);
B_ur[idx] := cent + (ww,hh);
B_c[idx] := cent;

% Save the box (xmid,ymid,w/2,h/2) dimensions.
B_x[idx]  := xpart cent;
B_y[idx]  := ypart cent;
B_w[idx]  := ww;
B_h[idx]  := hh;

% This has bboxmargin padding! I.e. not the same as (x,y,w,h).
% B_bx[idx] := (x,y)--(x,y-h)--(x+w,y-h)--(x+w,y)--cycle;
% B_bx[idx] := (cent+(ww,hh))--(cent+(ww,-hh))
%            --(cent+(-ww,-hh))--(cent+(-ww,hh))--cycle;

% Save the contour of the path.
if savecontour:
    B_pat := B_ul[idx]--B_ur[idx]--B_lr[idx]--B_ll[idx]--cycle;
    B_pic[idx] = nullpicture;
    addto B_pic[idx] contour B_pat;
    fi
B_bx[idx] := bbox B_pic[idx];

% Draw the box.
if drawbox:
    draw B_bx[idx];
    if B_trace_box_numbers > 0:
        label.lft(decimal idx, B_ul[idx]);
        fi
    fi
endgroup
enddef; % End of function B_draw_path.

%-----------------------------------------------------------
% Draw the indicated rectangle, and put it in the global box list.
% idx           index of the object
% xywh          return value: a numeric array declared "numeric xywh[]"
% Note that xy are centre coordinates and wh are half-width/height.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       B_get_path      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_get_path(expr idx)(text xywh) =
begingroup

% Save the corners of the picture.
xywh[0] := B_x[idx];
xywh[1] := B_y[idx];
xywh[2] := B_w[idx];
xywh[3] := B_h[idx];

endgroup
enddef; % End of function B_get_path.

%-----------------------------------------------------------
% Draw a box which is already registered, whether it was drawn before or not.
% idx       index of the object
%%%%%%%%%%%%%%%%%%%%%%%%%
%     B_redraw_path     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_redraw_path(expr idx) =
begingroup
draw B_bx[idx];
endgroup
enddef; % End of function B_redraw_path.

%-----------------------------------------------------------
% Draw a box containing the indicated picture object.
% idx       index of the object
% pik       a picture variable, such as btex ... etex
% xy        x-y coords of centre
% drawpik   boolean: true if picture should be drawn.
% drawbox   boolean: true if bounding box should be drawn.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_draw_pic       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_pic(expr idx, pik, xy, drawpik, drawbox) =
begingroup
picture B_pc;
pair cent;

B_pc := pik shifted xy;         % Shift the picture.
B_pic[idx] := B_pc;             % Save the shifted picture.

cent := center B_pc;            % Centre of the picture.
ww := xpart((urcorner B_pc) - cent);
hh := ypart((urcorner B_pc) - cent);
B_draw_path(idx, ww, hh, cent, drawbox, false);

% Draw the thing.
if drawpik:
    draw B_pc;
    fi
endgroup
enddef; % End of function B_draw_pic.

%-----------------------------------------------------------
% Create a box containing the indicated picture object. Don't draw.
% idx       index of the object
% pik       a picture variable, such as btex ... etex
% xy        x-y coords of centre
%%%%%%%%%%%%%%%%%%%%%%%%%
%    B_draw_pic_null    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_pic_null(expr idx, pik, xy) =
begingroup
B_draw_pic(expr idx, pik, xy, false, false);
endgroup
enddef; % End of function B_draw_pic_null.

%-----------------------------------------------------------
% Draw a box containing the indicated text.
% idx       index of the object
% txt       a picture variable, such as btex ... etex
% xy        x-y coords of centre of picture.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        B_draw         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw(expr idx, txt, xy) =
begingroup
picture B_pc;

B_pc := thelabel(txt, xy);       % Shift the picture to the specified location.

B_draw_pic(idx, B_pc, (0,0), true, true); % Draw the picture and box.
endgroup
enddef; % End of function B_draw.

%-----------------------------------------------------------
% Draw a box containing the indicated picture, but _not_ the picture inside it.
% idx       index of the object
% w         width of box
% h         height of box
% xy        x-y coords of centre of picture.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_draw_box       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_box(expr idx, w, h, xy) =
begingroup
B_draw_path(idx, w/2, h/2, xy, true, true); % Draw the box.
endgroup
enddef; % End of function B_draw_box.

%-----------------------------------------------------------
% Draw a box containing the indicated picture, but _not_ the picture inside it.
% This box has a "title bar".
% idx       index of the object
% w         width of box
% h         height of box
% xy        x-y coords of centre of picture.
% dd        depth of title bar
% txt       text to draw in the title bar
%%%%%%%%%%%%%%%%%%%%%%%%%
%    B_draw_box_bar     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_box_bar(expr idx, w, h, xy, dd, col, txt) =
begingroup
pair B_t_ul, B_t_ur, B_t_ll, B_t_lr, B_t_cent;

% Create the box. Don't draw it yet.
B_draw_path(idx, w/2, h/2, xy, false, true);

% Get the points of the title bar rectangle.
B_t_ul := B_ul[idx] + (-bboxmargin, bboxmargin);
B_t_ur := B_ur[idx] + (bboxmargin, bboxmargin);
B_t_ll := B_t_ul + (0, -dd);
B_t_lr := B_t_ur + (0, -dd);
B_t_cent := 0.5[B_t_ul,B_t_ur] + (0, -dd/2);

% Paint the colour background for the title bar.
fill B_t_ul--B_t_ur--B_t_lr--B_t_ll--cycle withcolor col;

% Draw a simple line to represent the title bar.
draw B_t_ll--B_t_lr;
label(txt, B_t_cent);

% Draw the box outline.
B_redraw_path(idx);
endgroup
enddef; % End of function B_draw_box_bar.

%-----------------------------------------------------------
% Draw a box containing the indicated picture, but _not_ the picture inside it.
% idx       index of the object
% w         width of box
% h         height of box
% xy        x-y coords of centre of picture.
%%%%%%%%%%%%%%%%%%%%%%%%%
%    B_draw_box_null    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_box_null(expr idx, w, h, xy) =
begingroup
B_draw_path(idx, w/2, h/2, xy, false, true); % Don't draw the box.
endgroup
enddef; % End of function B_draw_box_null.

%-----------------------------------------------------------
% Draw the indicated text and create the box, but do not draw the box.
% idx       index of the object
% txt       a picture variable, such as btex ... etex
% xy        x-y coords of centre of picture.
%%%%%%%%%%%%%%%%%%%%%%%%%
%     B_draw_no_box     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_draw_no_box(expr idx, txt, xy) =
begingroup
picture B_pc;

B_pc := thelabel(txt, xy);       % Shift the picture to the specified location.

B_draw_pic(idx, B_pc, (0,0), true, false); % Draw the picture, but not the box.
endgroup
enddef; % End of function B_draw_no_box.

%-----------------------------------------------------------
% Draw an oblique line. Just an experiment.
% idx       index of the object
%%%%%%%%%%%%%%%%%%%%%%%%%
%        B_expt         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_expt(expr idx) =
begingroup
draw B_ul[idx]--B_lr[idx];
endgroup
enddef; % End of function B_expt.

%-----------------------------------------------------------
% Save given margins for arrows as global variables.
% da        margin for first box
% db        margin for second box
%%%%%%%%%%%%%%%%%%%%%%%%%
%       B_margset       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_margset(expr da, db) =
B_da := da + bboxmargin;
B_db := db + bboxmargin;
enddef; % End of function B_margset.

%-----------------------------------------------------------
% Draw some arrows. Another useless experiment.
% idx       index of first object
% idxx      index of second object
%%%%%%%%%%%%%%%%%%%%%%%%%
%        B_rays         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_rays(expr idx, idxx) =
begingroup
drawarrow B_ll[idx]--B_ll[idxx];
drawarrow B_lr[idx]--B_lr[idxx];
drawarrow B_ul[idx]--B_ul[idxx];
drawarrow B_ur[idx]--B_ur[idxx];
endgroup
enddef; % End of function B_rays.

%-----------------------------------------------------------
% Draw some arrows.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% da        offset of arrow from first rectangle
% db        offset of arrow from second rectangle
% col       colour
% dsh       dash pattern, 0 for solid line
% typ       type of arrow: 1 = single, 2 = double.
% offset    ad-hoc displacement for the arrow
%%%%%%%%%%%%%%%%%%%%%%%%%
%    B_arrowmargcol     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowmargcol(expr idx, idxx, msk, da, db, col, dsh, typ, offset) =
begingroup
numeric B_dx, B_dy, B_hw, B_wh;
pair B_pa, B_pb;                % Endpoints of the arrow.
numeric B_wda, B_hdb;
pair B_vecD, B_vecDl, B_vecDr;  % Vectors for double arrow.
pair B_tmpA, B_tmpB, B_tmpC, B_tmpD;

% First find out which sides of the rectangle the line goes through.
B_dx := B_x[idxx] - B_x[idx];
B_dy := B_y[idxx] - B_y[idx];
B_wda := B_w[idx] + da;
B_hdb := B_h[idx] + db;
% B_hw := B_h[idx]/B_w[idx];      % Hopefully well-defined.
B_hw := B_hdb/B_wda;        % Hopefully well-defined.

if B_dx >= 0:
    % It's right of the Y-axis.
    if B_dy >= B_hw * B_dx:
        % It goes through the top.
        B_pa := (B_x[idx] + (B_h[idx] + da)*(B_dx/B_dy),
                 B_y[idx] + B_h[idx] + da);
    elseif B_dy <= -B_hw * B_dx:
        % It goes through the bottom.
        B_pa := (B_x[idx] + (B_h[idx] + da)*(B_dx/(-B_dy)),
                 B_y[idx] - B_h[idx] - da);
    else:
        % It goes through the right.
        B_pa := (B_x[idx] + B_w[idx] + da,
                 B_y[idx] + (B_w[idx] + da)*(B_dy/B_dx));
        fi
else:
    % It's left of the Y-axis.
    if B_dy >= B_hw * (-B_dx):
        % It goes through the top.
        B_pa := (B_x[idx] - (B_h[idx] + da)*((-B_dx)/B_dy),
                 B_y[idx] + B_h[idx] + da);
    elseif B_dy <= B_hw * B_dx:
        % It goes through the bottom.
        B_pa := (B_x[idx] - (B_h[idx] + da)*((-B_dx)/(-B_dy)),
                 B_y[idx] - B_h[idx] - da);
    else:
        % It goes through the left.
        B_pa := (B_x[idx] - B_w[idx] - da,
                 B_y[idx] + (B_w[idx] + da)*(B_dy/(-B_dx)));
        fi
    fi

% The second rectangle.
B_dx := -B_dx;
B_dy := -B_dy;
% B_hw := B_h[idxx]/B_w[idxx];    % Hopefully well-defined.
B_hw := (B_h[idxx]+db)/(B_w[idxx]+da);    % Hopefully well-defined.

if B_dx >= 0:
    % It's right of the Y-axis.
    if B_dy >= B_hw * B_dx:
        % It goes through the top.
        B_pb := (B_x[idxx] + (B_h[idxx] + da)*(B_dx/B_dy),
                 B_y[idxx] + B_h[idxx] + da);
    elseif B_dy <= -B_hw * B_dx:
        % It goes through the bottom.
        B_pb := (B_x[idxx] + (B_h[idxx] + da)*(B_dx/(-B_dy)),
                 B_y[idxx] - B_h[idxx] - da);
    else:
        % It goes through the right.
        B_pb := (B_x[idxx] + B_w[idxx] + da,
                 B_y[idxx] + (B_w[idxx] + da)*(B_dy/B_dx));
        fi
else:
    % It's left of the Y-axis.
    if B_dy >= B_hw * (-B_dx):
        % It goes through the top.
        B_pb := (B_x[idxx] - (B_h[idxx] + da)*((-B_dx)/B_dy),
                 B_y[idxx] + B_h[idxx] + da);
    elseif B_dy <= B_hw * B_dx:
        % It goes through the bottom.
        B_pb := (B_x[idxx] - (B_h[idxx] + da)*((-B_dx)/(-B_dy)),
                 B_y[idxx] - B_h[idxx] - da);
    else:
        % It goes through the left.
        B_pb := (B_x[idxx] - B_w[idxx] - da,
                 B_y[idxx] + (B_w[idxx] + da)*(B_dy/(-B_dx)));
        fi
    fi

% Normal single-lined arrow.
if typ = 1:
    if picture dsh:
        B_drawmask(msk) (B_pa--B_pb) shifted offset withcolor col dashed dsh;
    else:
        B_drawmask(msk) (B_pa--B_pb) shifted offset withcolor col;
        fi
    fi

% Double-lined arrow.
if typ = 2:
    % Determine the separation vector between the lines.
    B_vecD := (unitvector(B_pa - B_pb) rotated 90) scaled B_sepD;
    B_vecDl := (unitvector(B_pa - B_pb) rotated B_angD) scaled B_lenD;
    B_vecDr := (unitvector(B_pa - B_pb) rotated (-B_angD)) scaled B_lenD;

    if (msk = 1) or (msk = 3):
        B_tmpA := ((B_pa--B_pb) shifted B_vecD)
                  intersectionpoint (B_pb--(B_pb+B_vecDl));
        B_tmpB := ((B_pa--B_pb) shifted (-B_vecD))
                  intersectionpoint (B_pb--(B_pb+B_vecDr));
        draw ((B_pb+B_vecDl)--B_pb--(B_pb+B_vecDr))
            shifted offset withcolor col;
    else:
        B_tmpA := B_pb + B_vecD;
        B_tmpB := B_pb - B_vecD;
        fi

    if (msk = 2) or (msk = 3):
        B_tmpC := ((B_pa--B_pb) shifted B_vecD)
                  intersectionpoint (B_pa--(B_pa-B_vecDr));
        B_tmpD := ((B_pa--B_pb) shifted (-B_vecD))
                  intersectionpoint (B_pa--(B_pa-B_vecDl));
        draw ((B_pa-B_vecDr)--B_pa--(B_pa-B_vecDl))
            shifted offset withcolor col;
    else:
        B_tmpC := B_pa + B_vecD;
        B_tmpD := B_pa - B_vecD;
        fi

    % Draw a pair of lines.
    if picture dsh:
        draw (B_tmpC--B_tmpA) shifted offset withcolor col dashed dsh;
        draw (B_tmpD--B_tmpB) shifted offset withcolor col dashed dsh;
    else:
        draw (B_tmpC--B_tmpA) shifted offset withcolor col;
        draw (B_tmpD--B_tmpB) shifted offset withcolor col;
        fi
    fi
endgroup
enddef; % End of function B_arrowmargcol.

%-----------------------------------------------------------
% Draw some arrows. (Never used?)
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% da        offset of arrow from first rectangle
% db        offset of arrow from second rectangle
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_arrowmarg      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowmarg(expr idx, idxx, msk, da, db) =
begingroup
B_arrowmargcol(idx, idxx, msk, da, db, black);
endgroup
enddef; % End of function B_arrowmarg.

%-----------------------------------------------------------
% Draw some arrows. Old version.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% da        offset of arrow from first rectangle
% db        offset of arrow from second rectangle
%%%%%%%%%%%%%%%%%%%%%%%%%
%     B_arrowmargg      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowmargg(expr idx, idxx, msk, da, db) =
begingroup
numeric B_dx, B_dy, B_hw, B_wh;
pair B_pa, B_pb;                % Endpoints of the arrow.

% First find out which sides of the rectangle the line goes through.
B_dx := B_x[idxx] - B_x[idx];
B_dy := B_y[idxx] - B_y[idx];
B_hw := B_h[idx]/B_w[idx];      % Hopefully well-defined.

if B_dx >= 0:
    % It's right of the Y-axis.
    if B_dy >= B_hw * B_dx:
        % It goes through the top.
        B_pa := (B_x[idx] + (B_h[idx] + da)*(B_dx/B_dy),
                 B_y[idx] + B_h[idx] + da);
    elseif B_dy <= -B_hw * B_dx:
        % It goes through the bottom.
        B_pa := (B_x[idx] + (B_h[idx] + da)*(B_dx/(-B_dy)),
                 B_y[idx] - B_h[idx] - da);
    else:
        % It goes through the right.
        B_pa := (B_x[idx] + B_w[idx] + da,
                 B_y[idx] + (B_w[idx] + da)*(B_dy/B_dx));
        fi
else:
    % It's left of the Y-axis.
    if B_dy >= B_hw * (-B_dx):
        % It goes through the top.
        B_pa := (B_x[idx] - (B_h[idx] + da)*((-B_dx)/B_dy),
                 B_y[idx] + B_h[idx] + da);
    elseif B_dy <= B_hw * B_dx:
        % It goes through the bottom.
        B_pa := (B_x[idx] - (B_h[idx] + da)*((-B_dx)/(-B_dy)),
                 B_y[idx] - B_h[idx] - da);
    else:
        % It goes through the left.
        B_pa := (B_x[idx] - B_w[idx] - da,
                 B_y[idx] + (B_w[idx] + da)*(B_dy/(-B_dx)));
        fi
    fi

% The second rectangle.
B_dx := -B_dx;
B_dy := -B_dy;
B_hw := B_h[idxx]/B_w[idxx];    % Hopefully well-defined.

if B_dx >= 0:
    % It's right of the Y-axis.
    if B_dy >= B_hw * B_dx:
        % It goes through the top.
        B_pb := (B_x[idxx] + (B_h[idxx] + da)*(B_dx/B_dy),
                 B_y[idxx] + B_h[idxx] + da);
    elseif B_dy <= -B_hw * B_dx:
        % It goes through the bottom.
        B_pb := (B_x[idxx] + (B_h[idxx] + da)*(B_dx/(-B_dy)),
                 B_y[idxx] - B_h[idxx] - da);
    else:
        % It goes through the right.
        B_pb := (B_x[idxx] + B_w[idxx] + da,
                 B_y[idxx] + (B_w[idxx] + da)*(B_dy/B_dx));
        fi
else:
    % It's left of the Y-axis.
    if B_dy >= B_hw * (-B_dx):
        % It goes through the top.
        B_pb := (B_x[idxx] - (B_h[idxx] + da)*((-B_dx)/B_dy),
                 B_y[idxx] + B_h[idxx] + da);
    elseif B_dy <= B_hw * B_dx:
        % It goes through the bottom.
        B_pb := (B_x[idxx] - (B_h[idxx] + da)*((-B_dx)/(-B_dy)),
                 B_y[idxx] - B_h[idxx] - da);
    else:
        % It goes through the left.
        B_pb := (B_x[idxx] - B_w[idxx] - da,
                 B_y[idxx] + (B_w[idxx] + da)*(B_dy/(-B_dx)));
        fi
    fi

B_drawmask(msk) (B_pa--B_pb);
endgroup
enddef; % End of function B_arrowmargg.

%-----------------------------------------------------------
% Draw some arrows.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% col       colour
% dsh       dash pattern, 0 for solid arrow.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_arrowcol       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowcol(expr idx, idxx, msk, col, dsh) =
begingroup
B_arrowmargcol(idx, idxx, msk, B_da, B_db, col, dsh, 1, (0,0));
endgroup
enddef; % End of function B_arrowcol.

%-----------------------------------------------------------
% Draw some arrows. Use double arrows. With ad-hoc offset.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% col       colour
% dsh       dash pattern, 0 for solid arrow.
% offset    ad-hoc displacement of arrow
%%%%%%%%%%%%%%%%%%%%%%%%%
%   B_arrowcolDoffset   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowcolDoffset(expr idx, idxx, msk, col, dsh, offset) =
begingroup
B_arrowmargcol(idx, idxx, msk, B_da, B_db, col, dsh, 2, offset);
endgroup
enddef; % End of function B_arrowcolDoffset.

%-----------------------------------------------------------
% Draw some arrows. Use double arrows.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% col       colour
% dsh       dash pattern, 0 for solid arrow.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      B_arrowcolD      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowcolD(expr idx, idxx, msk, col, dsh) =
begingroup
B_arrowmargcol(idx, idxx, msk, B_da, B_db, col, dsh, 2, (0,0));
endgroup
enddef; % End of function B_arrowcolD.

%-----------------------------------------------------------
% Draw some arrows.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
%%%%%%%%%%%%%%%%%%%%%%%%%
%        B_arrow        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrow(expr idx, idxx, msk) =
begingroup
B_arrowcol(idx, idxx, msk, black, 0);
endgroup
enddef; % End of function B_arrow.

%-----------------------------------------------------------
% Draw some arrows. Use double lines for the arrows.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
% offset    ad-hoc displacement of arrow
%%%%%%%%%%%%%%%%%%%%%%%%%
%     B_arrowDoffset    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowDoffset(expr idx, idxx, msk, offset) =
begingroup
B_arrowcolDoffset(idx, idxx, msk, black, 0, offset);
endgroup
enddef; % End of function B_arrowDoffset.

%-----------------------------------------------------------
% Draw some arrows. Use double lines for the arrows.
% idx       index of first object
% idxx      index of second object
% msk       arrow mask for S_drawarrow macro
%%%%%%%%%%%%%%%%%%%%%%%%%
%        B_arrowD       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def B_arrowD(expr idx, idxx, msk) =
begingroup
B_arrowcolD(idx, idxx, msk, black, 0);
endgroup
enddef; % End of function B_arrowD.
