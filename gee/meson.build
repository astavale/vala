valagee_sources = [
	'arraylist.vala',
	'collection.vala',
	'hashmap.vala',
	'hashset.vala',
	'iterable.vala',
	'iterator.vala',
	'list.vala',
	'mapiterator.vala',
	'map.vala',
	'set.vala'
]

valagee_lib = static_library(
	'valagee',
	valagee_sources,
	dependencies: [glib, gobject],
	install: false,
	vala_vapi: 'valagee.vapi',
	vala_header: 'valagee.h'
)

valagee = declare_dependency(link_with: [valagee_lib], include_directories: include_directories('.'))

install_headers('valagee.h', subdir: 'vala@0@'.format(vala_version_suffix))
