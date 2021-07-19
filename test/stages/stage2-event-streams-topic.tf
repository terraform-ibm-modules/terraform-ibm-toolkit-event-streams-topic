module "event-streams-topic" {
  source = "./module"

  ibmcloud_api_key = var.ibmcloud_api_key
  region           = module.event-streams.location
  event_streams_id = module.event-streams.id
  name = "my-topic"
}
