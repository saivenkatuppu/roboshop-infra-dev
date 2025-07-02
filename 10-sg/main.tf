module "frontend" {
   # source = "../terraform-aws-securitygroup"
   source = "git::https://github.com/saivenkatuppu/terraform-aws-sg.git"
   
    project = var.project
    environment = var.environment
    sg_name = var.frontend_sg_name 
    sg_description = var.frontend_sg_description
    vpc_id = local.vpc_id
  }