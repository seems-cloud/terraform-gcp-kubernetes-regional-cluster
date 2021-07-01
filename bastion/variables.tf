# Network
variable "aaa_instance_aaa-external_address" {
  type = string
}

variable "aaa_instance_aaa-subnetwork_name" {
  type = string
}

# Instance
variable "aaa_instance_aaa-preemptible" {
  type = bool
}

variable "aaa_instance_aaa-image" {
  type = string
}

variable "aaa_instance_aaa-name" {
  type = string
}

variable "aaa_instance_aaa-tags" {
  type = list(string)
}

variable "aaa_instance_aaa-zone" {
  type = string
}

variable "aaa_instance_aaa-type" {
  type = string
}

variable "aaa_instance_aaa-cidr" {
  type = string
}

# Dependencies
variable "dependencies" {
  type = list(string)
}
