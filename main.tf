module "vpc" {
  source   = "git::https://github.com/Abhimanyu9555657/tf-module-vpc.git"

  for_each = var.vpc
  cidr     = each.value["cidr"]
  subnets  = each.value["subnets"]
  default_vpc_id = var.default_vpc_id
  default_vpc_cidr = vpc.default_vpc_cidr
  default_vpc_route_table_id = var.default_vpc_route_table_id
}



output "vpc" {
  value = module.vpc
}


