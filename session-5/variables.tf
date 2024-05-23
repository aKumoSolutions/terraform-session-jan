variable "region" {
  type        = string
  description = "AWS Region"
  default     = "usw2"
}

variable "env" {
  type        = string
  description = "Environment"
  default     = "dev"
}

variable "project" {
  type        = string
  description = "Project Name"
  default     = "jerry"
}

variable "tier" {
  type        = string
  description = "Application Tier"
  default     = "backend"
}

variable "team" {
  type        = string
  description = "Team Name"
  default     = "cloud"
}

variable "owner" {
  type        = string
  description = "Owner of the Resource"
  default     = "kris"
}

variable "managed_by" {
  type        = string
  description = "Managed By"
  default     = "terraform"
}
