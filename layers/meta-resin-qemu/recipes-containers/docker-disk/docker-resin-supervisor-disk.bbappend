python () {
    if d.getVar("MACHINE", True) == 'docker-x86-64':
        bb.build.deltask('do_compile', d)
        bb.build.deltask('do_deploy', d)
}
