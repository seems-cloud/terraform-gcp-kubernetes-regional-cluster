project_id = "molten-infusion-277321"

region = "us-central1"

prefix = "a" # must be [a-z]

##################
# General

terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4Nbhi7SDAXyamRH/tQJjtSGMgM+slUS/XYppjp5H9Qtrarhdy0uPOth+f792pFFPgAXR37v9ACjU/N1iq3a2++DUyDEdyOsjzCr1GOo6DIjVX5NwF3roTIXnB7P/n92KcEeOw0U9PnU9WUmXawcrCGiHg9tgHk2APzGTvft1SXa7l9mmkee/y6NL7OLRgKOa4NgL8EmBnSQBkXafzYTOZgtGf8/4zKp0NWI7sG+zw0TFOsUeUk4T+XJmK63KXfdtCDElZKHz5wjyAnt4VkMNRSfqSdYYYPZ5eoQwrlaO8gl0mTZT6auoaOOkxvJzX4RGRnAWZnXuMCVcACtD62317+sOXTAjvvcAiOeBJw0tduWcK39aulItvQstP3nA3bXGYjRcQbCX3ff7uL5TcUSw4lIyD0qSaGU2foD9BEsT6EeLR9NsSUW4kvBZdq7AvCf/8mc2n/oz0kh/tx+MDyS8IoVyTVLJ/sttFhWOjzWcBq4z5svbamriRdf3Yp4OgN1s=
EndOfMessage

##################
# Networking

network = "network"

##################
# Cluster

gke_preemptible = true
gke_name = "gke-cluster"
gke_tags = [
  "gke",
  "all"]
gke_region = "us-central1"
gke_zones = [
  "us-central1-a",
  "us-central1-b",
  "us-central1-c",
  "us-central1-f"
]
gke_network_cidr = "10.0.10.0/24"
gke_machine_type = "n1-standard-2"
gke_min_master_version = "1.16.13-gke.1"
gke_init_nodes = 1

##################
# Cluster Pool A

gke_a_pool_preemptible = true
gke_a_pool_name = "a-pool"
gke_a_pool_tags = [
  "gke",
  "all"]
gke_a_pool_region = "us-central1"
gke_a_pool_zones = [
  "us-central1-a",
  "us-central1-b",
  "us-central1-c",
  "us-central1-f"
]
gke_a_pool_machine_type = "n1-standard-2"
gke_a_pool_network_cidr = "10.0.11.0/24"
gke_a_pool_init_nodes = 1
gke_a_pool_min_nodes = 1
gke_a_pool_max_nodes = 3

##################
# Bastion

bastion_name = "bastion"
bastion_tags = [
  "bastion"]
bastion_region = "us-central1"
bastion_zone = "us-central1-a"
bastion_machine_type = "n1-standard-1"
bastion_image = "ubuntu-os-cloud/ubuntu-1804-lts"
bastion_network_cidr = "10.0.1.0/24"
