# platform = Ubuntu 24.04
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
find -L /var/log/ -maxdepth 1 ! -user root ! -user syslog -type f -regextype posix-extended -regex '.*cloud-init.log(.*)' -exec chown syslog {} \;
