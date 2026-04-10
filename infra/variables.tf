variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string,
    zone   = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}

variable "vm_1_name" {
  type    = string
  default = "vm-kittygram"
}

variable "aws_region" {
  description = "AWS Region name"
  type        = string
}

variable "ssh_key" {
  description = "SSH Public Key"
  type        = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "image_family" {
  description = "Boot image family"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "VM platform"
  type        = string
  default     = "standard-v3"
}

variable "cores" {
  description = "Number of vCPUs"
  type        = number
  default     = 1
}

variable "memory" {
  description = "RAM in GB"
  type        = number
  default     = 1
}

variable "disk_type" {
  description = "Boot disk type"
  type        = string
  default     = "network-ssd"
}

variable "disk_size" {
  description = "Boot disk size in GB"
  type        = number
  default     = 20
}

variable "nat" {
  description = "Enable NAT for public IP"
  type        = bool
  default     = true
}                                                                                                                                                             
