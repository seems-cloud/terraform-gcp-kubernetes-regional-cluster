variable "project_id" {
  type = string
}

# Network
variable "aaa_vpc_aaa" {
  type = string
}

# GKE Cluster
variable "aaa_gke_aaa-preemptible" {
  type = bool
}

variable "aaa_gke_aaa-name" {
  type = string
}

variable "aaa_gke_aaa-authorized" {
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

variable "aaa_gke_aaa-init" {
  type = number
}

variable "aaa_gke_aaa-subnetwork_name" {
  type = string
}

variable "aaa_gke_aaa-min_version" {
  type = string
}

# GKE Pool
variable "aaa_gke_pool_aaa-preemptible" {
  type = bool
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

variable "aaa_gke_pool_aaa-init" {
  type = number
}

variable "aaa_gke_pool_aaa-min" {
  type = number
}

variable "aaa_gke_pool_aaa-max" {
  type = number
}

# Dependencies
variable "dependencies" {
  type = list(string)
}
