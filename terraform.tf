#Terraform provider declarations

terraform {
  required_version = "~>1.1.7"
  required_providers {
    google = "~>4.15.0"
    random = "~>3.1.2"
  }
}
