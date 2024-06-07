FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " file://bsp.cfg"
KERNEL_FEATURES_append = " bsp.cfg"
SRC_URI += "file://user_2024-03-28-15-20-00.cfg \
            file://user_2024-06-06-09-28-00.cfg \
            file://user_2024-06-06-09-55-00.cfg \
            "

