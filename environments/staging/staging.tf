variable "environment" {
}
variable "region" {
}
variable "secret_key" {
  description = "secret key for aws"
  type        = string
  sensitive   = true
}

variable "access_key" {
  description = "secret key for aws"
  type        = string
  sensitive   = true
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


