output "vm_ipv4" {
    value = vsphere_virtual_machine.standalone.default_ip_address
}