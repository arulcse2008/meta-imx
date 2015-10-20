FILESEXTRAPATHS_prepend_mx6 := "${THISDIR}/${PN}:"

SRC_URI_append_mx6 = " file://0001-Additional-eglSwapBuffer-calling-makes-wrong-throttl.patch \
                     file://0001-Add-OpenVG-demos-to-support-wayland.patch"

DEPENDS = "mesa"

REMOVE_GLU = "${@base_contains('DISTRO_FEATURES', 'x11', \
                   base_contains('DISTRO_FEATURES', 'wayland','glu x11','', d), \
                     base_contains('DISTRO_FEATURES', 'wayland','glu x11','', d), d)}"

PACKAGECONFIG_remove_mx6q = "${REMOVE_GLU}"
PACKAGECONFIG_remove_mx6dl = "${REMOVE_GLU}"
PACKAGECONFIG_remove_mx6sx = "${REMOVE_GLU}"
PACKAGECONFIG_remove_mx6sl = "${REMOVE_GLU}"

PACKAGECONFIG[vg] = "--enable-vg,--disable-vg,virtual/libopenvg"

PACKAGECONFIG_append = "${@base_contains('DISTRO_FEATURES', 'x11', \
                            base_contains('DISTRO_FEATURES', 'wayland',' wayland vg', '', d), \
                               base_contains('DISTRO_FEATURES', 'wayland',' wayland vg', '', d), d)}"
