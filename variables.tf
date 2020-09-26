variable "region" {
  type = string
}

variable "prefix" {
  type = string
}

######################
# General

variable "terraform_user" {
  type = string
}

variable "terraform_ssh_key_pub" {
  type = string
}

######################
# Network

variable "network" {
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

variable "gke_min_master_version" {
  type = string
}

variable "gke_machine_type" {
  type = string
}

######################
# Cluster Pool 1

variable "gke_a_pool_preemptible" {
  type = string
}

variable "gke_a_pool_name" {
  type = string
}

variable "gke_a_pool_network_cidr" {
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

variable "gke_a_pool_min_nodes" {
  type = number
}

variable "gke_a_pool_max_nodes" {
  type = number
}

########################
# Bastion

variable "bastion_name" {
  type = string
}

variable "bastion_tags" {
  type = list(string)
}

variable "bastion_region" {
  type = string
}

variable "bastion_zone" {
  type = string
}

variable "bastion_image" {
  type = string
}

variable "bastion_network_cidr" {
  type = string
}

variable "bastion_machine_type" {
  type = string
}