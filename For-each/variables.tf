variable  "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        forntend = "t3.micro"
    }
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expence"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "zone_id" {
  default = "Z0951529OH6CDFI7Q6JP"
}

variable "domain_name" {
  default = "manudevops.shop"
}