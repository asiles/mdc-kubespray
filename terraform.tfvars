#===============================================================================
# VMware vSphere configuration
#===============================================================================

# vCenter IP or FQDN #
vsphere_vcenter = "vcsa-01.mediacloud.lab"

# vSphere username used to deploy the infrastructure #
vsphere_user = "administrator@lab.local"

# Skip the verification of the vCenter SSL certificate (true/false) #
vsphere_unverified_ssl = "true"

# vSphere datacenter name where the infrastructure will be deployed #
vsphere_datacenter = "MEDIACLOUD.LAB"

# vSphere cluster name where the infrastructure will be deployed #
vsphere_drs_cluster = "CLUS-MDCLAB-01"

# vSphere resource pool name that will be created to deploy the virtual machines #
vsphere_resource_pool = "JK_VSHPERE_RESOURCE_POOL"

# Enable anti-affinity between the Kubernetes master virtual machines. This feature require a vSphere enterprise plus license #
vsphere_enable_anti_affinity = "false"

# vSphere username used by the vSphere cloud provider #
vsphere_vcp_user = "k8s-vcp@lab.local"

# vSphere datastore name where the Kubernetes persistant volumes will be created #
vsphere_vcp_datastore = "shared-sata-01"

#===============================================================================
# Global virtual machines parameters
#===============================================================================

# Username used to SSH to the virtual machines #
vm_user = "mdcloud"

# The linux distribution used by the virtual machines (ubuntu/debian/centos/rhel) #
vm_distro = "ubuntu"

# The prefix to add to the names of the virtual machines #
vm_name_prefix = "JK_VM_NAME_PREFIX"

# The name of the vSphere virtual machine and template folder that will be created to store the virtual machines #
vm_folder = "2. VMs/kubernetes/JK_VM_FOLDER"

# The datastore name used to store the files of the virtual machines #
vm_datastore = "shared-sata-01"

# The vSphere network name used by the virtual machines #
vm_network = "WL-Net01"

#vm_network = "vxw-dvs-366-virtualwire-2-sid-5001-TEST-LS"

# The netmask used to configure the network cards of the virtual machines (example: 24)#
vm_netmask = "24"

# The network gateway used by the virtual machines #
vm_gateway = "10.0.1.1"
#vm_gateway = "10.10.1.1"

# The DNS server used by the virtual machines #
vm_dns = "192.168.2.10"

# The domain name used by the virtual machines #
vm_domain = "mediacloud.lab"

# The vSphere template the virtual machine are based on #
vm_template = "templates/PlantillaUbuntuK8s"

# Use linked clone (true/false)
vm_linked_clone = "false"

# Kubernetes Cluster Name#
cluster_name = "JK_CLUSTER_NAME"


#===============================================================================
# Master node virtual machines parameters
#===============================================================================

# The number of vCPU allocated to the master virtual machines #
vm_master_cpu = "2"

# The amount of RAM allocated to the master virtual machines #
vm_master_ram = "2048"

# The IP addresses of the master virtual machines. You need to define 3 IPs for the masters #
vm_master_ips = {
  "0" = "JK_VM_MASTER_IPS-0"
  "1" = "JK_VM_MASTER_IPS-1"
  "2" = "JK_VM_MASTER_IPS-2"
}

#===============================================================================
# Worker node virtual machines parameters
#===============================================================================

# The number of vCPU allocated to the worker virtual machines #
vm_worker_cpu = "2"

# The amount of RAM allocated to the worker virtual machines #
vm_worker_ram = "2048"

# The IP addresses of the master virtual machines. You need to define 1 IP or more for the workers #
vm_worker_ips = {
  "0" = "JK_VM_WORKER_IPS-0"
  "1" = "JK_VM_WORKER_IPS-1"
  "2" = "JK_VM_WORKER_IPS-2"
}

#===============================================================================
# HAProxy load balancer virtual machine parameters
#===============================================================================

# The number of vCPU allocated to the load balancer virtual machine #
vm_haproxy_cpu = "1"

# The amount of RAM allocated to the load balancer virtual machine #
vm_haproxy_ram = "1024"

# The IP address of the load balancer floating VIP #
vm_haproxy_vip = "JK_VM_HAPROXY_VIP"

# The IP address of the load balancer virtual machine #
vm_haproxy_ips = {
  "0" = "JK_VM_HAPROXY_IPS-0"
  "1" = "JK_VM_HAPROXY_IPS-1"
}

#===============================================================================
# Redhat subscription parameters
#===============================================================================

# If you use RHEL 7 as a base distro, you need to specify your subscription account #
rh_username = ""
rh_password = ""

#===============================================================================
# Kubernetes parameters
#===============================================================================

# The Git repository to clone Kubespray from #
k8s_kubespray_url = "https://github.com/kubernetes-sigs/kubespray.git"

# The version of Kubespray that will be used to deploy Kubernetes #
k8s_kubespray_version = "v2.8.2"

# The Kubernetes version that will be deployed #
k8s_version = "v1.12.5"

# The overlay network plugin used by the Kubernetes cluster #
k8s_network_plugin = "calico"

# If you use Weavenet as an overlay network, you need to specify an encryption password #
k8s_weave_encryption_password = ""

# The DNS service used by the Kubernetes cluster (coredns/kubedns) #
k8s_dns_mode = "coredns"


vm_password = "JK_VM_PASSWORD"
vm_privilege_password ="JK_VM_PRIVILEGE_PASSWORD"
vsphere_password = "JK_VSPHERE_PASSWORD"
vsphere_vcp_password = "JK_VSPHERE_VCP_PASSWORD"