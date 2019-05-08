output "ca_key" {
  value     = "${tls_private_key.root_ca.private_key_pem}"
  sensitive = true
}

output "ca_cert" {
  value = "${tls_self_signed_cert.root_ca.cert_pem}"
}

output "ca_key_algorithm" {
  value = "${tls_private_key.root_ca.algorithm}"
}
