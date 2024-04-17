variable "ami" {}
variable "size" {
  default = "t2.micro"
}
variable "subnet_id" {}

variable "user" {}

variable "security_groups" {
  type = list(any)
}

variable "key_name" {
  nullable = true
  default  = null

}

variable "private_key" {
  nullable = true
  default  = null
}
