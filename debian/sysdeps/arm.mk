#GLIBC_PASSES += nptl

libc_extra_config_options = $(extra_config_options) --without-fp --with-tls --without-__thread --disable-force-install

