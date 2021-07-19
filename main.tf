
resource ibm_event_streams_topic topic {
  count = var.provision ? 1 : 0

  resource_instance_id = var.event_streams_id
  name                 = var.name
  partitions           = var.partitions

  config = {
    "cleanup.policy"  = var.cleanup_policy
    "retention.ms"    = var.retention_ms
    "retention.bytes" = var.retention_bytes
    "segment.bytes"   = var.segment_bytes
    "segment.ms"      = var.segment_ms
    "segment.index.bytes" = var.segment_index_bytes
  }
}

data ibm_event_streams_topic topic {
  depends_on = [ibm_event_streams_topic.topic]

  resource_instance_id = var.event_streams_id
  name                 = var.name
}
