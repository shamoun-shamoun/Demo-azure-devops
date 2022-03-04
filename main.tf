//  provider "aws" {
//    region = var.region
//    access_key = var.access_key
//    secret_key = var.secret_key
//    token      = var.token
//  }


module "aft" {
   source                      = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  ct_management_account_id    = "243262754033"
  log_archive_account_id      = "197887608214"
  audit_account_id            = "301675479634"
  aft_management_account_id   = "506836426456"
  ct_home_region              = "eu-west-1"
  tf_backend_secondary_region = "eu-west-2"

  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/learn-terraform-aft-account-request"
  global_customizations_repo_name               = "${var.github_username}/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/learn-terraform-aft-account-customizations"
  account_provisioning_customizations_repo_name = "${var.github_username}/learn-terraform-aft-account-provisioning-customizations"
}
  
  # Optional Feature Flags
  aft_feature_delete_default_vpcs_enabled = true
  aft_feature_cloudtrail_data_events      = false
  aft_feature_enterprise_support          = false
}

