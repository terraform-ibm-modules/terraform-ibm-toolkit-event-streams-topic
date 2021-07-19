variable "ibmcloud_api_key" {
  type        = string
  description = "The api key for IBM Cloud access"
}

variable "region" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "event_streams_id" {
  type        = string
  description = "The id of the event streams instance where the topic will be created"
}

variable "name" {
  type        = string
  description = "The name of the topic"
}

variable "partitions" {
  type        = number
  description = "The number of partitions of the topic. Default value is 1."
  default     = 1
}

variable "cleanup_policy" {
  type        = string
  description = "The cleanup policy for the topic"
  default     = null
}

variable "retention_ms" {
  type        = string
  default     = null
}

variable "retention_bytes" {
  type        = string
  default     = null
}

variable "segment_bytes" {
  type        = string
  default     = null
}

variable "segment_ms" {
  type        = string
  default     = null
}

variable "segment_index_bytes" {
  type        = string
  default     = null
}

variable "provision" {
  type        = bool
  description = "Flag indicating that the topic should be provisioned. If not then an existing topic will be looked up"
  default     = true
}
