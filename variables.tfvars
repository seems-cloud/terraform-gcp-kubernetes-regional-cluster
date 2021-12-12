# Configuration
project_id = "molten-infusion-277321"
region = "us-central1"
prefix = "a" # must be [a-z]

# Keys
terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDH7GltxAbuv18fNiak6OL06Pg+B+MvDfDj8bXYauy2CdsM5g0A6wLLGrnqTvlaEZ+h0aVDFPwi9+Htkqp8uEC0E47+MckDt92ZhXkEozYsDU/eUkI9BjxX3mSuRJ36WizG5Fe/8h2/kGeQsBIgdHMepHWVw5lvsHUsVJDItigxJcknRWWfjus/tlBP+i9yDHilPhZXQWneW+sa2IW5h3QT64A8QJWkyUILlzkYxKqnhHm93DV2b5V4ofIvvBzpjolSDGjDzMyxIzkCOyuSGxVQgdgq45VhpOWywkf50SL5jJHBs61p6GBsM75opW0NVTLouFohd+rcA6vPva2U+t3pUYTZMCSxh5oe+HG2Q5O4U36b51UMApnUJF4UhovdsIFatV0mFWSECKHGxmH6pluJMTXSNaT+azDtm34Dk89sEDCVnqdWcjQywfZ70pvAQvXvauvOg0FluLkpL3WxFqc+poBR0/9qLO+0+q5dNF81vWUzoZ7Tq2BCRtatn0Dl4Ck=
EndOfMessage

# Network
aaa_vpc_aaa = "network"

# GKE Cluster
aaa_gke_aaa-preemptible = true
aaa_gke_aaa-name = "example"
aaa_gke_aaa-tags = [
  "gke",
  "all"]
aaa_gke_aaa-region = "us-central1"
aaa_gke_aaa-zones = [
  "us-central1-a",
  "us-central1-b",
  "us-central1-c",
  "us-central1-f"
]
aaa_gke_aaa-cidr = "10.0.10.0/24"
aaa_gke_aaa-type = "e2-highcpu-2"
aaa_gke_aaa-min_version = " 1.21.5-gke.1302"
aaa_gke_aaa-init = 1

# GKE Pool
aaa_gke_pool_aaa-preemptible = true
aaa_gke_pool_aaa-name = "mini-pool"
aaa_gke_pool_aaa-tags = [
  "gke",
  "all"]
aaa_gke_pool_aaa-region = "us-central1"
aaa_gke_pool_aaa-zones = [
  "us-central1-a",
  "us-central1-b",
  "us-central1-c",
  "us-central1-f"
]
aaa_gke_pool_aaa-cidr = "10.0.11.0/24"
aaa_gke_pool_aaa-type = "e2-highcpu-2"
aaa_gke_pool_aaa-init = 1
aaa_gke_pool_aaa-min = 1
aaa_gke_pool_aaa-max = 1