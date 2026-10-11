data "aws_eks_access_policies" "eks_access_policies_lookup" {
  for_each = var.eks_access_policies_lookup

  region = each.value.region
}

