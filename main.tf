# Create MongoDB Atlas Cloud Provider Access
resource "mongodbatlas_cloud_provider_access" "access" {
  project_id           = var.atlas_project_id
  provider_name        = var.provider_name
  iam_assumed_role_arn = var.iam_assumed_role_arn
}
