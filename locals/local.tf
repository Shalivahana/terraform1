locals {
    domain_name  = "manudevops.shop"
    zone_id = "Z0951529OH6CDFI7Q6JP"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals
}