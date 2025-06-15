locals{
    ec2_name = "${var.project_name}-${var.environment}"
    database_subnet_id = element(split(",", data.aws_ssm_parameter.database_subnets_id.value),0)
    private_subnet_id = element(split(",", data.aws_ssm_parameter.private_subnets_id.value),0)
    public_subnet_id = element(split(",", data.aws_ssm_parameter.public_subnets_id.value),0)
}