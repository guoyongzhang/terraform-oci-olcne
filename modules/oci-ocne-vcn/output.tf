# Copyright (c) 2023 Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# Outputs
output "vcn_id" {
  value = var.deploy_networking ? module.vcn[0].vcn_id : var.vcn_id
}

output "bastion_public_ip" {
  value = var.enable_bastion ? module.bastion[0].bastion_public_ip : ""
}

output "private_security_list_id" {
  value = var.deploy_networking ? oci_core_security_list.tf_private_security_list[*] : []
}

output "private_subnet_id" {
  value = var.deploy_networking ? oci_core_subnet.tf_vcn_private_subnet[*] : []
}
