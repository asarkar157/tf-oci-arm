variable "region" {
  type      = string
  default   = coalesce(var.TF_VAR_region, null)
}

variable "tenancy_ocid" {
  type      = string
  sensitive = true
  default   = coalesce(var.TF_VAR_tenancy_ocid, null)

}

variable "user_ocid" {
  type      = string
  sensitive = true
  default   = coalesce(var.TF_VAR_user_ocid, null)

}

variable "fingerprint" {
  type      = string
  sensitive = true
  default   = coalesce(var.TF_VAR_fingerprint, null)

}

variable "private_key_path" {
  default = ""
  type      = string
}

variable "oci_auth" {
  default   = coalesce(var.TF_VAR_oci_auth, null)
  type      = string
  sensitive = true
}

provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  auth             = var.oci_auth
}

variable "github_user" {
  type = string
  default   = coalesce(var.TF_VAR_github_user, null)

}

variable "oci_compartment_id" {
  type = string
  default   = coalesce(var.TF_VAR_oci_compartment_id, null)

}

variable "tailscale_auth_key" {
  type      = string
  sensitive = true
  default   = coalesce(var.TF_VAR_tailscale_auth_key, null)

}
