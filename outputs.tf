output "aaa_instance_aaa-name" {
  value = var.aaa_instance_aaa-name
}

output "aaa_instance_aaa-external_address" {
  value = module.networking.aaa_instance_aaa-external_address
}

output "aaa_instance_aaa-internal_address" {
  value = module.bastion.aaa_instance_aaa-internal_address
}