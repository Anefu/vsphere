variable "datacenter_name" {
    type = string
    description = "Name of the vSphere datacenter"
}

variable "datastore_name" {
    type = string
    description = "Name of the datastore"
}

variable "allow_unverified_ssl" {
  type = bool
  description = "Whether to allow unverified ssl connection to the vCenter server"
  default = false
}

variable "compute_cluster_name" {
  type = string 
  description = "Name of the compute cluster"
}

variable "disk_label" {
  type = string
  description = "Label of the disk to attach to the VM"
}

variable "disk_size" {
  type = number
  description = "Size of the disk to attach to the VM"
}


variable "vsphere_vcenter" {
    type = string
    description = "IP address of the vCenter Server"
}

variable "vsphere_user" {
  type = string
  description = "Email or customer ID of vCenter account"
}

variable "vsphere_password" {
  type = string
  description = "vCenter account password"
}

variable "public_network" {
  type = string
  description = "Name of public network in the datacenter"
}

variable "private_network" {
    type = string
    description = "Name of private network in the datacenter"
}

variable "vm_name" {
  type = string
  description = "Name to attach to the virtual machine"
}

variable "num_cpus" {
  type = number
  description = "Number of vCPUs to use for the VM"
}

variable "memory" {
  type = number
  description = "Amount of memory to allocate to the VM"
}

variable "guest_id" {
  type = string
  description = "Guest ID to use for the VM. See: https://developer.vmware.com/apis/358/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html"
  default = "other3xLinux64Guest"
}

