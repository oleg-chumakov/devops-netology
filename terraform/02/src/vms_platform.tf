variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Number of cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Number of memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 50
  description = "Part of core"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of OS"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of VM"
}




variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Number of cores"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Number of memory"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Part of core"
}

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of OS"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-db"
  description = "Name of VM"
}


variable "platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Type of instance"
}