# Event Streams Topic

Module to provision a topic in an existing managed IBM Cloud Event Streams instance

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v13

### Terraform providers

- IBM Cloud provider >= 1.18.0

## Module dependencies

This module makes use of the output from other modules:

- Event Streams - github.com/cloud-native-toolkit/terraform-ibm-event-streams.git

## Example usage

```hcl-terraform
module "topic" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-event-streams-topic.git"

  ibmcloud_api_key = var.ibmcloud_api_key
  region           = module.event-streams.location
  event_streams_id = module.event-streams.id
  name = "my-topic"
}
```

