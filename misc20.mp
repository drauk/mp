% tex/conc/mp/misc20.mp   2013-9-30   Alan U. Kennington.
% $Id: tex/conc/mp/misc20.mp 17b6656475 2013-09-30 04:00:24Z Alan U. Kennington $
% The non-applicability of truth tables to predicate logic.

beginfig(1);
pair    p[];
path    pat[];

aa := 5.0cm;
bb := 5.0cm;
dy := 12pt;
dya := dy/2;
dyb := dy/2;
dyc := 0.25bb-dy;
penLN := 0.5bp;

p0 := (0,0);
p1 := p0 + (aa,0);
p2 := p1 + (0,bb);
p3 := p0 + (0,bb);

p10 := 0.5[p0,p1];
p11 := 0.5[p1,p2];
p12 := 0.5[p2,p3];
p13 := 0.5[p3,p0];

p20 := 0.5[p13,p10];
p21 := 0.5[p10,p11];
p22 := 0.5[p11,p12];
p23 := 0.5[p12,p13];

p30 := p20 + (0,-dyc);
p31 := p21 + (0,-dyc);
p32 := p22 + (0,-dyc);
p33 := p23 + (0,-dyc);

pickup pencircle scaled penLN;
draw p10--p12;
draw p11--p13;
draw p0--p1--p2--p3--cycle;

label(btex\strut truth etex, p20+(0,dyb));
label(btex\strut tables etex, p20+(0,-dyb));
label(btex\strut (easy) etex, p30);

label(btex\strut propositional etex, p21+(0,dyb));
label(btex\strut calculus etex, p21+(0,-dyb));
label(btex\strut (difficult) etex, p31);

label(btex\strut predicate etex, p22+(0,dyb));
label(btex\strut calculus etex, p22+(0,-dyb));
label(btex\strut (difficult) etex, p32);

label(btex\strut ? etex, p23);
label(btex\strut (impossible) etex, p33);

% label.bot(btex\strut mechanical etex, 0.5[p0,p10]);
% label.bot(btex\strut computation etex, 0.5[p0,p10]+(0,-dy));

% label.bot(btex\strut logical etex, 0.5[p1,p10]);
% label.bot(btex\strut argumentation etex, 0.5[p1,p10]+(0,-dy));

label.top(btex\strut mechanical etex, 0.5[p3,p12]+(0,dy));
label.top(btex\strut computation etex, 0.5[p3,p12]+(0,0dy));

label.top(btex\strut logical etex, 0.5[p2,p12]+(0,dy));
label.top(btex\strut argumentation etex, 0.5[p2,p12]+(0,0dy));

%==============================================================================
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.lft(btex\strut simple etex, 0.5[p0,p13]+(0,dya));
label.lft(btex\strut propositions etex, 0.5[p0,p13]+(0,-dya));
% label.lft(btex\strut only etex, 0.5[p0,p13]+(0,-2dya));

label.lft(btex\strut objects etex, 0.5[p3,p13]+(0,3dya));
label.lft(btex\strut predicates etex, 0.5[p3,p13]+(0,dya));
label.lft(btex\strut relations etex, 0.5[p3,p13]+(0,-dya));
label.lft(btex\strut functions etex, 0.5[p3,p13]+(0,-3dya));

label.rt(btex\strut binary etex, 0.5[p1,p11]+(0,dya));
label.rt(btex\strut operators etex, 0.5[p1,p11]+(0,-dya));

label.rt(btex\strut infinite etex, 0.5[p2,p11]+(0,2dya));
label.rt(btex\strut quantification etex, 0.5[p2,p11]+(0,0dya));
label.rt(btex\strut operators etex, 0.5[p2,p11]+(0,-2dya));

setbounds currentpicture to pat1;

endfig;
end
