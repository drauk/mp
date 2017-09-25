% tex/conc/mp/log1.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log1.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Reduction of geometry and arithmetic to symbolic logic, then interpretation.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex
verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 4.5cm;
h1 := 2.2cm;
% sp := 4.5pt;    % For 7-point text.
sp := 6.4pt;    % For 10-point text.
h2 := h1 - sp;
spp := 8pt;

p1 := (0,0);
p2 := p1 + (0,-h2);
p3 := p2 + (0,-h1);
p4 := p3 + (w1,0);
p5 := p4 + (0,h1);
p6 := p5 + (0,h2);

% Draw the boxes.
B_draw(1, btex\tmatten{geometry\cr
 questions\cr}etex, p1);

B_draw(2, btex\tmatten{arithmetic\cr
 and analysis\cr
 questions\cr}etex, p2);

B_draw(3, btex\tmatten{symbolic\cr
 logic\cr
 assumptions\cr}etex, p3);

B_draw(4, btex\tmatten{symbolic\cr
 logic\cr
 assertions\cr}etex, p4);

B_draw(5, btex\tmatten{arithmetic\cr
 and analysis\cr
 answers\cr}etex, p5);

B_draw(6, btex\tmatten{geometry\cr
 answers\cr}etex, p6);

% Draw the arrows.
B_margset(3pt, 3pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(4,5,1);
B_arrow(5,6,1);

% Add some labels on the arrows.
B_box_point_m(p21)(1, 0, -1);       % Bottom of box 1.
B_box_point_m(p31)(2, 0, 1);        % Top of box 2.
p41 := 0.5[p21,p31];

B_box_point_m(p22)(2, 0, -1);       % Bottom of box 2.
B_box_point_m(p32)(3, 0, 1);        % Top of box 3.
p42 := 0.5[p22,p32];

B_box_point_m(p23)(3, 1, 0);
B_box_point_m(p33)(4, -1, 0);
p43 := 0.5[p23,p33];

B_box_point_m(p24)(4, 0, 1);        % Top of box 4.
B_box_point_m(p34)(5, 0, -1);       % Bottom of box 5.
p44 := 0.5[p24,p34];

B_box_point_m(p25)(5, 0, 1);
B_box_point_m(p35)(6, 0, -1);
p45 := 0.5[p25,p35];

label.lft(btex\strut reformulation etex, p41 + (-spp,0));
label.lft(btex\strut reformulation etex, p42 + (-spp,0));

label.top(btex\strut logical etex, p43);
label.bot(btex\strut arguments etex, p43);

label.rt(btex\strut interpretation etex, p44 + (spp,0));
label.rt(btex\strut interpretation etex, p45 + (spp,0));

endfig;
end
