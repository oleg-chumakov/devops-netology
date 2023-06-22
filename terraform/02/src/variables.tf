###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
}

variable "vm_web_memory" {
  type        = number
  default     = 1
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 50
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDzlsaDyA98QS7Su4ZGJENdD5EPVIkB+GLqxYlrfrSdkrOY6SVZ4Q8e7NZWOLBlQslB7Wd9OSq0BgcV2J6wFIo9muG0+nPKhN4z7rrF3RktdjNcVxOxP7xf3vTq/FUCQatzZ2qPGepeUFUcGvCDKUs2nzjupL4cmyNpLewNtdrmu6OBb+qtP7LnkwTAjQD6dQsZARQparKiivzkUwyyRsXtifCu/InuRfbwrhnR2Wysyid5gkQVnCmJ0FWvy5tJZTTm9ui5Ht5qBjOYXBYtDSgOB7MFCXSxzpzPUMz/Ps6obc2wwqaeRyuRJ6HK3Lg89kg/MGMuQrPYCzlBJtUVPVEq+a1fK/CyCwK8XshBjTOvjwwmtFRXany6oXhKqbFLOzRU9+QRZnfr3xMApk15whdJXujHWXRuUh4Kf4LR1cVLrZ52S9mGP7b/uNdR+5Dpe79F1eGasSu7KCe/RDxA3OsTgVyY6iYCW0mSAF5eQuDDb84/strMTeyyQXv3/7XcrJ2UpAo+ZTxzNqb4AQCjSmfQpSX+9Q/fXb7LHazfliRlxDQqVm32liTcsd1bna8k7cEeNxxn8vOdcpRWYFHG6ybfUo0xcI5HUmpsqW1NW9nX78znKAD1OGiQiUuaEDUEsuLNV/it6xkEWOyYp15xonlKeWT8QaUCx+9zAdAsHSFFQ== oleg@netology"
  description = "ssh-keygen -t ed25519"
}
