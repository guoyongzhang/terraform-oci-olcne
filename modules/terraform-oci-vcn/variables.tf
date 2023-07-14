# Copyright (c) 2023 Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# provider identity parameters
variable "region" {
  # List of regions: https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm#ServiceAvailabilityAcrossRegions
  description = "the OCI region where resources will be created"
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
  default     = "none"
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
  default = {
    environment = "dev"
  }
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

variable "ig_route_id" {
  type = string
}

variable "nat_route_id" {
  type = string
}

variable "deploy_networking" {
  type        = bool
  description = "Decides if VCN is installed."
}

variable "freeform_tags" {
  description   = "Freeform tags with useful miscellaneous information."
  type          = map(any)
  default       = {}
}
