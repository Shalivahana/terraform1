
variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expence"
    Environment = "dev"
    Terraform   = "true"
  }
}

# variable "zone_id" {
#   default = "Z0951529OH6CDFI7Q6JP"
# }

# variable "domain_name" {
#   default = "manudevops.shop"
# }

variable "environment" {
  default = "prod"
}