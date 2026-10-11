output "eks_access_policies_lookup_access_policies" {
  description = "Map of access_policies values across all eks_access_policies_lookup, keyed the same as var.eks_access_policies_lookup"
  value       = { for k, v in data.aws_eks_access_policies.eks_access_policies_lookup : k => v.access_policies if v.access_policies != null && length(v.access_policies) > 0 }
}
output "eks_access_policies_lookup_region" {
  description = "Map of region values across all eks_access_policies_lookup, keyed the same as var.eks_access_policies_lookup"
  value       = { for k, v in data.aws_eks_access_policies.eks_access_policies_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

