variable "region" {
  type      = string
}

variable "tenancy_ocid" {
  type      = string
  sensitive = true
}

variable "user_ocid" {
  type      = string
  sensitive = true
}

variable "fingerprint" {
  type      = string
  sensitive = true
}

variable "private_key" {
  type      = string
  sensitive = true
}

variable "oci_auth" {
  default = ""
  type      = string
  sensitive = true
}

provider "oci" {
  auth = {
    fingerprint    = var.fingerprint
    private_key    = var.private_key
    user_ocid      = var.oci_auth
  }
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid

  
}

variable "github_user" {
  type = string
}

variable "oci_compartment_id" {
  type = string
}

variable "tailscale_auth_key" {
  type      = string
  sensitive = true
}
