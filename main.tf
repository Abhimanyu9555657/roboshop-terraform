module "vpc" {
  source   = "git::https://github.com/Abhimanyu9555657/tf-module-vpc.git"

  for_each = var.vpc
  cidr     = each.value["cidr"]
  subnets  = each.value["subnets"]
}

output "vpc" {
  value = module.vpc
}


