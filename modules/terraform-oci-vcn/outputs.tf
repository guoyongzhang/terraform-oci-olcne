# Copyright (c) 2023 Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl/

output "vcn_id" {
  description = "id of vcn that is created"
  value       = oci_core_vcn.vcn.id
}

output "nat_gateway_id" {
  description = "id of nat gateway if it is created"
  value       = join(",", oci_core_nat_gateway.nat_gateway.*.id)
}

output "internet_gateway_id" {
  description = "id of internet gateway if it is created"
  value       = join(",", oci_core_internet_gateway.ig.*.id)
}

output "ig_route_id" {
  description = "id of internet gateway route table"
  value       = var.deploy_networking ? join(",", oci_core_route_table.ig.*.id) : var.ig_route_id
}

output "nat_route_id" {
  description = "id of VCN NAT gateway route table"
  value       = var.deploy_networking ? join(",", oci_core_route_table.nat.*.id) : var.nat_route_id
}
