resource "rke_cluster" "cluster" {
  cluster_name = var.workload_cluster_name
  kubernetes_version = var.workload_kubernetes_version
  cloud_provider {
      name = "vsphere"
      vsphere_cloud_provider {
        virtual_center {
                datacenters = var.datacenter_name
                name = var.vsphere_vcenter
                password = var.vsphere_password
                user = var.vsphere_user
        }
        workspace {
          datacenter = var.datacenter_name
          server = var.vsphere_vcenter
        }
        network {
          public_network = var.public_network
        }
      }
  }
}