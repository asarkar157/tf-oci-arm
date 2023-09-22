variable "region" {
  type      = string
}

variable "tenancy_ocid" {
  type      = string
  sensitive = true
}

variable "user_ocid" {
  type      = string
}

variable "fingerprint" {
  type      = string
  sensitive = true
}

variable "private_key" {
  type    = string
  default = <<EOT
-----BEGIN PRIVATE KEY-----
MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCjRhm487B/5hcB
Ho0MjdMEZIXoVTs88+0zi5PcgrgGONe4bCls1Ol40/C965E3goC1J8OjGKvQutBQ
Hmbjs48XUTxCbN2IF62PNPrxDvHaENLDKrRnagG6n05b3c5nEw5J6Z5RlsOVvbmd
VgQSKPe99X4G1i8G1AKscACpYIFwxG3+464sprJRlodto2JRIRHWnwsBe7W/XqSt
0f5plLn5f2RHI8YFZsd3aC7V3qPOkQSvTAs1uuhpx0J4eGJKMhIVR3VXO959Z8s5
Z1fqsPXGyFvRT1V8tzrXisBEI7DF/flP38my+TxHR3oIviHhcaQGB3OjbgekKIKe
Inb8nXT3AgMBAAECggEAASDdBs2kVnDkI6aasK4FSqhmqeEzcKF6Z0NKp5j6TgX3
cFKOaIYB9Gy83F9cX0VIzVKmRAdd9kv8N+HzYPp5x8Nk7xYqhT8SwB+kDsB7ItRv
F5wLIPkzwqVxQRzoz9DCqWNRERLp82HyyIYvNbPC79AC6ashUqZB+Hjzr2Bmz44H
4dbw0tABQyvOeFn50WVVYBsOicCMgy4eCB/n5hf04HwcOK2IRbusf7wmuJy2N1Pf
cXU0jdRI1ID8hjGpCW8crKELaTqGQ1hYS4jwY/LPG4tz43zeWtowgKpB1ui44Rl/
GChF0KedTSci97OS5aL4BGRrhiyIuYUcf9cpZHbgYQKBgQDT+wg1PU02kydR1Lgu
3l3LZBs0QSSHDaFVHf9QKXYpss8JAA+3z5l2tcqgovdb2OT3UHXSqkwCuPEWWELO
0hC3qfqZPk+2h8VHxpEPFuUApGVEmkUdgp25z1reBMx1859boFn0wy+osvL6xMHF
tN5Np5WSybpSncLUjfp84yiGIQKBgQDFLcxuf7YjGSScGG+mN0E15Z7E5/nNI4c6
NuVGaffJ0B51OBNa03CEmZBEkkUo+CKzD4w3CahinrCN9KR/FTjO3e5XWrAks4/i
2GZS6ofgWTWGJpeoPds37t+AQFyo0/jL5vHg915UGAvnA/Vq6h55Grak+SSV1T3K
j0EldfxoFwKBgFbJDIg3a7gvMMbYzvspQL83YcfX76t3Ehj16gQYpW7W7Nojc0vu
q0alkKqJbbnlp3/1KfewjuQCcXmTcu6XpA59gcJhd2MkXMlQ6yyBVAoaQ/d9LVSy
l/5tfScuUcLslc5+bLW/f3CSqtWt3iMiNG0Yci0hd63BNvWsluOwYHPhAoGAHXLl
oWs5jKxop1eO9UgzWRVeTRJIYLb5r1wbihSxiVan9eHWIi6KE4PL5DHkWmYU6KFd
06qBl5kTzV/IYaKNxXen7SwCOrkGuF6Ribi1anBoagzBgcMbRpNKliEGtcBS3EE1
xt+rGuwseuhAcyNcQcIXnTQInsgmXmZe2HVyqSkCgYA2vCm3GpVWe5Hdc2QLQM0h
tyo9faw7yI6oMNW6LI+3ACs7PaH346aiXpcuUoUx/wv+MvRk8N/6gvMJIFgHO/n3
GldoMCu2B7TXwioIDTPMbDc2yCW92Omed0TYGiAX8vZ1eJlytV3dGwnb8g2oSexN
pcoHYmiYKimjEytQPO56xQ==
-----END PRIVATE KEY-----
EOT
}


variable "oci_auth" {
  default = ""
  type      = string
  sensitive = true
}

provider "oci" {
  auth = "APIKey"
  fingerprint    = var.fingerprint
  private_key    = var.private_key
  user_ocid      = var.user_ocid
  
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


data "oci_core_subnet" "subnet-0" {
  compartment_id = var.oci_compartment_id
  # You can specify other filters to identify the existing subnet if needed
  # For example, you can filter by display_name, VCN ID, etc.
  #display_name = "subnet-0"
  id = "ocid1.subnet.oc1.phx.aaaaaaaa4uwwmqsqqfqgkymn4xlbvubqshxskfpljuzf4ccxrdg5nmp4l7ha"
}
