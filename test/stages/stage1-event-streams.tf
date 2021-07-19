module "event-streams" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-event-streams.git"

  provision = true
  resource_group_name = module.resource_group.name
  name_prefix = var.name_prefix
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}
