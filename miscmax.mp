% tex/conc/mp/miscmax.mp   2014-6-5   Alan U. Kennington.
% $Id: tex/conc/mp/miscmax.mp 8c7e41cefd 2014-06-05 05:35:04Z Alan U. Kennington $
% Miscellaneous MetaPost macros.
% These macros are not designed as a general purpose library.
% These macros are intended for use with Alan U. Kennington's diagrams.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% M_colour_set_hex

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set a colour from a hex string.
% E.g. str = "E2DCB0"
%%%%%%%%%%%%%%%%%%%%%%%%%
%   M_colour_set_hex    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def M_colour_set_hex(text col)(expr str) =
col := (
    hex(substring(0,2)of str)/255,
    hex(substring(2,4)of str)/255,
    hex(substring(4,6)of str)/255
    );
enddef; % End of function M_colour_set_hex.
