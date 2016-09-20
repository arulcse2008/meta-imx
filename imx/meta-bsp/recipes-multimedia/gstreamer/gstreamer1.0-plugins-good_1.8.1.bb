include recipes-multimedia/gstreamer/gstreamer1.0-plugins-good.inc

# Add extra patch directory
FILESEXTRAPATHS_prepend := "${BSPDIR}/sources/poky/meta/recipes-multimedia/gstreamer/files:"

LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343 \
                    file://common/coverage/coverage-report.pl;beginline=2;endline=17;md5=a4e1830fce078028c8f0974161272607 \
                    file://gst/replaygain/rganalysis.c;beginline=1;endline=23;md5=b60ebefd5b2f5a8e0cab6bfee391a5fe"

SRC_URI = " \
    http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${PV}.tar.xz \
"
EXTRA_OECONF += " --enable-v4l2-probe \
"

SRC_URI[md5sum] = "3eabe7277681b9bef8a64c312de03d47"
SRC_URI[sha256sum] = "2103e17921d67894e82eafdd64fb9b06518599952fd93e625bfbc83ffead0972"

S = "${WORKDIR}/gst-plugins-good-${PV}"
