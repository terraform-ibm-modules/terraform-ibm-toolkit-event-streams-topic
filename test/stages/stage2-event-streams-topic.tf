module "event-streams-topic" {
  source = "./module"

  event_streams_id = module.event-streams.id
  name = "my-topic"
}
