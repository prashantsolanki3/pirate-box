variable "PM_API_TOKEN_ID" {
  description = "PM_API_TOKEN_ID"
  type        = string
}

variable "PM_API_TOKEN_SECRET" {
  description = "PM_API_TOKEN_SECRET"
  type        = string
}

variable "PROXMOX_IP" {
  description = "PROXMOX_IP"
  type        = string
}

variable "TARGET_NODES" {
  description = "TARGET_NODES"
  type        = list(string)
}

variable "public_key_file" {
  description = "public_key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_file" {
  description = "private_key_file"
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "template" {
  description = "Template Name"
  type        = string
  default     = "U2004-DOCKER-TEMPLATE"
}

variable "user" {
  description = "Username"
  type        = string
}

variable "cpu_count" {
  description = "cpu_count"
  type        = number
  default     = 4
}

variable "memory" {
  description = "Memory"
  type        = number
  default     = 4096
}

variable "vmid" {
  description = "Proxmox VM ID to be used for current VM"
  type        = number
  default     = 8888
}

variable "hostname" {
  description = "Hostname"
  type        = string
  default     = "dev-box"
}

variable "ipv4_gateway" {
  description = "Default Gateway"
  type        = string
}

variable "ipv4" {
  description = "The ipv4"
  type        = string
  default     = "10.2.21.12"
}

variable "ipv4_data" {
  description = "The ipv4 data network"
  type        = string
  default     = "10.2.21.12"
}

variable "disk_size" {
  description = "Disk size"
  type        = string
  default     = "32G"
}

variable "disk_storage" {
  description = "storage location"
  type        = string
  default     = "local-lvm"
}

variable "dots_ansible_repo" {
  description = "Point to you ansible based dot repo"
  type = string
  default = "local"
}