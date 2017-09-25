% tex/conc/mp/misc21.mp   2014-11-9   Alan U. Kennington.
% $Id: tex/conc/mp/misc21.mp 8960a0735b 2014-11-09 07:39:23Z Alan U. Kennington $
% The non-applicability of truth tables to predicate logic.

beginfig(1);
pair    p[];
color colX;
path    pat[];

aa := 4.5cm;
bb := aa;
dy := 12pt;
dya := dy/2;
dyb := dy/2;
dyc := 0.25bb-dy;

penLN := 0.5bp;
colX := 0.5 white;

p0 := (0,0);
p1 := p0 + (aa,0);
p2 := p1 + (0,bb);
p3 := p0 + (0,bb);

p10 := 0.5[p0,p1];
p11 := 0.5[p1,p2];
p12 := 0.5[p2,p3];
p13 := 0.5[p3,p0];
p14 := 0.5[p0,p2];

p20 := 0.5[p13,p10];
p21 := 0.5[p10,p11];
p22 := 0.5[p11,p12];
p23 := 0.5[p12,p13];

p30 := p20 + (0,-dyc);
p31 := p21 + (0,-dyc);
p32 := p22 + (0,-dyc);
p33 := p23 + (0,-dyc);

pickup pencircle scaled penLN;
draw p0--p14 withcolor colX;
draw p10--p13 withcolor colX;
draw p10--p12;
draw p11--p13;
draw p0--p1--p2--p3--cycle;

label(btex\strut Dedekind etex, p21+(0,3dyb));
label(btex\strut infinite etex, p21+(0,dyb));
label(btex\strut sets etex, p21+(0,-dyb));
label(btex\strut ($\omega$-infinite) etex, p21+(0,-3dyb));

label(btex\strut mediate etex, p22+(0,dyb));
label(btex\strut cardinals etex, p22+(0,-dyb));

label(btex\strut finite etex, p23+(0,dyb));
label(btex\strut sets etex, p23+(0,-dyb));

label.top(btex\strut finite etex, 0.5[p3,p12]+(0,0dy));
label.top(btex\strut infinite etex, 0.5[p2,p12]+(0,0dy));

%==============================================================================
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.lft(btex\strut Dedekind etex, 0.5[p0,p13]+(0,dya));
label.lft(btex\strut infinite etex, 0.5[p0,p13]+(0,-dya));

label.lft(btex\strut Dedekind etex, 0.5[p3,p13]+(0,dya));
label.lft(btex\strut finite etex, 0.5[p3,p13]+(0,-dya));

setbounds currentpicture to pat1;

endfig;
end
