module "mysql_sg"{
    source ="../terraform-aws-security_group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    vpc_id=module.vpc.vpc_id #required for the security group creation
    common_tags=var.common_tags
    sg_tags=var.mysql_sg_tags
}