////////////////// Metadata ////////////////
variable "env" {
  type        = string
  description = "Environment"
  default     = "dev"
}
variable "team" {
  type        = string
  description = "Team"
  default     = "devops"
}
variable "project" {
  type        = string
  description = "Project"
  default     = "nemo"
}
variable "app" {
  type        = string
  description = "Application"
  default     = "dori"
}
////////////////// Security Group ////////////////
variable "ec2_ports" {
  type = list(object({
    port     = number
    protocol = string
    }
  ))
  default = [
    {
      port     = 80
      protocol = "tcp"
    },
    {
      port     = 22
      protocol = "tcp"
    }
  ]
}
variable "alb_ports" {
  type = list(object({
    port     = number
    protocol = string
    }
  ))
  default = [
    {
      port     = 80
      protocol = "tcp"
    },
    {
      port     = 443
      protocol = "tcp"
    }
  ]
}
////////////////// Launch Template ////////////////
variable "instance_type" {
   type = string
   description = "Instance Type"
   default = "t2.micro"
}

variable "hosted_zone_id" {
   type = string
   description = "Route53 Zone ID"
   default = ""
}