configure_file(
	input: 'vala-gen-introspect.in',
	output: 'vala-gen-introspect@0@'.format(vala_version_suffix),
	configuration: pkgconf,
	install_dir: join_paths(get_option('prefix'), get_option('bindir'))
)
