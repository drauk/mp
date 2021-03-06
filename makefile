# tex/conc/mp/makefile.pub   2018-2-2   Alan U. Kennington.
# $Id: tex/conc/mp/makefile.pub 631e2d0fd4 2017-09-23 03:47:28Z Alan U. Kennington $
# Makefile for:  http://www.topology.org/tex/conc/mp/
#          and:  http://www.geometry.org/tex/conc/mp/

#-----------------------------------------------------------------------
# If the metapost executable is not called "mpost" on your system, change the
# following line to the path for your metapost executable.
MPOST       = mpost

# Some useful TeX macro files.
AKMATHTEX   = akmath.tex
DGMPTEX     = dgmpmax.tex
DGSPELL     = dgspell.tex

# The files which _all_ of the mp source files depend on.
# Any other dependencies are specified file by file.
TEXMAXFILES = $(AKMATHTEX)

#------------------------------------------------------------------------------
# NOTE:  Dependencies on MP and TeX macro files must be added below.
#------------------------------------------------------------------------------
# All MP source files which are required for mpdemo.tex.
MPFILES     = \
	arrow1.mp arrow2.mp arrow3.mp arrow4.mp \
	    arrow5.mp arrow6.mp arrow7.mp arrow8.mp arrow9.mp \
	    arrow10.mp arrow11.mp arrow12.mp arrow13.mp arrow14.mp \
	    arrow15.mp arrow16.mp arrow17.mp arrow18.mp arrow19.mp \
	    arrow20.mp arrow21.mp arrow22.mp arrow23.mp arrow24.mp \
	    arrow25.mp arrow26.mp arrow27.mp arrow28.mp arrow29.mp \
	    arrow30.mp arrow31.mp arrow32.mp arrow33.mp arrow34.mp \
	    arrow35.mp arrow36.mp arrow37.mp arrow38.mp arrow39.mp \
	    arrow40.mp arrow41.mp arrow42.mp \
	    arrow52.mp arrow53.mp arrow54.mp \
	    arrow55.mp \
	axiom1.mp axiom2.mp axiom3.mp axiom4.mp axiom5.mp \
	    axiom6.mp axiom7.mp axiom8.mp axiom9.mp \
	    axiom10.mp axiom11.mp \
	box1.mp box2.mp box3.mp box4.mp box5.mp \
	    box6.mp \
	calc1.mp calc2.mp \
	chart1.mp chart2.mp chart3.mp chart4.mp \
	    chart5.mp chart6.mp chart7.mp chart8.mp chart9.mp \
	    chart10.mp chart11.mp chart12.mp chart13.mp chart14.mp \
	    chart15.mp chart16.mp chart17.mp chart18.mp \
	class1.mp class2.mp class3.mp class4.mp \
	    class5.mp class6.mp class7.mp class8.mp class9.mp \
	connmap1.mp connmap2.mp connmap3.mp connmap4.mp \
	    connmap5.mp connmap6.mp connmap7.mp connmap8.mp connmap9.mp \
	    connmap10.mp connmap11.mp connmap12.mp connmap13.mp connmap14.mp \
	    connmap15.mp connmap16.mp \
	fibdiag1.mp fibdiag2.mp fibdiag3.mp fibdiag4.mp \
	    fibdiag5.mp fibdiag6.mp fibdiag7.mp fibdiag8.mp fibdiag9.mp \
	    fibdiag10.mp fibdiag11.mp \
	fibmap1.mp fibmap2.mp fibmap3.mp \
	    fibmap7.mp fibmap8.mp fibmap9.mp \
	    fibmap10.mp fibmap11.mp fibmap12.mp fibmap13.mp fibmap14.mp \
	    fibmap15.mp fibmap16.mp fibmap17.mp fibmap18.mp fibmap19.mp \
	    fibmap20.mp fibmap21.mp fibmap22.mp fibmap24.mp \
	    fibmap25.mp fibmap26.mp fibmap27.mp fibmap28.mp fibmap29.mp \
	    fibmap30.mp fibmap31.mp fibmap32.mp fibmap33.mp fibmap34.mp \
	    fibmap35.mp fibmap36.mp fibmap37.mp fibmap38.mp fibmap39.mp \
	    fibmap40.mp fibmap41.mp fibmap42.mp fibmap43.mp fibmap44.mp \
	    fibmap45.mp fibmap46.mp fibmap47.mp fibmap48.mp fibmap49.mp \
	    fibmap50.mp fibmap51.mp \
	fibre1.mp fibre2.mp fibre3.mp fibre4.mp \
	    fibre5.mp fibre6.mp fibre7.mp fibre8.mp fibre9.mp \
	    fibre10.mp fibre11.mp fibre12.mp fibre13.mp fibre14.mp \
	    fibre15.mp fibre16.mp fibre17.mp fibre18.mp fibre19.mp \
	    fibre20.mp fibre21.mp fibre22.mp fibre23.mp fibre24.mp \
	    fibre25.mp fibre26.mp fibre27.mp fibre28.mp fibre29.mp \
	    fibre30.mp \
	field1.mp field2.mp field3.mp field4.mp \
	    field5.mp field6.mp \
	flag1.mp flag2.mp \
	fn1.mp fn2.mp fn3.mp fn4.mp \
	    fn6.mp \
	    fn15.mp fn16.mp fn17.mp fn18.mp fn19.mp \
	    fn20.mp \
	    fn28.mp \
	    fn31.mp fn32.mp \
	    fn35.mp fn36.mp fn37.mp fn38.mp fn39.mp \
	    fn44.mp \
	    fn45.mp fn46.mp fn47.mp fn48.mp fn49.mp \
	    fn50.mp fn54.mp \
	    fn55.mp fn56.mp fn59.mp \
	    fn60.mp fn61.mp \
	    fn68.mp fn69.mp \
	    fn70.mp fn71.mp fn72.mp fn73.mp fn74.mp \
	    fn75.mp fn76.mp fn77.mp fn78.mp fn79.mp \
	    fn80.mp fn81.mp fn82.mp fn84.mp \
	    fn85.mp fn86.mp fn87.mp \
	    fn90.mp fn91.mp fn94.mp \
	    fn96.mp fn97.mp fn98.mp fn99.mp \
	    fn100.mp fn101.mp fn102.mp fn103.mp fn104.mp \
	fnmap1.mp fnmap2.mp fnmap3.mp fnmap4.mp \
	    fnmap5.mp fnmap6.mp \
	fn2d1.mp fn2d2.mp fn2d3.mp fn2d4.mp \
	    fn2d5.mp fn2d6.mp fn2d7.mp fn2d8.mp fn2d9.mp \
	    fn2d10.mp fn2d11.mp fn2d12.mp fn2d13.mp fn2d14.mp \
	    fn2d15.mp fn2d16.mp fn2d17.mp fn2d18.mp fn2d19.mp \
	    fn2d20.mp fn2d21.mp fn2d22.mp fn2d23.mp fn2d24.mp \
	    fn2d25.mp fn2d26.mp \
	grid1.mp grid2.mp grid3.mp grid4.mp \
	    grid5.mp grid6.mp grid7.mp grid8.mp grid9.mp \
	int1.mp int2.mp int3.mp int4.mp \
	    int5.mp int6.mp int7.mp int9.mp \
	    int10.mp int11.mp int12.mp int13.mp int14.mp \
	    int15.mp \
	ire1.mp ire2.mp ire3.mp \
	linmap1.mp linmap2.mp linmap3.mp linmap4.mp \
	    linmap5.mp linmap6.mp linmap7.mp linmap8.mp linmap9.mp \
	    linmap10.mp linmap11.mp linmap12.mp linmap13.mp linmap14.mp \
	log1.mp log2.mp log3.mp log4.mp \
	    log5.mp log6.mp log7.mp log8.mp log9.mp \
	    log10.mp log11.mp log12.mp log13.mp log14.mp \
	    log15.mp log16.mp log17.mp log18.mp log19.mp \
	    log20.mp log21.mp log22.mp log23.mp log24.mp \
	    log25.mp log26.mp log27.mp log28.mp log29.mp \
	    log30.mp log31.mp log32.mp log33.mp log34.mp \
	    log35.mp log36.mp log37.mp log38.mp log39.mp \
	    log40.mp log41.mp log42.mp log43.mp log44.mp \
	    log45.mp log46.mp log47.mp log48.mp log49.mp \
	    log50.mp log51.mp log52.mp \
	logmap1.mp logmap2.mp logmap3.mp logmap4.mp \
	    logmap5.mp logmap6.mp logmap7.mp logmap8.mp logmap9.mp \
	map5.mp \
	    map85.mp map86.mp \
	    map103.mp \
	    map145.mp \
	mat1.mp mat2.mp \
	metric1.mp metric2.mp metric3.mp metric4.mp \
	    metric5.mp metric6.mp metric7.mp \
	misc1.mp misc2.mp misc3.mp misc4.mp \
	    misc5.mp misc6.mp misc7.mp \
	    misc14.mp \
	    misc15.mp misc16.mp misc18.mp misc19.mp \
	    misc20.mp misc21.mp misc22.mp misc23.mp \
	prodmap1.mp prodmap2.mp prodmap3.mp prodmap4.mp \
	    prodmap5.mp prodmap6.mp prodmap7.mp prodmap8.mp prodmap9.mp \
	real1.mp real2.mp real3.mp real4.mp \
	    real5.mp real9.mp \
	    real11.mp real12.mp real13.mp real14.mp \
	    real15.mp real16.mp real17.mp real18.mp real19.mp \
	    real20.mp real21.mp \
	tangmap1.mp tangmap2.mp tangmap3.mp tangmap4.mp \
	    tangmap5.mp tangmap6.mp tangmap7.mp tangmap8.mp tangmap9.mp \
	    tangmap10.mp tangmap11.mp tangmap12.mp tangmap13.mp tangmap14.mp \
	    tangmap15.mp tangmap16.mp tangmap17.mp tangmap18.mp tangmap19.mp \
	    tangmap20.mp tangmap21.mp tangmap22.mp tangmap23.mp tangmap24.mp \
	    tangmap25.mp tangmap26.mp tangmap27.mp tangmap28.mp tangmap29.mp \
	    tangmap30.mp tangmap31.mp tangmap32.mp tangmap33.mp tangmap34.mp \
	    tangmap35.mp tangmap36.mp tangmap37.mp tangmap38.mp tangmap39.mp \
	    tangmap40.mp tangmap41.mp tangmap42.mp tangmap43.mp tangmap44.mp \
	    tangmap45.mp tangmap46.mp tangmap47.mp tangmap48.mp \
	topo1.mp topo2.mp topo3.mp topo4.mp \
	    topo5.mp topo6.mp topo7.mp topo8.mp topo9.mp \
	    topo10.mp topo11.mp topo12.mp topo13.mp topo14.mp \
	    topo15.mp topo16.mp topo17.mp topo18.mp topo19.mp \
	    topo20.mp topo21.mp topo22.mp \
	    topo27.mp topo28.mp topo29.mp \
	    topo30.mp topo31.mp topo32.mp topo33.mp \
	    topo35.mp topo39.mp \
	    topo40.mp \
	topofin1.mp topofin2.mp topofin3.mp topofin4.mp \
	    topofin5.mp topofin6.mp \
	topomap1.mp topomap2.mp topomap3.mp topomap4.mp \
	    topomap5.mp topomap6.mp topomap7.mp topomap8.mp topomap9.mp \
	    topomap10.mp \
	tree1.mp tree2.mp tree3.mp tree4.mp \
	    tree5.mp tree6.mp tree7.mp tree8.mp tree9.mp \
	    tree10.mp tree11.mp tree12.mp tree13.mp tree14.mp \
	    tree15.mp tree16.mp tree17.mp tree18.mp tree19.mp \
	    tree20.mp tree21.mp tree22.mp tree23.mp tree24.mp \
	    tree25.mp tree26.mp tree27.mp tree28.mp tree29.mp \
	    tree30.mp tree31.mp tree32.mp tree33.mp tree34.mp \
	    tree35.mp tree36.mp tree37.mp tree38.mp tree39.mp \
	    tree40.mp tree41.mp tree42.mp tree43.mp tree44.mp \
	    tree45.mp tree46.mp tree47.mp tree48.mp tree49.mp \
	    tree50.mp tree51.mp tree52.mp tree53.mp tree54.mp \
	    tree55.mp tree56.mp tree57.mp tree58.mp tree59.mp \
	    tree60.mp tree61.mp tree62.mp tree63.mp tree64.mp \
	    tree65.mp tree66.mp tree67.mp tree68.mp tree69.mp \
	    tree70.mp tree71.mp tree72.mp tree73.mp tree74.mp \
	    tree75.mp tree76.mp tree77.mp tree78.mp tree79.mp \
	    tree80.mp tree81.mp tree82.mp tree83.mp tree84.mp \
	    tree85.mp tree86.mp tree87.mp tree88.mp tree89.mp \
	vec1.mp vec2.mp vec3.mp vec4.mp \
	    vec5.mp vec6.mp vec7.mp vec8.mp vec9.mp \
	    vec10.mp vec11.mp vec12.mp vec13.mp vec14.mp \
	    vec15.mp vec16.mp vec17.mp vec18.mp vec19.mp \
	    vec20.mp vec21.mp vec22.mp vec23.mp vec24.mp \
	    vec25.mp vec26.mp vec27.mp vec28.mp vec29.mp \
	    vec30.mp vec31.mp \
	3d1.mp 3d2.mp 3d3.mp 3d4.mp \
	    3d5.mp 3d6.mp 3d7.mp 3d8.mp 3d9.mp \
	    3d10.mp 3d11.mp 3d12.mp 3d13.mp 3d14.mp \
	    3d15.mp 3d16.mp 3d17.mp 3d18.mp 3d19.mp \
	    3d20.mp 3d21.mp 3d22.mp 3d23.mp 3d24.mp \
	    3d25.mp 3d26.mp 3d27.mp 3d28.mp 3d29.mp \
	    3d30.mp 3d31.mp 3d32.mp 3d33.mp 3d34.mp \
	    3d35.mp 3d36.mp 3d37.mp

# Metapost output files (postscript).
MPFILES1    = $(MPFILES:.mp=.1)
MPXFILES    = $(MPFILES:.mp=.mpx)

# The document file.
DEMOFILETEX = mpdemo.tex
DEMOFILEDVI = $(DEMOFILETEX:.tex=.dvi)

TEXFILES    = $(DEMOFILETEX)
PSFILES     = $(TEXFILES:.tex=.ps)
PSZIPFILES  = $(TEXFILES:.tex=.ps.zip)
PDFFILES    = $(TEXFILES:.tex=.pdf)

allpub: $(PDFFILES)
ps: $(PSFILES)
pdf: $(PDFFILES)

# Dvips parameters. Include the hyperlink-passing parameter "-z".
RES         = -z -D 1200 -T 21.02cm,29.73cm

# General file-extension dependencies.
.SUFFIXES: .png .eps \
	   .disp .xdvi .pdfx .pdf.zip .pdf.gz .pdf .ps.zip .ps.gz .psx .ps \
	   .dvi .xrf .tex .1 .mp $(SUFFIXES)

.mp.1:
	@echo "-- Remaking \"$@\" because of:"
	@echo "-- $?"
	rm -f $*.mpx
	$(MPOST) $*.mp
.tex.dvi:
	@echo "-- Remaking \"$@\" because of:"
	@echo "-- $?"
	tex $*
.dvi.ps:
	@echo "-- Remaking \"$@\" because of:"
	@echo "-- $?"
	dvips $(RES) -o $*.ps.new $*.dvi
	mv $*.ps.new $*.ps
.ps.pdf:
	@echo "-- Remaking \"$@\" because of:"
	@echo "-- $?"
	ps2pdf $*.ps

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Dependencies of MP source files on macro files.
arrow1.1: mapmax.mp
arrow2.1: mapmax.mp
arrow3.1: mapmax.mp
arrow4.1: mapmax.mp
arrow5.1: mapmax.mp $(DGMPTEX)
arrow6.1: mapmax.mp
arrow7.1: mapmax.mp
arrow8.1: mapmax.mp $(DGMPTEX)
arrow9.1: mapmax.mp
arrow10.1: mapmax.mp
arrow11.1: mapmax.mp
arrow12.1: mapmax.mp
arrow13.1: mapmax.mp
arrow14.1: mapmax.mp
arrow15.1: mapmax.mp
arrow16.1: mapmax.mp
arrow17.1: mapmax.mp
arrow18.1: mapmax.mp
arrow19.1: mapmax.mp
arrow20.1: mapmax.mp
arrow21.1: mapmax.mp
arrow22.1: mapmax.mp
arrow23.1: mapmax.mp
arrow24.1: mapmax.mp centmax.mp
arrow25.1: mapmax.mp
arrow26.1: mapmax.mp
arrow27.1: mapmax.mp
arrow28.1: mapmax.mp
arrow29.1: mapmax.mp
arrow30.1: mapmax.mp
arrow31.1: mapmax.mp
arrow32.1: mapmax.mp
arrow33.1: mapmax.mp
arrow34.1: mapmax.mp
arrow35.1: mapmax.mp
arrow36.1: mapmax.mp
arrow37.1: mapmax.mp
arrow38.1: mapmax.mp
arrow39.1: mapmax.mp $(DGMPTEX)
arrow40.1: mapmax.mp $(DGMPTEX)
arrow41.1: mapmax.mp $(DGMPTEX)
arrow42.1: mapmax.mp
arrow52.1: mapmax.mp
arrow53.1: mapmax.mp $(DGMPTEX)
arrow54.1: mapmax.mp $(DGMPTEX)
arrow55.1: mapmax.mp $(DGMPTEX)

axiom1.1: mapmax.mp
axiom2.1: mapmax.mp $(DGMPTEX)
axiom3.1: mapmax.mp
axiom4.1: mapmax.mp
axiom5.1: mapmax.mp
axiom6.1: mapmax.mp
axiom7.1: mapmax.mp
axiom8.1: mapmax.mp
axiom9.1: mapmax.mp
axiom10.1: mapmax.mp

box1.1: boxmax.mp $(DGMPTEX)
box2.1: boxmax.mp $(DGMPTEX)
box2x.1: boxmax.mp $(DGMPTEX)
box3.1: boxmax.mp $(DGMPTEX)
box4.1: boxmax.mp $(DGMPTEX)
box5.1: boxmax.mp
box6.1: boxmax.mp

calc1.1: mapmax.mp
calc2.1:

chart1.1: mapmax.mp
chart2.1: mapmax.mp
chart3.1: mapmax.mp
chart4.1: mapmax.mp
chart5.1: mapmax.mp gridmax.mp
chart6.1: mapmax.mp
chart7.1: mapmax.mp
chart8.1: mapmax.mp
chart9.1: mapmax.mp
chart10.1: mapmax.mp
chart11.1: mapmax.mp
chart12.1: mapmax.mp
chart13.1: mapmax.mp
chart14.1: mapmax.mp
chart15.1: mapmax.mp
chart16.1: mapmax.mp
chart17.1: mapmax.mp
chart18.1: mapmax.mp

class1.1:
class2.1: mapmax.mp
class3.1: mapmax.mp
class4.1: mapmax.mp
class5.1:
class6.1:
class7.1: mapmax.mp
class8.1: mapmax.mp
class9.1: mapmax.mp

connmap1.1: mapmax.mp $(DGMPTEX)
connmap2.1: mapmax.mp $(DGMPTEX)
connmap3.1: mapmax.mp $(DGMPTEX)
connmap4.1: mapmax.mp $(DGMPTEX)
connmap5.1: mapmax.mp $(DGMPTEX)
connmap6.1: mapmax.mp $(DGMPTEX)
connmap7.1: mapmax.mp centmax.mp $(DGMPTEX)
connmap8.1: mapmax.mp $(DGMPTEX)
connmap9.1: mapmax.mp $(DGMPTEX)
connmap10.1: mapmax.mp $(DGMPTEX)
connmap11.1: mapmax.mp $(DGMPTEX)
connmap12.1: mapmax.mp $(DGMPTEX)
connmap13.1: mapmax.mp $(DGMPTEX)
connmap14.1: mapmax.mp centmax.mp $(DGMPTEX)
connmap15.1: mapmax.mp centmax.mp $(DGMPTEX)
connmap16.1: mapmax.mp centmax.mp $(DGMPTEX)

fibdiag1.1: mapmax.mp $(DGSPELL)
fibdiag2.1: mapmax.mp
fibdiag3.1: mapmax.mp
fibdiag4.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibdiag5.1: mapmax.mp
fibdiag6.1: mapmax.mp
fibdiag7.1: mapmax.mp
fibdiag8.1: mapmax.mp $(DGMPTEX)
fibdiag9.1: mapmax.mp
fibdiag10.1: mapmax.mp centmax.mp
fibdiag11.1: boxmax.mp $(DGMPTEX)

fibmap1.1: mapmax.mp
fibmap2.1: mapmax.mp
fibmap3.1: mapmax.mp
fibmap7.1: mapmax.mp
fibmap8.1: mapmax.mp
fibmap9.1: mapmax.mp
fibmap10.1: mapmax.mp
fibmap11.1: mapmax.mp
fibmap12.1: mapmax.mp
fibmap13.1: mapmax.mp
fibmap14.1: mapmax.mp
fibmap15.1: mapmax.mp
fibmap16.1: mapmax.mp
fibmap17.1: mapmax.mp $(DGSPELL)
fibmap18.1: mapmax.mp
fibmap19.1: mapmax.mp $(DGMPTEX)
fibmap20.1: mapmax.mp $(DGMPTEX)
fibmap21.1: mapmax.mp $(DGMPTEX)
fibmap22.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibmap24.1: mapmax.mp
fibmap25.1: mapmax.mp
fibmap26.1: mapmax.mp
fibmap27.1: mapmax.mp
fibmap29.1: mapmax.mp
fibmap30.1: mapmax.mp
fibmap31.1: mapmax.mp $(DGMPTEX)
fibmap32.1: mapmax.mp
fibmap33.1: mapmax.mp
fibmap34.1: mapmax.mp
fibmap35.1: mapmax.mp centmax.mp
fibmap36.1: mapmax.mp centmax.mp
fibmap37.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap38.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap39.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap40.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap41.1: boxmax.mp mapmax.mp centmax.mp
fibmap42.1: boxmax.mp mapmax.mp centmax.mp
fibmap43.1: mapmax.mp centmax.mp
fibmap44.1: mapmax.mp centmax.mp
fibmap45.1: mapmax.mp centmax.mp $(DGMPTEX)
fibmap46.1: boxmax.mp mapmax.mp centmax.mp
fibmap47.1: boxmax.mp mapmax.mp centmax.mp
fibmap48.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap49.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap50.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)
fibmap51.1: boxmax.mp mapmax.mp centmax.mp $(DGMPTEX)

fibre1.1:
fibre2.1:
fibre3.1:
fibre4.1:
fibre5.1:
fibre6.1: mapmax.mp
fibre7.1:
fibre8.1:
fibre9.1: $(DGSPELL)
fibre10.1:
fibre11.1:
fibre12.1: mapmax.mp
fibre13.1: mapmax.mp $(DGSPELL)
fibre14.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibre15.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibre16.1:
fibre17.1: mapmax.mp $(DGSPELL)
fibre18.1: mapmax.mp
fibre19.1: mapmax.mp
fibre20.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibre21.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibre22.1: mapmax.mp $(DGMPTEX)
fibre23.1: mapmax.mp $(DGMPTEX)
fibre24.1: mapmax.mp gridmax.mp $(DGMPTEX)
fibre25.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
fibre26.1: boxmax.mp mapmax.mp $(DGMPTEX)
fibre27.1: boxmax.mp mapmax.mp $(DGMPTEX)
fibre28.1: boxmax.mp mapmax.mp $(DGMPTEX)
fibre29.1: boxmax.mp mapmax.mp $(DGMPTEX)
fibre30.1: boxmax.mp mapmax.mp $(DGMPTEX)

field1.1:
field2.1:
field3.1:
field4.1:
field5.1:
field6.1: mapmax.mp

flag1.1: mapmax.mp
flag2.1: mapmax.mp

fn1.1:
fn2.1:
fn3.1:
fn4.1:
fn6.1:
fn15.1:
fn16.1:
fn17.1:
fn18.1:
fn19.1: $(DGMPTEX) mapmax.mp
fn20.1: $(DGMPTEX) mapmax.mp
fn28.1: $(DGMPTEX)
fn28x.1: $(DGMPTEX)
fn31.1:
fn32.1:
fn35.1:
fn36.1: mapmax.mp
fn37.1:
fn38.1:
fn39.1: mapmax.mp
fn44.1:
fn45.1:
fn46.1:
fn47.1:
fn48.1:
fn49.1:
fn50.1:
fn54.1: mapmax.mp
fn55.1:
fn56.1:
fn59.1:
fn60.1:
fn61.1: mapmax.mp
fn68.1: mapmax.mp
fn69.1:
fn70.1:
fn71.1:
fn72.1:
fn73.1:
fn74.1:
fn75.1: mapmax.mp
fn76.1: mapmax.mp
fn77.1: centmax.mp
fn78.1: $(DGMPTEX)
fn79.1: mapmax.mp
fn80.1:
fn81.1: mapmax.mp
fn82.1: mapmax.mp
fn84.1:
fn85.1:
fn86.1: mapmax.mp $(DGMPTEX)
fn87.1:
fn90.1: mapmax.mp $(DGMPTEX)
fn91.1:
fn94.1:
fn96.1:
fn97.1:
fn98.1:
fn99.1:
fn100.1:
fn101.1: mapmax.mp
fn102.1:
fn103.1: mapmax.mp centmax.mp
fn104.1: centmax.mp

fnmap1.1:
fnmap2.1: mapmax.mp
fnmap3.1: mapmax.mp
fnmap4.1: mapmax.mp
fnmap5.1: mapmax.mp
fnmap6.1: mapmax.mp $(DGMPTEX)

fn2d1.1:
fn2d2.1:
fn2d3.1:
fn2d4.1:
fn2d5.1: mapmax.mp
fn2d6.1: mapmax.mp
fn2d7.1: mapmax.mp
fn2d8.1:
fn2d9.1: mapmax.mp
fn2d10.1: mapmax.mp
fn2d11.1: mapmax.mp
fn2d12.1: mapmax.mp
fn2d13.1:
fn2d14.1:
fn2d15.1:
fn2d16.1: mapmax.mp
fn2d17.1: mapmax.mp
fn2d18.1: mapmax.mp
fn2d19.1: $(DGMPTEX)
fn2d20.1: $(DGMPTEX)
fn2d21.1:
fn2d22.1:
fn2d23.1: mapmax.mp
fn2d24.1: mapmax.mp
fn2d25.1: mapmax.mp
fn2d26.1: mapmax.mp centmax.mp

grid1.1: gridmax.mp
grid2.1: gridmax.mp
grid3.1: gridmax.mp
grid4.1: gridmax.mp
grid5.1: gridmax.mp
grid6.1: gridmax.mp
grid7.1: gridmax.mp $(DGMPTEX)
grid8.1: gridmax.mp $(DGMPTEX)
grid9.1: gridmax.mp

int1.1: mapmax.mp
int2.1: mapmax.mp
int3.1: mapmax.mp
int4.1: mapmax.mp
int5.1: mapmax.mp
int6.1: mapmax.mp
int7.1: mapmax.mp
int9.1: mapmax.mp
int10.1: mapmax.mp
int11.1:
int12.1:
int13.1:
int14.1: mapmax.mp
int15.1: mapmax.mp $(DGMPTEX)

ire1.1: boxmax.mp $(DGMPTEX)
ire2.1: boxmax.mp $(DGMPTEX)
ire2x.1: boxmax.mp $(DGMPTEX)
ire3.1: boxmax.mp $(DGMPTEX)
ire3x.1: boxmax.mp $(DGMPTEX)

linmap1.1: mapmax.mp
linmap2.1:
linmap3.1: mapmax.mp
linmap4.1: mapmax.mp $(DGMPTEX)
linmap5.1: mapmax.mp $(DGMPTEX)
linmap6.1: mapmax.mp $(DGMPTEX)
linmap7.1: mapmax.mp $(DGMPTEX)
linmap8.1: mapmax.mp centmax.mp $(DGMPTEX)
linmap9.1: mapmax.mp
linmap10.1: mapmax.mp $(DGMPTEX)
linmap11.1: mapmax.mp $(DGMPTEX)
linmap12.1: mapmax.mp $(DGMPTEX)
linmap13.1: mapmax.mp $(DGMPTEX)
linmap14.1: mapmax.mp

log1.1: boxmax.mp $(DGMPTEX)
log2.1: boxmax.mp $(DGMPTEX)
log3.1: boxmax.mp $(DGMPTEX)
log4.1: boxmax.mp $(DGMPTEX)
log5.1: boxmax.mp $(DGMPTEX)
log6.1: boxmax.mp $(DGMPTEX)
log7.1: boxmax.mp $(DGMPTEX)
log8.1: boxmax.mp $(DGMPTEX)
log9.1: boxmax.mp $(DGMPTEX)
log10.1: boxmax.mp $(DGMPTEX)
log11.1: boxmax.mp $(DGMPTEX)
log12.1: boxmax.mp $(DGMPTEX)
log13.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
log14.1: boxmax.mp $(DGMPTEX)
log15.1: boxmax.mp $(DGMPTEX)
log16.1: boxmax.mp mapmax.mp $(DGMPTEX)
log17.1: boxmax.mp mapmax.mp $(DGMPTEX)
log18.1: boxmax.mp mapmax.mp $(DGMPTEX)
log19.1: boxmax.mp $(DGMPTEX)
log20.1: boxmax.mp $(DGMPTEX)
log21.1: boxmax.mp $(DGMPTEX)
log22.1: boxmax.mp $(DGMPTEX)
log23.1: boxmax.mp mapmax.mp $(DGMPTEX)
log24.1: boxmax.mp mapmax.mp $(DGMPTEX)
log25.1: boxmax.mp $(DGMPTEX)
log26.1: boxmax.mp $(DGMPTEX)
log27.1: boxmax.mp $(DGMPTEX)
log28.1: boxmax.mp $(DGMPTEX)
log29.1: boxmax.mp $(DGMPTEX)
log30.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
log31.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
log32.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
log33.1: boxmax.mp $(DGMPTEX)
log34.1: mapmax.mp $(DGMPTEX)
log35.1: boxmax.mp $(DGMPTEX)
log36.1: boxmax.mp $(DGMPTEX)
log37.1: mapmax.mp $(DGMPTEX)
log38.1: boxmax.mp $(DGMPTEX)
log39.1: boxmax.mp $(DGMPTEX)
log40.1: boxmax.mp $(DGMPTEX)
log41.1: boxmax.mp $(DGMPTEX)
log42.1: $(DGMPTEX)
log43.1: boxmax.mp $(DGMPTEX)
log44.1: boxmax.mp $(DGMPTEX)
log45.1:
log46.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
log47.1: boxmax.mp $(DGMPTEX)
log48.1:
log49.1:
log50.1: boxmax.mp $(DGMPTEX)
log51.1: mapmax.mp $(DGMPTEX)
log52.1: boxmax.mp $(DGMPTEX)

logmap1.1: mapmax.mp
logmap2.1: mapmax.mp
logmap3.1: mapmax.mp
logmap4.1: mapmax.mp $(DGMPTEX)
logmap5.1: $(DGMPTEX)
logmap6.1: mapmax.mp $(DGMPTEX) $(DGSPELL)
logmap7.1: mapmax.mp $(DGMPTEX)
logmap8.1: mapmax.mp $(DGMPTEX)
logmap9.1: mapmax.mp

map5.1: mapmax.mp
map36x.1: mapmax.mp
map85.1: mapmax.mp
map86.1: mapmax.mp $(DGMPTEX)
map103.1: mapmax.mp
map145.1: mapmax.mp
map157.1: mapmax.mp

mat1.1:
mat2.1:

metric1.1: mapmax.mp
metric2.1:
metric3.1:
metric4.1:
metric5.1:
metric6.1: mapmax.mp
metric7.1: mapmax.mp

misc1.1:
misc2.1: mapmax.mp
misc3.1: mapmax.mp
misc4.1: mapmax.mp
misc5.1: mapmax.mp
misc6.1: mapmax.mp
misc7.1: mapmax.mp
misc14.1:
misc15.1: boxmax.mp
misc16.1: mapmax.mp
misc18.1: mapmax.mp
misc19.1: mapmax.mp
misc19x.1: mapmax.mp miscmax.mp
misc20.1:
misc21.1:
misc22.1: mapmax.mp
misc23.1: mapmax.mp centmax.mp

prodmap1.1: mapmax.mp
prodmap2.1: mapmax.mp
prodmap3.1: mapmax.mp
prodmap4.1: boxmax.mp
prodmap5.1: mapmax.mp
prodmap6.1: boxmax.mp mapmax.mp
prodmap7.1: boxmax.mp mapmax.mp
prodmap8.1: boxmax.mp mapmax.mp centmax.mp
prodmap9.1: boxmax.mp mapmax.mp centmax.mp

real1.1:
real2.1:
real3.1: mapmax.mp
real4.1: mapmax.mp
real5.1: mapmax.mp
real9.1: mapmax.mp
real11.1: mapmax.mp
real12.1: mapmax.mp
real13.1: mapmax.mp
real14.1:
real15.1: mapmax.mp
real16.1: mapmax.mp
real17.1: mapmax.mp
real18.1: mapmax.mp
real19.1:
real20.1:
real21.1:

tangmap1.1: mapmax.mp
tangmap2.1: mapmax.mp
tangmap3.1: mapmax.mp
tangmap4.1: mapmax.mp
tangmap5.1: mapmax.mp $(DGMPTEX)
tangmap6.1: mapmax.mp
tangmap7.1: mapmax.mp
tangmap8.1: mapmax.mp
tangmap9.1: mapmax.mp centmax.mp
tangmap10.1: mapmax.mp
tangmap11.1: mapmax.mp
tangmap12.1: mapmax.mp
tangmap13.1: mapmax.mp
tangmap14.1: mapmax.mp
tangmap15.1: mapmax.mp $(DGMPTEX)
tangmap16.1: mapmax.mp $(DGMPTEX)
tangmap17.1: mapmax.mp $(DGMPTEX)
tangmap18.1: mapmax.mp
tangmap19.1: mapmax.mp $(DGMPTEX)
tangmap20.1: mapmax.mp $(DGMPTEX)
tangmap21.1: mapmax.mp
tangmap22.1: mapmax.mp
tangmap23.1: mapmax.mp
tangmap24.1: mapmax.mp
tangmap25.1: mapmax.mp
tangmap26.1: mapmax.mp
tangmap27.1: $(DGMPTEX)
tangmap28.1: mapmax.mp $(DGMPTEX)
tangmap29.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap30.1: mapmax.mp
tangmap31.1: mapmax.mp
tangmap32.1: mapmax.mp
tangmap33.1: mapmax.mp
tangmap34.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap35.1: mapmax.mp
tangmap36.1: mapmax.mp
tangmap37.1: mapmax.mp centmax.mp
tangmap38.1: mapmax.mp centmax.mp
tangmap39.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap40.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap41.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap42.1: mapmax.mp boxmax.mp centmax.mp
tangmap43.1: mapmax.mp boxmax.mp centmax.mp
tangmap44.1: mapmax.mp boxmax.mp centmax.mp
tangmap45.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap46.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap47.1: mapmax.mp centmax.mp $(DGMPTEX)
tangmap48.1: mapmax.mp centmax.mp $(DGMPTEX)

topo1.1:
topo2.1:
topo3.1:
topo4.1:
topo5.1:
topo6.1: mapmax.mp
topo7.1:
topo8.1:
topo9.1:
topo10.1: mapmax.mp
topo11.1: mapmax.mp
topo12.1:
topo13.1:
topo14.1:
topo15.1: mapmax.mp
topo16.1:
topo17.1:
topo18.1:
topo19.1:
topo20.1:
topo21.1:
topo22.1:
topo27.1:
topo28.1: mapmax.mp
topo29.1:
topo30.1: mapmax.mp
topo31.1:
topo32.1:
topo33.1:
topo35.1: mapmax.mp $(DGSPELL)
topo39.1:
topo40.1: mapmax.mp

topofin1.1:
topofin2.1:
topofin3.1:
topofin4.1:
topofin5.1:

topomap1.1: mapmax.mp
topomap2.1: mapmax.mp
topomap3.1: mapmax.mp
topomap4.1: mapmax.mp
topomap5.1: mapmax.mp
topomap6.1: mapmax.mp
topomap7.1: mapmax.mp
topomap8.1: mapmax.mp
topomap9.1: mapmax.mp
topomap10.1: mapmax.mp

tree1.1: boxmax.mp $(DGMPTEX)
tree2.1: boxmax.mp $(DGMPTEX)
tree3.1: boxmax.mp $(DGMPTEX)
tree4.1: boxmax.mp $(DGMPTEX)
tree5.1: boxmax.mp $(DGMPTEX)
tree6.1: boxmax.mp $(DGMPTEX)
tree7.1: boxmax.mp $(DGMPTEX)
tree8.1: boxmax.mp $(DGMPTEX)
tree9.1: boxmax.mp $(DGMPTEX)
tree10.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree11.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree12.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree13.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree14.1: boxmax.mp $(DGMPTEX)
tree15.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree16.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree17.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree18.1: boxmax.mp $(DGMPTEX)
tree19.1: boxmax.mp $(DGMPTEX)
tree20.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree21.1: boxmax.mp $(DGMPTEX)
tree22.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree22x.1: boxmax.mp $(DGMPTEX)
tree23.1: boxmax.mp $(DGMPTEX)
tree23x.1: boxmax.mp $(DGMPTEX)
tree24.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree25.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree26.1: boxmax.mp $(DGMPTEX)
tree27.1: boxmax.mp $(DGMPTEX)
tree28.1: boxmax.mp $(DGMPTEX)
tree29.1: boxmax.mp $(DGMPTEX)
tree30.1: boxmax.mp $(DGMPTEX)
tree31.1: boxmax.mp $(DGMPTEX)
tree32.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree33.1: boxmax.mp $(DGMPTEX)
tree33x.1: boxmax.mp $(DGMPTEX)
tree34.1: boxmax.mp $(DGMPTEX)
tree35.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree36.1: boxmax.mp $(DGMPTEX)
tree37.1: boxmax.mp $(DGMPTEX)
tree38.1: boxmax.mp $(DGMPTEX)
tree39.1: boxmax.mp $(DGMPTEX)
tree40.1: boxmax.mp $(DGMPTEX)
tree41.1: boxmax.mp $(DGMPTEX)
tree42.1: boxmax.mp $(DGMPTEX)
tree43.1: boxmax.mp $(DGMPTEX)
tree44.1: boxmax.mp $(DGMPTEX)
tree45.1: boxmax.mp $(DGMPTEX)
tree46.1: boxmax.mp $(DGMPTEX)
tree47.1: boxmax.mp $(DGMPTEX)
tree48.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree49.1: boxmax.mp mapmax.mp $(DGMPTEX) $(DGSPELL)
tree50.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree51.1: boxmax.mp $(DGMPTEX)
tree52.1: boxmax.mp $(DGMPTEX)
tree53.1: boxmax.mp $(DGMPTEX)
tree54.1: boxmax.mp $(DGMPTEX)
tree55.1: boxmax.mp $(DGMPTEX)
tree56.1: boxmax.mp $(DGMPTEX)
tree57.1: boxmax.mp $(DGMPTEX)
tree58.1: boxmax.mp mapmax.mp $(DGMPTEX)
tree59.1: boxmax.mp $(DGMPTEX)
tree60.1: boxmax.mp $(DGMPTEX)
tree61.1: boxmax.mp $(DGMPTEX)
tree62.1: boxmax.mp $(DGMPTEX)
tree63.1: boxmax.mp $(DGMPTEX)
tree64.1: boxmax.mp $(DGMPTEX)
tree65.1: boxmax.mp $(DGMPTEX)
tree66.1: boxmax.mp $(DGMPTEX)
tree67.1: boxmax.mp $(DGMPTEX) $(DGSPELL)
tree68.1: boxmax.mp $(DGMPTEX)
tree69.1: boxmax.mp $(DGMPTEX)
tree70.1: boxmax.mp $(DGMPTEX)
tree71.1: boxmax.mp $(DGMPTEX)
tree72.1: boxmax.mp $(DGMPTEX)
tree73.1: boxmax.mp $(DGMPTEX)
tree74.1: boxmax.mp $(DGMPTEX)
tree75.1: boxmax.mp $(DGMPTEX)
tree76.1: boxmax.mp $(DGMPTEX)
tree77.1: boxmax.mp $(DGMPTEX)
tree78.1: boxmax.mp $(DGMPTEX)
tree79.1: boxmax.mp $(DGMPTEX)
tree80.1: boxmax.mp $(DGMPTEX)
tree81.1: boxmax.mp $(DGMPTEX)
tree82.1: boxmax.mp $(DGMPTEX)
tree83.1: boxmax.mp $(DGMPTEX)
tree84.1: boxmax.mp $(DGMPTEX)
tree85.1: boxmax.mp $(DGMPTEX)
tree86.1: boxmax.mp $(DGMPTEX)
tree87.1: boxmax.mp $(DGMPTEX)
tree88.1: boxmax.mp centmax.mp $(DGMPTEX)
tree89.1: boxmax.mp $(DGMPTEX) $(DGSPELL)

vec1.1:
vec2.1:
vec3.1:
vec4.1: mapmax.mp
vec5.1: mapmax.mp
vec6.1: mapmax.mp
vec7.1: mapmax.mp $(DGMPTEX)
vec8.1: mapmax.mp $(DGMPTEX)
vec9.1: mapmax.mp
vec10.1: mapmax.mp
vec11.1: mapmax.mp
vec12.1: mapmax.mp
vec13.1:
vec14.1: mapmax.mp
vec15.1: mapmax.mp
vec16.1:
vec17.1:
vec18.1:
vec19.1:
vec20.1:
vec21.1:
vec22.1:
vec23.1: mapmax.mp
vec24.1: mapmax.mp
vec25.1: mapmax.mp
vec26.1: mapmax.mp
vec27.1: mapmax.mp
vec28.1:
vec29.1: mapmax.mp
vec30.1: mapmax.mp
vec31.1: mapmax.mp

3d1.1: 3dmax.mp
3d2.1: 3dmax.mp
3d3.1: 3dmax.mp
3d4.1: 3dmax.mp
3d5.1: 3dmax.mp
3d6.1: 3dmax.mp mapmax.mp
3d7.1: 3dmax.mp
3d8.1: 3dmax.mp
3d9.1: 3dmax.mp mapmax.mp centmax.mp
3d10.1: 3dmax.mp mapmax.mp centmax.mp
3d11.1: 3dmax.mp mapmax.mp
3d12.1: 3dmax.mp
3d13.1: 3dmax.mp
3d14.1: 3dmax.mp
3d15.1: 3dmax.mp
3d16.1: 3dmax.mp mapmax.mp
3d17.1: 3dmax.mp mapmax.mp
3d17x.1: 3dmax.mp mapmax.mp
3d18.1: 3dmax.mp mapmax.mp
3d19.1: 3dmax.mp
3d20.1: 3dmax.mp
3d21.1: 3dmax.mp
3d22.1: 3dmax.mp
3d23.1: 3dmax.mp
3d24.1: 3dmax.mp mapmax.mp
3d25.1: 3dmax.mp mapmax.mp
3d26.1: 3dmax.mp mapmax.mp
3d27.1: 3dmax.mp mapmax.mp
3d28.1: 3dmax.mp mapmax.mp
3d29.1: 3dmax.mp mapmax.mp
3d30.1: 3dmax.mp mapmax.mp $(DGMPTEX)
3d31.1: 3dmax.mp
3d32.1: 3dmax.mp
3d33.1: 3dmax.mp
3d34.1: 3dmax.mp
3d35.1: 3dmax.mp mapmax.mp
3d36.1: 3dmax.mp mapmax.mp $(DGMPTEX)
3d37.1: 3dmax.mp mapmax.mp

# Assume as a worst case that all files depend on akmath.tex.
$(MPFILES1): $(TEXMAXFILES)

$(DEMOFILEDVI): $(AKMATHTEX) $(DGSPELL) $(MPFILES1)
