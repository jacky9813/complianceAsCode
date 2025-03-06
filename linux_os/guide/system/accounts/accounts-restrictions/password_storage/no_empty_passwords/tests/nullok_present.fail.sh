#!/bin/bash
# platform = Oracle Linux 7,Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ubuntu
# packages = pam

{{% if 'ubuntu' in product %}}
config_file=/usr/share/pam-configs/tmp_unix

cat << EOF > "$config_file"
Name: Unix authentication
Default: yes
Priority: 256
Auth-Type: Primary
Auth:
	[success=end default=ignore]	pam_unix.so nullok try_first_pass
Auth-Initial:
	[success=end default=ignore]	pam_unix.so nullok
Account-Type: Primary
Account:
	[success=end new_authtok_reqd=done default=ignore]	pam_unix.so
Account-Initial:
	[success=end new_authtok_reqd=done default=ignore]	pam_unix.so
Session-Type: Additional
Session:
	required	pam_unix.so
Session-Initial:
	required	pam_unix.so
Password-Type: Primary
Password:
	[success=end default=ignore]	pam_unix.so obscure use_authtok try_first_pass yescrypt nullok
Password-Initial:
	[success=end default=ignore]	pam_unix.so obscure yescrypt nullok
EOF

DEBIAN_FRONTEND=noninteractive pam-auth-update --enable tmp_unix

rm "$config_file"
{{% else %}}
SYSTEM_AUTH_FILE="/etc/pam.d/system-auth"

if ! $(grep -q "^[^#].*pam_unix\.so.*nullok" $SYSTEM_AUTH_FILE); then
    sed -i --follow-symlinks 's/\(^[^#].*pam_unix\.so.*\)\s\(try_first_pass.*\)/\1nullok \2/' $SYSTEM_AUTH_FILE
fi
{{% endif %}}

