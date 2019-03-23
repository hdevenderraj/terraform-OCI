provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaa7z4lnxiww4iznvd27dlpf6qfgpwqozxkgswiwkpgfilsrrzbbjq"
  user_ocid = "oracleidentitycloudservice/hdevenderraj440@gmail.com"
  fingerprint = "b2:08:a8:0b:55:22:b0:1e:01:14:16:9c:36:5d:7e:6b"
  private_key_path = "${var.private_key_path}"
  region = "eu-frankurt-1"
}

# Get a list of Availability Domains
data "oci_identity_availability_domains" "adc" {
  compartment_id = "${var.tenancy_ocid}"
}

# Output the result
output "show-ads" {
  value = "${data.oci_identity_availability_domains.ads.availability_domains}"
}