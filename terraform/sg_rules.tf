resource "aws_security_group_rule" "catalogue_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_paramter.catalogue_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
}