variable "environment" {
}
variable "region" {
}
variable "access_key" {
}
variable "secret_key" {
}
variable "ami_id" {
}

#providers
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "infrastructure" {
  source      = "../../modules/infrastructure"
  environment = var.environment
  region      = var.region
  ami_id      = var.ami_id
  access_key  = var.access_key
  secret_key  = var.secret_key
}


