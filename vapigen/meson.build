vapigen_sources = [
	'valagidlparser.vala',
	'valavapigen.vala'
]

vapigen_name = 'vapigen@0@'.format(vala_version_suffix)

executable(
	vapigen_name,
	vapigen_sources,
	dependencies: [glib, gobject, valagee, valacore, gidl],
	install: true,
	include_directories: include_directories(meson.build_root()),
	vala_args: [
		'--pkg=config', '--vapidir=' + join_paths(meson.source_root(), 'vapi'),
		'--pkg=gidl', '--vapidir=' + join_paths(meson.source_root(), 'gobject-introspection')
	]
)

vapicheck_sources = [
	'valavapicheck.vala'
]

vapicheck_name = 'vapicheck@0@'.format(vala_version_suffix)

executable(
	vapicheck_name,
	vapicheck_sources,
	dependencies: [glib, gobject, valagee, valacore, gidl],
	install: true,
	vala_args: ['--pkg=gidl', '--vapidir=' + join_paths(meson.source_root(), 'gobject-introspection')]
)

subdir('vala-gen-introspect')
