variable "region" {
  default = "eu-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "wordpress"
}

variable "cidr_block" {
  default = ["10.0.0.0/18", "10.0.64.0/18", "10.0.128.0/18", "10.0.192.0/18"]

}

variable "availability_zone" {
  default = ["eu-west-2a", "eu-west-2b"]

}