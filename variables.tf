# Configuration
variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "prefix" {
  type = string
}

# Keys
variable "terraform_user" {
  type = string
}

variable "terraform_ssh_key_pub" {
  type = string
}

# Network
variable "aaa_vpc_aaa" {
  type = string
}

# GKE Clusters
variable "aaa_gke_aaa-preemptible" {
  type = bool
}

variable "aaa_gke_aaa-name" {
  type = string
}

variable "aaa_gke_aaa-tags" {
  type = list(string)
}

variable "aaa_gke_aaa-region" {
  type = string
}

variable "aaa_gke_aaa-zones" {
  type = list(string)
}

variable "aaa_gke_aaa-cidr" {
  type = string
}

variable "aaa_gke_aaa-type" {
  type = string
}

variable "aaa_gke_aaa-min_version" {
  type = string
}

variable "aaa_gke_aaa-init" {
  type = number
}

# GKE Pools
variable "aaa_gke_pool_aaa-preemptible" {
  type = string
}

variable "aaa_gke_pool_aaa-name" {
  type = string
}

variable "aaa_gke_pool_aaa-tags" {
  type = list(string)
}

variable "aaa_gke_pool_aaa-region" {
  type = string
}

variable "aaa_gke_pool_aaa-zones" {
  type = list(string)
}

variable "aaa_gke_pool_aaa-type" {
  type = string
}

variable "aaa_gke_pool_aaa-cidr" {
  type = string
}

variable "aaa_gke_pool_aaa-init" {
  type = number
}

variable "aaa_gke_pool_aaa-min" {
  type = number
}

variable "aaa_gke_pool_aaa-max" {
  type = number
}

# Bastion
variable "aaa_instance_aaa-name" {
  type = string
}

variable "aaa_instance_aaa-tags" {
  type = list(string)
}

variable "aaa_instance_aaa-region" {
  type = string
}

variable "aaa_instance_aaa-zone" {
  type = string
}

variable "aaa_instance_aaa-image" {
  type = string
}

variable "aaa_instance_aaa-cidr" {
  type = string
}

variable "aaa_instance_aaa-type" {
  type = string
}
