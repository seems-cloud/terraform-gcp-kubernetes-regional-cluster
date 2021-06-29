locals {
  random = "${var.prefix}${random_string.random.result}"

  # Network
  aaa_vpc_aaa = "${local.random}-${var.aaa_vpc_aaa}"

  # Instance
  aaa_instance_aaa-name = "${local.random}-${var.aaa_instance_aaa-name}"

  # GKE Cluster
  aaa_gke_aaa-name = "${local.random}-${var.aaa_gke_aaa-name}"

  # GKE Pool
  aaa_gke_pool_aaa-name = var.aaa_gke_pool_aaa-name
}