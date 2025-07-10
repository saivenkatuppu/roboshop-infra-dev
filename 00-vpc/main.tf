module "vpc" {
     #source = "../terraform-aws-vpc"
      source = "git::https://github.com/saivenkatuppu/terraform-aws-vpc.git?ref=main"  # refering from git repository
      # source =  "git::https://github.com/SurekhaBandaru/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr

     is_peering_required = true
}
