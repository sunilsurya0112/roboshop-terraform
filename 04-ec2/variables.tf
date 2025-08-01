variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }

}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "zone_name" {
  default = "sunil-devops.shop"
}