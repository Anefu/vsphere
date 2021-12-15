module "vpshere" {
  source               = "./modules/vsphere"
  vsphere_vcenter      = var.vsphere_vcenter
  vsphere_user         = var.vsphere_user
  vsphere_password     = var.vsphere_password
  datacenter_name      = var.datacenter_name
  datastore_name       = var.datastore_name
  compute_cluster_name = var.compute_cluster_name
  vm_name              = var.vm_name
  num_cpus             = var.num_cpus
  memory               = var.memory
  guest_id             = var.guest_id
  public_network       = var.public_network
  disk_size            = var.disk_size
  disk_label           = var.disk_label
}

module "rancher" {
  source                     = "./modules/rancher-common"
  vsphere_vcenter            = var.vsphere_vcenter
  vsphere_user               = var.vsphere_user
  vsphere_password           = var.vsphere_password
  datacenter_name            = var.datacenter_name
  public_network             = var.public_network
  rancher_kubernetes_version = var.rancher_kubernetes_version
  cert_manager_version       = var.cert_manager_version
  rancher_version            = var.rancher_version
  rancher_server_dns         = var.rancher_server_dns
  admin_password             = var.rancher_admin_password
  workload_cluster_name      = var.cluster_name
}