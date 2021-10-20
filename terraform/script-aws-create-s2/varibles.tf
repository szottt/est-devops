variable "aws_region" {
  type = string

  description = ""

  default = ""
}

variable "aws_profile" {
  type = string

  description = ""

  default = ""

}


variable "instance_ami" {
  type = string

  description = ""

  default = ""
}

variable "instance_type" {
  type = string

  description = ""

  default = ""
}

variable "instance_tags" {
  type = map(string)

  description = ""

  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}