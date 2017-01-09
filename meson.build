project('Vala', 'c', 'vala', version: '0.35.3')

vala_version = meson.project_version()
vala_version_suffix = '-0.36'


conf = configuration_data()
conf.set('PACKAGE', '"vala"')
conf.set('PACKAGE_BUGREPORT', '"https://bugzilla.gnome.org/browse.cgi?product=vala"')
conf.set_quoted('PACKAGE_DATADIR', join_paths(get_option('prefix'), get_option('datadir'), 'vala@0@'.format(vala_version_suffix)))
conf.set('PACKAGE_NAME', '"vala"')
conf.set('PACKAGE_STRING', '"vala @0@"'.format(vala_version))
conf.set('PACKAGE_SUFFIX', '"@0@"'.format(vala_version_suffix))
conf.set('PACKAGE_TARNAME', '"vala"')
conf.set('PACKAGE_URL', '"https://wiki.gnome.org/Projects/Vala"')
conf.set_quoted('PACKAGE_VERSION', vala_version)
conf.set_quoted('VERSION', vala_version)
conf.set_quoted('BUILD_VERSION', vala_version)
configure_file(input: 'config.h.meson', output: 'config.h', configuration: conf)
configure_file(input: 'version.h.meson', output: 'version.h', configuration: conf)


pkgconf = configuration_data()
pkgconf.set('prefix', get_option('prefix'))
pkgconf.set('exec_prefix', '${prefix}')
pkgconf.set('libdir', '${prefix}/@0@'.format(get_option('libdir')))
pkgconf.set('bindir', '${exec_prefix}/@0@'.format(get_option('bindir')))
pkgconf.set('datarootdir', '${prefix}/@0@'.format(get_option('datadir')))
pkgconf.set('datadir', '${datarootdir}')
pkgconf.set('includedir', '${prefix}/@0@'.format(get_option('includedir')))
pkgconf.set('PACKAGE_SUFFIX', vala_version_suffix)
pkgconf.set('VERSION', vala_version)
pkg_install_dir = '@0@/pkgconfig'.format(get_option('libdir'))

configure_file(
	input: 'libvala.pc.in',
	output: 'libvala@0@.pc'.format(vala_version_suffix),
	configuration: pkgconf,
	install_dir: pkg_install_dir
)


add_global_arguments(['-Wno-deprecated-declarations',
	'-Wno-discarded-qualifiers',
	'-Wno-incompatible-pointer-types',
	'-Wno-unused'], language: 'c')
add_global_arguments(['--disable-version-header',
	'--hide-internal'], language: 'vala')


glib_version_required = '2.32.0'

glib = dependency('glib-2.0', version: '>= @0@'.format(glib_version_required))
gobject = dependency('gobject-2.0', version: '>= @0@'.format(glib_version_required))
gmodule = dependency('gmodule-2.0', version: '>= @0@'.format(glib_version_required))


subdir('gobject-introspection')
subdir('gee')
subdir('vala')
subdir('ccode')
subdir('codegen')
subdir('compiler')
subdir('vapigen')

#add_install_script('unversioned-install.sh')
