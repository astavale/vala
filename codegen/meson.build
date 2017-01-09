valacodegen_sources = [
	'valaccodearraymodule.vala',
	'valaccodeassignmentmodule.vala',
	'valaccodeattribute.vala',
	'valaccodebasemodule.vala',
	'valaccodecompiler.vala',
	'valaccodecontrolflowmodule.vala',
	'valaccodedelegatemodule.vala',
	'valaccodememberaccessmodule.vala',
	'valaccodemethodcallmodule.vala',
	'valaccodemethodmodule.vala',
	'valaccodestructmodule.vala',
	'valaclassregisterfunction.vala',
	'valactype.vala',
	'valaenumregisterfunction.vala',
	'valagasyncmodule.vala',
	'valagdbusclientmodule.vala',
	'valagdbusmodule.vala',
	'valagdbusservermodule.vala',
	'valagerrormodule.vala',
	'valagirwriter.vala',
	'valagobjectmodule.vala',
	'valagsignalmodule.vala',
	'valagtkmodule.vala',
	'valagtypemodule.vala',
	'valagvariantmodule.vala',
	'valainterfaceregisterfunction.vala',
	'valastructregisterfunction.vala',
	'valatyperegisterfunction.vala'
]

valacodegen_lib = shared_library(
	'vala@0@'.format(vala_version_suffix),
	valacodegen_sources,
	dependencies: [glib, gobject, valagee, valaccode, valacore],
	soversion: '0.0.0',
	install: true,
	#vala_vapi: 'valacodegen.vapi',
	vala_header: 'valacodegen.h'
)

valacodegen = declare_dependency(link_with: [valacodegen_lib], include_directories: include_directories('.'))

install_headers('valacodegen.h', subdir: 'vala@0@'.format(vala_version_suffix))
