locals {
  random = "${var.prefix}${random_string.random.result}"

  network = "${local.random}-${var.network}"
  gke_cluster_name = "${local.random}-${var.gke_name}"
  gke_a_pool_name = "${local.random}-${var.gke_a_pool_name}"
  bastion_name = "${local.random}-${var.bastion_name}"
}