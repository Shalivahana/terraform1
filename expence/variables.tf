variable ami_id {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "description"
}

variable instance_names {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
}

variable common_tags {
  type        = map
  default     = {
        Project = "expence"
        Environment = "dev"
        Terraform = "true"
  }
}

variable zone_id {
   default     = "Z0951529OH6CDFI7Q6JP"
}

variable domain_name {
   default     = "manudevops.shop"
}