################################################################################
#
# vlc
#
################################################################################

VLC_VERSION = 2.1.2
VLC_SITE = http://download.videolan.org/pub/videolan/vlc/$(VLC_VERSION)
VLC_SOURCE = vlc-$(VLC_VERSION).tar.xz
VLC_LICENSE = GPLv2+ LGPLv2.1+
VLC_LICENSE_FILES = COPYING COPYING.LIB
VLC_DEPENDENCIES = host-pkgconf

VLC_CONF_OPT += \
	--disable-a52 \
	--disable-shout \
	--disable-mod \
	--disable-twolame \
	--disable-dca \
	--disable-dirac \
	--disable-schroedinger \
	--disable-quicksync \
	--disable-fluidsynth \
	--disable-zvbi \
	--disable-libass \
	--disable-kate \
	--disable-caca \
	--disable-jack \
	--disable-samplerate \
	--disable-chromaprint \
	--disable-goom \
	--disable-projectm \
	--disable-vsxu \
	--disable-udev \
	--disable-mtp

ifeq ($(BR2_PACKAGE_ALSA_LIB),y)
VLC_CONF_OPT += --enable-alsa
VLC_DEPENDENCIES += alsa-lib
else
VLC_CONF_OPT += --disable-alsa
endif

ifeq ($(BR2_PACKAGE_AVAHI),y)
VLC_CONF_OPT += --enable-bonjour
VLC_DEPENDENCIES += avahi
else
VLC_CONF_OPT += --disable-bonjour
endif

ifeq ($(BR2_PACKAGE_DBUS),y)
VLC_CONF_OPT += --enable-dbus
VLC_DEPENDENCIES += dbus
else
VLC_CONF_OPT += --disable-dbus
endif

ifeq ($(BR2_PACKAGE_DIRECTFB),y)
VLC_CONF_OPT += --enable-directfb
VLC_DEPENDENCIES += directfb
else
VLC_CONF_OPT += --disable-directfb
endif

ifeq ($(BR2_PACKAGE_FAAD2),y)
VLC_CONF_OPT += --enable-faad
VLC_DEPENDENCIES += faad2
else
VLC_CONF_OPT += --disable-faad
endif

ifeq ($(BR2_PACKAGE_FFMPEG),y)
VLC_CONF_OPT += --enable-avcodec
VLC_DEPENDENCIES += ffmpeg
else
VLC_CONF_OPT += --disable-avcodec
endif

ifeq ($(BR2_PACKAGE_FFMPEG_POSTPROC),y)
VLC_CONF_OPT += --enable-postproc
else
VLC_CONF_OPT += --disable-postproc
endif

ifeq ($(BR2_PACKAGE_FFMPEG_SWSCALE),y)
VLC_CONF_OPT += --enable-swscale
else
VLC_CONF_OPT += --disable-swscale
endif

ifeq ($(BR2_PACKAGE_FLAC),y)
VLC_CONF_OPT += --enable-flac
VLC_DEPENDENCIES += flac
else
VLC_CONF_OPT += --disable-flac
endif

ifeq ($(BR2_PACKAGE_OPUS),y)
VLC_CONF_OPT += --enable-opus
VLC_DEPENDENCIES += opus
else
VLC_CONF_OPT += --disable-opus
endif

ifeq ($(BR2_PACKAGE_LIBGCRYPT),y)
VLC_CONF_OPT += --enable-libgcrypt
VLC_DEPENDENCIES += libgcrypt
else
VLC_CONF_OPT += --disable-libgcrypt
endif

ifeq ($(BR2_PACKAGE_LIBMAD),y)
VLC_CONF_OPT += --enable-mad
VLC_DEPENDENCIES += libmad
else
VLC_CONF_OPT += --disable-mad
endif

ifeq ($(BR2_PACKAGE_LIBMPEG2),y)
VLC_CONF_OPT += --enable-libmpeg2
VLC_DEPENDENCIES += libmpeg2
else
VLC_CONF_OPT += --disable-libmpeg2
endif

ifeq ($(BR2_PACKAGE_LIBPNG),y)
VLC_CONF_OPT += --enable-png
VLC_DEPENDENCIES += libpng
else
VLC_CONF_OPT += --disable-png
endif

ifeq ($(BR2_PACKAGE_LIBSVG),y)
VLC_CONF_OPT += --enable-svg
VLC_DEPENDENCIES += libsvg
else
VLC_CONF_OPT += --disable-svg
endif

ifeq ($(BR2_PACKAGE_LIBTHEORA),y)
VLC_CONF_OPT += --enable-theora
VLC_DEPENDENCIES += theora
else
VLC_CONF_OPT += --disable-theora
endif

ifeq ($(BR2_PACKAGE_LIBUPNP),y)
VLC_CONF_OPT += --enable-upnp
VLC_DEPENDENCIES += libupnp
else
VLC_CONF_OPT += --disable-upnp
endif

ifeq ($(BR2_PACKAGE_LIBVORBIS),y)
VLC_CONF_OPT += --enable-vorbis
VLC_DEPENDENCIES += libvorbis
else
VLC_CONF_OPT += --disable-vorbis
endif

ifeq ($(BR2_PACKAGE_LIBV4L),y)
VLC_CONF_OPT += --enable-v4l2
VLC_DEPENDENCIES += libv4l
else
VLC_CONF_OPT += --disable-v4l2
endif

ifeq ($(BR2_PACKAGE_LIBXCB),y)
VLC_CONF_OPT += --enable-xcb
VLC_DEPENDENCIES += libxcb
else
VLC_CONF_OPT += --disable-xcb
endif

ifeq ($(BR2_PACKAGE_LIBXML2),y)
VLC_CONF_OPT += --enable-libxml2
VLC_DEPENDENCIES += libxml2
else
VLC_CONF_OPT += --disable-libxml2
endif

ifeq ($(BR2_PACKAGE_LIVE555),y)
VLC_CONF_OPT += --enable-live555
VLC_DEPENDENCIES += live555
else
VLC_CONF_OPT += --disable-live555
endif

ifeq ($(BR2_PACKAGE_LUA),y)
VLC_CONF_OPT += --enable-lua
VLC_DEPENDENCIES += lua
else
VLC_CONF_OPT += --disable-lua
endif

ifeq ($(BR2_PACKAGE_QT),y)
VLC_CONF_OPT += --enable-qt
VLC_DEPENDENCIES += qt
else
VLC_CONF_OPT += --disable-qt
endif

ifeq ($(BR2_PACKAGE_SDL),y)
VLC_CONF_OPT += --enable-sdl
VLC_DEPENDENCIES += sdl
else
VLC_CONF_OPT += --disable-sdl
endif

ifeq ($(BR2_PACKAGE_SDL_IMAGE),y)
VLC_CONF_OPT += --enable-sdl-image
VLC_DEPENDENCIES += sdl-image
else
VLC_CONF_OPT += --disable-sdl-image
endif

ifeq ($(BR2_PACKAGE_SPEEX),y)
VLC_CONF_OPT += --enable-speex
VLC_DEPENDENCIES += speex
else
VLC_CONF_OPT += --disable-speex
endif

ifeq ($(BR2_PACKAGE_TREMOR),y)
VLC_CONF_OPT += --enable-tremor
VLC_DEPENDENCIES += tremor
else
VLC_CONF_OPT += --disable-tremor
endif

ifeq ($(BR2_PACKAGE_XLIB_LIBX11),y)
VLC_CONF_OPT += --with-x
VLC_DEPENDENCIES += xlib_libX11
else
VLC_CONF_OPT += --without-x
endif

$(eval $(autotools-package))