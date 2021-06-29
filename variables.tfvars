# Configuration
project_id = "molten-infusion-277321"
region = "us-central1"
prefix = "a" # must be [a-z]

# Keys
terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQClUEbe96eykDQPeK3Eizjz9E6/QIglt/1cpsz5UVvO4DKw8yOYg2ikUuHrgdUKX//93yNyrHPgQSoRph/zEw1TWgNwWnXPo9XjRWt+QYz1hV69Ut4ONoRCQYlRmdXSMaQojQDTwX6/t8cFzSRjLk1dzuitTDJ+M9LK1rLCxawQGMo51GdbzwmEBBAKxHA7umoTeyvYTicTGtSZa4kJlnWkMWT1zgdbfjVaKhc/nxkjpDReyEUSxWn0RV8YSnk1cSdVXzgm3ZN1iJ6kgBgefJKjkS1p/rpS8j2+gesnCbGISYjXc9PM/WEH+HP7n+42ue37NqOACsPOBLX8SW+KOzsaI7IL1JxM9kroddnDaq8dhR6HRv/e+A9+rk7DaDRnoEk/IrWDD9y7BDrzFeBFH1qYoVcrn3i6akMJ/2fWjbenQ46+tyvOZjnioih1BUtqOLN0ZUIaakKaSxS1SJpb5LAhSEg3gJozYPLdOPKim42ms7Q39beYAzcFmfLr3DrAvlk=
EndOfMessage

# Network
aaa_vpc_aaa = "network"

# GKE Cluster
aaa_gke_aaa-preemptible = true
aaa_gke_aaa-name = "gke-cluster"
aaa_gke_aaa-tags = [
  "gke",
  "all"]
aaa_gke_aaa-region = "us-central1"
aaa_gke_aaa-zones = [
  "us-central1-a"
  /*, "us-central1-b", "us-central1-c", "us-central1-f"*/]
aaa_gke_aaa-cidr = "10.0.10.0/24"
aaa_gke_aaa-type = "n1-standard-2"
aaa_gke_aaa-min_version = "1.19.10-gke.1600"
aaa_gke_aaa-init = 1

# GKE Pool
aaa_gke_pool_aaa-preemptible = true
aaa_gke_pool_aaa-name = "a-pool"
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
aaa_gke_pool_aaa-type = "n1-standard-2"
aaa_gke_pool_aaa-cidr = "10.0.11.0/24"
aaa_gke_pool_aaa-init = 1
aaa_gke_pool_aaa-min = 3
aaa_gke_pool_aaa-max = 3

# Instance
aaa_instance_aaa-name = "bastion"
aaa_instance_aaa-tags = [
  "bastion"]
aaa_instance_aaa-region = "us-central1"
aaa_instance_aaa-zone = "us-central1-a"
aaa_instance_aaa-type = "e2-highcpu-8"
aaa_instance_aaa-image = "ubuntu-os-cloud/ubuntu-1804-lts"
aaa_instance_aaa-cidr = "10.0.1.0/24"
