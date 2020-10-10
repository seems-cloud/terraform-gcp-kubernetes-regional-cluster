project_id = "molten-infusion-277321"

region = "us-central1"

prefix = "a" # must be [a-z]

##################
# General

terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCgJYQaQJUSwrDVQoCyOBMHaOM0bFg6b5SQN+qulnG2J3AEg1uVOE+NTfCDERUY2pvaMARL1iM6XzxhBTqy2mC69FftWwoGTCu8PBvuAX+meI/I+9BjLf389ev72OgGUTEoBcvC82U/iaBvuK7cdOGFx0yLKGA/sP34Ax6xkqIQxKaskzcWjCMmNt2nxAd0nQpVkJzjBx/neaK9jWsZB1OYn1+i9nF6Hq4o0VESvvSzobScuw29IJV0Fji7IL71pIlFLf6CzHl95sXo8nzqvJ6qoWJzvaJ1tN1SSQjKrNBR5/5rx2P5hh81nfR+fHaIeDN+r8TSgodrREy0BvuoLlTV1KzIUTaIv6IvbxLmCdegq+TgsKDGFxWCAlctRZTZ8gRd6OwBUPeQllIaP+mAJs3IZdSyeI0F0Wmv7iay+XXjGe3QwutSrWSPXDKdcXhwBW8Y47suh5z46pFVYYMACSgQNVO6/Bunmnh8MdSzozFTR91K1qpdOyO2+41v7LUcO10=
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
gke_min_master_version = "1.16.13-gke.401"
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
