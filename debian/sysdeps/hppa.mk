# HPPA doesn't work when built with gcc 4.0, as of 2005-11-12.
# See bug #326581.
BUILD_CC = gcc-3.4
CC = gcc-3.4

# hppa64 needs symlink /usr/hppa64-linux/include to /usr/include
# (See: Bug#239020)  In future we may drop this file with supporting hppa64.

define libc6-dev_extra_pkg_install
mkdir -p debian/$(curpass)/usr
mkdir -p debian/$(curpass)/usr/hppa64-linux
ln -sf /usr/include debian/$(curpass)/usr/hppa64-linux/include
mkdir -p debian/$(curpass)/usr/hppa64-linux-gnu
ln -sf /usr/include debian/$(curpass)/usr/hppa64-linux-gnu/include
endef

# some hppa linuxthreads tests: ex* do not work currently even if
# TIMEOUTSCALE is set - SIGALRM from the program is just ignored.
RUN_TESTSUITE = no

