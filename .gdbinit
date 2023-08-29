define xxd
  dump binary memory dump.bin $arg0 $arg0+$arg1
  shell xxd -g 1 dump.bin
end

set args -c /etc/suricata/suricata.yaml -v --dpdk
b main
command
set scheduler-locking step
delete 1
c
end
