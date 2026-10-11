variable "eks_access_policies_lookup" {
  description = <<EOT
Map of eks_access_policies_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

