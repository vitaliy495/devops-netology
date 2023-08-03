###vm_web_***

variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OS image"
}

variable "vm_web_resources" {
  type = map(any)
  default = {
       cpu  = 2
       memory = 2
       core_fraction = 5
    }
}

###vm_db_***

variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OS image"
}

variable "vm_db_resources" {
  type = map(any)
  default = {
       cpu  = 2
       memory = 2
       core_fraction = 20
    }
}