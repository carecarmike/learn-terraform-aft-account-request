module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "it-admin+aws-sandbox-learn-aft@carecar.co"
    AccountName               = "sandbox-learn-aft"
    ManagedOrganizationalUnit = "Learn AFT (ou-j4fl-cezgyf0y)"
    SSOUserEmail              = "it-admin+aws-learn-aft@carecar.co"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
