data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.environment}/vpc_id"  # refering vpc id from parameters.tf from  00-vpc folder
}

