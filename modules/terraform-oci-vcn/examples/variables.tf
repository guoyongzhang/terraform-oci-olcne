# Copyright (c) 2023 Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# provider identity parameters
variable "fingerprint" {
  description = "fingerprint of oci api private key"
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = "path to oci api private key used"
  type        = string
  default     = ""
}

variable "region" {
  # List of regions: https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm#ServiceAvailabilityAcrossRegions
  description = "the oci region where resources will be created"
  type        = string
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
}

# general oci parameters

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
}

variable "prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
}

# vcn parameters

variable "internet_gateway_enabled" {
  description = "whether to create the internet gateway"
  default     = false
  type        = bool
}

variable "nat_gateway_enabled" {
  description = "whether to create a nat gateway in the vcn"
  default     = false
  type        = bool
}

variable "service_gateway_enabled" {
  description = "whether to create a service gateway"
  default     = false
  type        = bool
}

variable "tags" {
  description = "simple key-value pairs to tag the resources created"
  type        = map(any)
}

variable "vcn_cidr" {
  description = "cidr block of VCN"
  default     = "10.0.0.0/16"
  type        = string
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet"
  type        = string
}

variable "vcn_name" {
  description = "user-friendly name of to use for the vcn to be appended to the prefix"
  type        = string
}
