locals {
  vpc_id = data.aws_ssm_parameter.vpc_id.value  # refering vpc id from data.tf
   private_subnet_id = split(",",data.aws_ssm_parameter.private_subnet_ids.value)
   backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
   comman_tags={
        project = var.project
        environment= var.environment
        terraform = "true"
   }
}  