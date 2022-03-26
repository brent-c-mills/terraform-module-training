# Variables used for the Terraform project

variable "gcp_project" {
  type = string
}

variable "gcp_creds_file" {
  type = string
  default = "GCP_CREDENTIALS.json"
}

variable "gcp_region" {
  type = string
}

variable "gcp_zone" {
  type = string
}

variable "compute_name_stem" {
  type = string
}

variable "compute_type" {
  type = string
  default = "e2-micro"
}