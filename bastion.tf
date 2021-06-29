module "bastion" {
  source = "./bastion"

  # Network
  aaa_instance_aaa-external_address = module.networking.aaa_instance_aaa-external_address
  aaa_instance_aaa-subnetwork_name = module.networking.aaa_instance_aaa-subnetwork_name

  # Instance
  aaa_instance_aaa-image = var.aaa_instance_aaa-image
  aaa_instance_aaa-name = local.aaa_instance_aaa-name
  aaa_instance_aaa-tags = var.aaa_instance_aaa-tags
  aaa_instance_aaa-zone = var.aaa_instance_aaa-zone
  aaa_instance_aaa-type = var.aaa_instance_aaa-type
  aaa_instance_aaa-cidr = var.aaa_instance_aaa-cidr

  # Dependencies
  dependencies = [
    "module.networking"]
}