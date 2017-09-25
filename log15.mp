% tex/conc/mp/log15.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log15.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Decision-making for mammoth hunters.

input boxmax.mp

verbatimtex
\input dgmpmax
\font\eightrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 2.2cm;
h1 := 1.9cm;
spp := 7pt;

p1 := (0,0);
p2 := p1 + (-w1,h1);
p3 := p1 + (w1,h1);

% Draw the boxes.
B_draw(1, btex\tmatten{\strut Mammoth?\cr
 \eightrm\strut (Go or stay?)\cr}etex, p1);

B_draw(2, btex\tmatten{\strut Mammoth!\cr
 \eightrm\strut (Let's go!)\cr}etex, p2);

B_draw(3, btex\tmatten{\strut No mammoth!\cr
 \eightrm\strut (Let's stay!)\cr}etex, p3);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);

% Add some labels on the arrows.
B_box_point(p11)(1, 0, 1);      % Top of box 1.
B_box_point(p12)(2, 0, -1);     % Bottom of box 2.
B_box_point(p13)(3, 0, -1);     % Bottom of box 3.

label.lft(btex\strut true etex, 0.4[p11,p12]+(-spp,0));
label.rt(btex\strut false etex, 0.4[p11,p13]+(spp,0));

% Labels on the boxes.
B_box_point(p21)(1, 0, -1);     % Bottom of box 1.
B_box_point(p22)(2, -1, 0);     % Left of box 2.
B_box_point(p23)(3, 1, 0);      % Right of box 3.

label.lft(btex state $Z_1$ etex, p22+(-spp,0));
label.rt(btex state $Z_2$ etex, p23+(spp,0));
label.bot(btex\strut state $Z_0$ etex, p21);

endfig;
end
