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

# Variables for rancher common module

# Required
variable "public_ip" {
  type        = string
  description = "Public IP of compute node for Rancher cluster"
}

variable "private_ip" {
  type        = string
  description = "Internal IP of compute node for Rancher cluster"
  default     = ""
}

# Required
variable "ssh_username" {
  type        = string
  description = "Username used for SSH access to the Rancher server cluster node"
}

# Required
variable "ssh_private_key_pem" {
  type        = string
  description = "Private key used for SSH access to the Rancher server cluster node"
}

variable "rancher_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for Rancher server cluster"
  default     = "v1.21.4+k3s1"
}

variable "cert_manager_version" {
  type        = string
  description = "Version of cert-manager to install alongside Rancher (format: 0.0.0)"
  default     = "1.5.3"
}

variable "rancher_version" {
  type        = string
  description = "Rancher server version (format v0.0.0)"
  default     = "v2.6.2"
}

# Required
variable "rancher_server_dns" {
  type        = string
  description = "DNS host name of the Rancher server"
}

# Required
variable "admin_password" {
  type        = string
  description = "Admin password to use for Rancher server bootstrap"
}

variable "workload_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for managed workload cluster"
  default     = "v1.20.6-rancher1-1"
}

# Required
variable "workload_cluster_name" {
  type        = string
  description = "Name for created custom workload cluster"
}

variable "windows_prefered_cluster" {
  type        = bool
  description = "Activate windows supports for the custom workload cluster"
  default     = false
}
