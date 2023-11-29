# Create MongoDB Atlas Cloud Provider Access
# resource "mongodbatlas_cloud_provider_access" "access" {
#   project_id           = var.atlas_project_id
#   provider_name        = var.provider_name
#   iam_assumed_role_arn = var.iam_assumed_role_arn
# }

resource "mongodbatlas_cloud_provider_access_setup" "setup" {
  project_id    = var.atlas_project_id
  provider_name = var.provider_name
}

resource "mongodbatlas_cloud_provider_access_authorization" "auth_role" {
  project_id = mongodbatlas_cloud_provider_access_setup.setup.project_id
  role_id    = mongodbatlas_cloud_provider_access_setup.setup.role_id

  aws {
    iam_assumed_role_arn = var.iam_assumed_role_arn # "arn:aws:iam::772401394250:role/test-user-role"
  }
}
