# Cloud VARS

variable "token" {
  type        = string
  description = "QAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
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
  default     = "netology"
  description = "VPC network&subnet name"
}

# Common vars

variable "public_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWD2BLnLeWJv2maNAu/k4exKZyx3D6PoAsb5niJC4kUymt7ncQAwZloruRO3iQXRTv8PnFJVtlsr4i/VRIib1JM/FQOuLRwaHLvcDm2Y5mj0y9zIspkFIj+RwQHGDX8sE23ig+V4BIWK0ZFFZ+BpQLsoU/a1KyZnlX+8xgZqT/QpvjZRpT8ufYzZrTcDf/Sl8qpCnYDeEj/m0BacnPBTEWZQNsGmyHNPmhVrsWQgSmgpWMtmyZf2scSZgRMuIY2uQsEG8KF8f67/9HXGotpqIVT08xDAhnrpLsOS0/gJJZWAWcrqjd8et/MEc6hk9jy7ToZ+1P72qheZ5bQw69syrAlm6ySktScdTv8Fh8DCD30VNtB+JTOscqS19fFWxtmerF7xikBLU0MwfaLAIehddicsVl8sQjcYDCGA4R52a20TzrASXK2XOo01GE9aZlAc8mP19p15mRgrkMXBOKFFiZfriinzOOJTWOBPp01xKni9FwhN5LzB22vb2Wl90cHPc= oem@oem-virtual-machine"
  description = "ssh-keygen -t rsa"
}

variable "vm_1" {
  type    = string
  default = "jenkins-1"
}

