resource "tls_private_key" "root_ca" {
  algorithm   = "${var.private_key_algorithm}"
  ecdsa_curve = "${var.private_key_ecdsa_curve}"
  rsa_bits    = "${var.private_key_rsa_bits}"
}

resource "tls_self_signed_cert" "root_ca" {
  key_algorithm   = "${tls_private_key.root_ca.algorithm}"
  private_key_pem = "${tls_private_key.root_ca.private_key_pem}"

  subject {
    common_name  = "${var.common_name}"
    organization = "${var.organization_name}"
  }

  validity_period_hours = "${var.validity_period_hours}"

  is_ca_certificate = true

  allowed_uses = "${var.allowed_uses}"
}
