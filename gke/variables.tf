variable "project_id" {
  type = string
}

variable "network_name" {
  type = string
}

######################
# Cluster

variable "gke_preemptible" {
  type = bool
}

variable "gke_name" {
  type = string
}

variable "gke_tags" {
  type = list(string)
}

variable "gke_region" {
  type = string
}

variable "gke_zones" {
  type = list(string)
}

variable "gke_init_nodes" {
  type = number
}

variable "gke_network_cidr" {
  type = string
}

variable "gke_subnetwork_name" {
  type = string
}

variable "gke_min_master_version" {
  type = string
}

variable "gke_machine_type" {
  type = string
}

######################
# Cluster Pool 1

variable "gke_a_pool_preemptible" {
  type = bool
}
variable "gke_a_pool_name" {
  type = string
}

variable "gke_a_pool_tags" {
  type = list(string)
}

variable "gke_a_pool_region" {
  type = string
}

variable "gke_a_pool_zones" {
  type = list(string)
}

variable "gke_a_pool_machine_type" {
  type = string
}

variable "gke_a_pool_init_nodes" {
  type = number
}

variable "gke_a_pool_mix_nodes_nodes" {
  type = number
}

variable "gke_a_pool_max_nodes_nodes" {
  type = number
}

variable "dependencies" {
  type = list(string)
}
