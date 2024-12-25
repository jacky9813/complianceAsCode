# platform = multi_platform_fedora,multi_platform_ol,multi_platform_rhel,multi_platform_sle,multi_platform_ubuntu

useradd --user-group user_test

TESTDIR="/usr/lib/dir/"

mkdir -p "${TESTDIR}"
touch "${TESTDIR}"/test_me
chgrp user_test "${TESTDIR}"/test_me
