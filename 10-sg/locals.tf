locals {
  vpc_id = data.aws_ssm_parameter.vpc_id.value  # refering vpc id from data.tf
  
}