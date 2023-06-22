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


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC61KHQTGSlVZcpBznvsdLHkR2A8gWO5lp7pbuPje5GNdAb3X2Ergzi90j5eTNNWHEIyToLuSgQj57RTiUbRWVgec/ojLrElPjaedTIzsQzFjSNkwAQEly+ylLR5cB2hIXJq1ppqe9Jfwv1bpByS6d6Qy5yjVRopIBUH+RcNt8X7cyEEXRoHz2ENDZ1i8UT/1q6IIyNef+ZPp31kEc2gzhqF+SWWX5EfGGhvSxKMgAGlx7LBa6I+zyVm+1JtNZOSGcx/nJ6Y68BMPuELStmx3vXDKTlRWCMlKnc2819UJExLmxsDe324hKD2MNYlA3lQbQeGXUcgVTnSjob5DLgFmCdQB619HGaH4hJA54hNdUXMAbwOIve6B1arWmRAH+brb0mKRO4lpFabx4YICVARzIlKJfJEMQMMx+g4CNQdJI37tVL4BM42uKEwpgFUlSiG3Szb7bAK9/48qh8Iq6vNmYCNeyy0aNV19dAB9s8uc1g1ObMSQ1hH25/qUU9KC6pUQA/iY0q4LYG/syqz9Otd40R7M1fLHBZezJE46R1dvFDwRczc+slvu3zToW+/tJPe2g2sOxNoZg7qN327GPS7N4uVoaMRettg9cmlVb1l9Ffb+SmnSgiSIHAM/JpzxxC0AzRQCuiY+Q7eXDJ7h5YXvWHTiIuNMKIdtJCbLjjUtVjnw== oleg@netology"
  description = "ssh-keygen -t ed25519"
}
