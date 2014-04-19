
BUILDDIR = build
CONFDIR = .
SRCDIR = .

SLIC3R = slic3r
OPENSCAD = openscad

VPATH = $(SRCDIR):$(BUILDDIR)

STL_TARGETS = $(patsubst $(SRCDIR)/%.scad,$(BUILDDIR)/%.stl,$(wildcard $(SRCDIR)/*.scad))
GCODE_TARGETS = $(patsubst $(SRCDIR)/%.scad,$(BUILDDIR)/%.gcode,$(wildcard $(SRCDIR)/*.scad))

.PHONY: all gcode clean
all: $(STL_TARGETS)

gcode: $(GCODE_TARGETS)

$(BUILDDIR)/%.stl: %.scad
	mkdir -p ${BUILDDIR}
	openscad -o $@ $^

$(BUILDDIR)/%.gcode: %.stl
	${SLIC3R} --load ${CONFDIR}/slicer.ini $^

clean:
	rm -f ${BUILDDIR}/*.stl ${BUILDDIR}/*.gcode

