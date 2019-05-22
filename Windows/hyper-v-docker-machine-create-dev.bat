docker-machine create --driver=hyperv --hyperv-disk-size=51200 --hyperv-memory=2048 --hyperv-cpu-count=2 --hyperv-disable-dynamic-memory=false --hyperv-boot2docker-url="https://raw.githubusercontent.com/Allen-Wei/docker-machine/master/boot2docker.iso" dev

REM --hyperv-boot2docker-url: The URL of the boot2docker ISO.
REM --hyperv-virtual-switch: Name of the virtual switch to use.
REM --hyperv-disk-size: Size of disk for the host in MB.
REM --hyperv-memory: Size of memory for the host in MB.
REM --hyperv-cpu-count: Number of CPUs for the host.
REM --hyperv-static-macaddress: Hyper-V network adapter’s static MAC address.
REM --hyperv-vlan-id: Hyper-V network adapter’s VLAN ID if any.
REM --hyperv-disable-dynamic-memory: Disable dynamic memory management.