
###vm_db_***

variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OS image"
}

#variable "vm_db_name" {
#  type        = string
#  default     = "netology-develop-platform-db"
#  description = "Name instance"
#}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description =  "core resourse"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description =  "core fraction"
}
variable "vm_db_memory" {
  type        = number
  default     = 2
  description =  "memory"
}
