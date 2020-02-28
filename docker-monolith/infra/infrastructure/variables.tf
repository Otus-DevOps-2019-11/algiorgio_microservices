variable "app_name" {
  description = "Application Name"
}

variable "project" {
  description = "Project ID"
}

variable "region" {
  description = "Region"
}

variable "zone" {
  description = "Instance's zone"
}

variable "instance_amount" {
  description = "Amount of instances"
}

variable "boot_disk_image" {
  description = "Boot disk image"
}

variable "public_key_path" {
  description = "Path to the SSH public key"
}
variable "private_key_path" {
  description = "Path to the SSH private key"
}

variable source_ranges {
  description = "Allowed IP addresses"
}
