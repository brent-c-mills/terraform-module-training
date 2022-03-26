#Terraform provider declarations

provider "google" {
  credentials = file("${var.gcp_creds_file}")
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}
