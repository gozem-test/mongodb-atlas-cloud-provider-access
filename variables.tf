variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "MONGODB_ATLAS_PUBLIC_KEY" {
  type = string
}

variable "MONGODB_ATLAS_PRIVATE_KEY" {
  type = string
}

variable "atlas_project_id" {
  type        = string
  description = "(Required) The unique ID for the project to create the database user."
}

variable "provider_name" {
  type        = string
  default     = "AWS"
  description = "(Required) The cloud provider for which to create a new role. Currently only AWS is supported."
}

variable "iam_assumed_role_arn" {
  type        = string
  default     = null
  description = "(Optional) - ARN of the IAM Role that Atlas assumes when accessing resources in your AWS account."
}
