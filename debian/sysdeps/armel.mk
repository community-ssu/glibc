#GLIBC_PASSES += nptl

GLIBC_OVERLAYS ?= $(shell ls glibc-linuxthreads* glibc-ports* glibc-libidn*)

#nptl_extra_cflags = -g1 -O3
#libc_MIN_KERNEL_SUPPORTED = 2.6.16
#nptl_LIBDIR = /tls

threads = yes

export libc_cv_forced_unwind=yes

#libc_add-ons = ports linuxthreads $(add-ons)
libc_extra_config_options = $(extra_config_options) --without-fp --with-tls --without-__thread --disable-profile --disable-force-install --disable-sanity-checks

# NPTL Config
nptl_add-ons = nptl ports $(add-ons)
nptl_extra_config_options = $(extra_config_options) --without-fp --with-tls --with-__thread --disable-profile --disable-force-install
nptl_extra_cflags = -g1 -O3
nptl_MIN_KERNEL_SUPPORTED = 2.6.28
nptl_LIBDIR = /tls

libc_add-ons = $(nptl_add-ons)
libc_extra_config_options = $(nptl_extra_config_options)
libc_MIN_KERNEL_SUPPORTED = $(nptl_MIN_KERNEL_SUPPORTED)

