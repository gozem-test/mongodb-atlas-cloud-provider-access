output "role_id" {
  # value = mongodbatlas_cloud_provider_access.access.role_id
  value = mongodbatlas_cloud_provider_access_setup.setup.role_id
}

output "atlas_aws_account_arn" {
  value = mongodbatlas_cloud_provider_access_setup.setup.aws_config.atlas_aws_account_arn
}
