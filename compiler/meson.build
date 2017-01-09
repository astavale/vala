valac_sources = [
	'valacompiler.vala'
]

valac_name = 'valac@0@'.format(vala_version_suffix)

executable(
	valac_name,
	valac_sources,
	dependencies: [glib, gobject, valacore, valagee, valaccode, valacodegen],
	install: true,
	include_directories: include_directories('.', meson.build_root()),
	vala_args: ['--pkg=config', '--vapidir=' + join_paths(meson.source_root(), 'vapi')]
)
