variable "private_key_algorithm" {
  type    = "string"
  default = "ECDSA"
}

variable "private_key_ecdsa_curve" {
  type    = "string"
  default = "P256"
}

variable "private_key_rsa_bits" {
  type    = "string"
  default = "2048"
}

variable "organization_name" {
  type = "string"
}

variable "common_name" {
  type = "string"
}

variable "validity_period_hours" {
  type        = "string"
  default     = 262980
  description = "Default validity is 262980 hours which is 30 years"
}

variable "allowed_uses" {
  type = "list"

  default = [
    "cert_signing",
    "key_encipherment",
    "digital_signature",
  ]
}
