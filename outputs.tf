output "id" {
  value = data.ibm_event_streams_topic.topic.id
}

output "kafka_http_url" {
  value = data.ibm_event_streams_topic.topic.kafka_http_url
}

output "kafka_brokers_sasl" {
  value = data.ibm_event_streams_topic.topic.kafka_brokers_sasl
}
