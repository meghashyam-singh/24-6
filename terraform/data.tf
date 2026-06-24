data "aws_ssm_parameter" "catalogue_sg_id" {
    name = "${local.common_name}_catalogue_sg_id"
}

data "aws_ssm_parameter" "backend_alb_sg_id" {
    name = "${local.common_name}_backend_alb_sg_id"
}