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
  type      = string
  sensitive = true
  default = "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCjRhm487B/5hcBHo0MjdMEZIXoVTs88+0zi5PcgrgGONe4bCls1Ol40/C965E3goC1J8OjGKvQutBQHmbjs48XUTxCbN2IF62PNPrxDvHaENLDKrRnagG6n05b3c5nEw5J6Z5RlsOVvbmdVgQSKPe99X4G1i8G1AKscACpYIFwxG3+464sprJRlodto2JRIRHWnwsBe7W/XqSt0f5plLn5f2RHI8YFVzsrXisBEI7DF/flP38my+TxHR3oIviHhcaQGB3OjbgekKIKeInb8nXT3AgMBAAECggEAASDdBs2kVnDkI6aasK4FSqhmqeEzcKF6Z0NKp5j6TgX3cFKOaIYB9Gy83F9cX0VIzVKmRAdd9kv8N+HzYPp5x8Nk7xYqhT8SwB+kDsB7ItRvF5wLIPkzwqVxQRzoz9DCqWNRERLp82HyyIYvNbPC79AC6ashUqZB+Hjzr2Bmz44H4dbw0tABQyvOeFn50WVVYBsOicCMgy4eCB/n5hf04HwcOK2IRbusf7wmuJy2N1PfcXU0jdRI1ID8hjGpCW8crKELaTqGQ1hYS4jwY/LPG4tz43zeWtowgKpB1ui44Rl/GChF0KedTSci97OS5aL4BGRrhiyIuYUcf9cpZHbgYQKBgQDT+wg1PU02kydR1Lgu3l3LZBs0QSSHDaFVHf9QKXYpss8JAA+3z5l2tcqgovdb2OT3UHXSqkwCuPEWWELO0hC3qfqZPk+2h8VHxpEPFuUApGVEmkUdgp25z1reBMx1859boFn0wy+osvL6xMHFtN5Np5WSybpSncLUjfp84yiGIQKBgDFLcxuf7YjGSScGG+mN0E15Z7E5/nNI4c6NuVGaffJ0B51OBNa03CEmZBEkkUo+CKzD4w3CahinrCN9KR/FTjO3e5XWrAks4/i2GZS6ofgWTWGJpeoPds37t+AQFyo0/jL5vHg915UGAvnA/Vq6h55Grak+SSV1T3Kj0EldfxoFwKBgFbJDIg3a7gvMMbYzvspQL83YcfX76t3Ehj16gQYpW7W7Nojc0vuq0alkKqJbbnlp3/1KfewjuQCcXmTcu6XpA59gcJhd2MkXMlQ6yyBVAoaQ/d9LVSyl/5tfScuUcLslc5+bLW/f3CSqtWt3iMiNG0Yci0hd63BNvWsluOwYHPhAoGAHXLloWs5jKxop1eO9UgzWRVeTRJIYLb5r1wbihSxiVan9eHWIi6KE4PL5DHkWmYU6KFd06qBl5kTzV/IYaKNxXen7SwCOrkGuF6Ribi1anBoagzBgcMbRpNKliEGtcBS3EE1xt+rGuwseuhAcyNcQcIXnTQInsgmXmZe2HVyqSkCgYA2vCm3GpVWe5Hdc2QLQM0htyo9faw7yI6oMNW6LI+3ACs7PaH346aiXpcuUoUx/wv+MvRk8N/6gvMJIFgHO/n3GldoMCu2B7TXwioIDTPMbDc2yCW92Omed0TYGiAX8vZ1eJlytV3dGwnb8g2oSexNpcoHYmiYKimjEytQPO56xQ==\n-----END PRIVATE KEY-----"
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
