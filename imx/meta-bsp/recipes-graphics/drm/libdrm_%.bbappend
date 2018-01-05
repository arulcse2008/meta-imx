FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

IMX_LIBDRM_SRC ?= "git://source.codeaurora.org/external/imx/libdrm-imx.git;protocol=https"
IMX_LIBDRM_BRANCH = "libdrm-imx-2.4.84"
SRC_URI_remove_imxgpu  = "http://dri.freedesktop.org/libdrm/${BP}.tar.bz2"
SRC_URI_remove_mx8     = "file://drm-update-arm.patch"
SRC_URI_prepend_imxgpu = "${IMX_LIBDRM_SRC};branch=${IMX_LIBDRM_BRANCH} "
SRCREV_imxgpu = "504e10f82f837e3f9894759a9b1a7470aa8a55a4"

S_imxgpu = "${WORKDIR}/git"

EXTRA_OECONF_append_imxgpu = " --enable-vivante-experimental-api"

PACKAGES_prepend_imxgpu = "${PN}-vivante "

RRECOMMENDS_${PN}-drivers_append_imxgpu = " ${PN}-vivante"

FILES_${PN}-vivante = "${libdir}/libdrm_vivante.so.*"
