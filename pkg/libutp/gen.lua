cflags{
	'-std=c99', '-Wall', '-Wpedantic',
	'-I $srcdir',
}

pkg.hdrs = copy('$outdir/include/libutp', '$srcdir', {'utp.h'})

lib('libutp.a', {'utp.c', 'utp_utils.c'})

fetch 'git'
